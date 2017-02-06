//
//  ViewController.swift
//  Keybord_Animation
//
//  Created by Umesh on 05/02/17.
//  Copyright © 2017 Umesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate { // Implement Delegate

    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    // Implement Delegate Methods
    func textFieldDidBeginEditing(_ textField: UITextField) {
        moveTextField(textField: textField, moveDistance: -250, up: true)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        moveTextField(textField: textField, moveDistance: 250, up: false)
    }
    
    
    
    // Add Method to Animate View
    func moveTextField(textField:UITextField,moveDistance:Int,up:Bool)
    {
        let moveDuration = 0.4
        
        let movement: CGFloat = CGFloat(up ? moveDistance : -moveDistance)
        
        UIView.beginAnimations("KBAnimation", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(moveDuration)
        self.view.frame = self.view.frame.offsetBy(dx: 0, dy: movement)
        UIView.commitAnimations()
        
    }
 
    
    
    
    
    @IBAction func nextControllerButtonClicked(_ sender: Any) {
        
        
        let secondController = self.storyboard?.instantiateViewController(withIdentifier: "SecondVCSID") as! SecondViewController
        self.navigationController?.pushViewController(secondController, animated: true)

    }
   
}

