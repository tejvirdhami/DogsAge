//
//  ViewController.swift
//  DogsAge_2013829
//
//  Created by english on 2021-09-09.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var txtAge: UITextField!
    

    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func lblResultChanged(_ sender: Any) {
        lblResult.isHidden = true
    }
    @IBAction func btnCheckItOut(_ sender: Any) {
//        print("Button Clicked");
//
//        Toast.ok(view: self, title: "Information", message: "Button clicked!", handler: nil)
        
        if !txtAge.hasText {
        Toast.ok(view: self, title: "Information", message: "Please, enter your dog's age.", handler: nil)
        return;
    }
    if let age = txtAge.text{
        if let ageInYears = Int(age) {
            if ageInYears > 20 {
                Toast.ok(view: self, title: "Information", message: "Please enter an age between 1-20.", handler: nil)
                return;
            }
            
            let dogsAgeInHumanAge = ageInYears * 7;
            lblResult.text = "If your \(age) years old dog were a human, he/she would have been \(String(dogsAgeInHumanAge)) years old"
            lblResult.isHidden = false
            
        }
        else
        {
            Toast.ok(view: self, title: "Information", message: "Enter a valid integer number!", handler: nil)
            return;
        }
    }


}

    override
    func viewDidLoad() {
    super.viewDidLoad()
        lblResult.isHidden = true
    }
    
}
