//
//  ViewController.swift
//  Tips
//
//  Created by Amrutha Krishnan on 9/11/16.
//  Copyright © 2016 Amrutha Krishnan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    
    @IBOutlet var tipLabel: UILabel!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet var totalLabelSplitOne: UILabel!
    
    @IBOutlet var totalLabelSplitTwo: UILabel!
    

    
   
    
   
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet var totalView: UIView!
    
    override func viewDidLoad() {
        billField.becomeFirstResponder()
        //totalView.hidden = true
        totalView.layer.opacity = 0
        totalView.center.y = 600
        billField.center.y = 300
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
    
    view.endEditing(true)
    
        
    }
    
    
 
    
   
    
    
    
    
    
    @IBAction func calculateTip(sender: AnyObject) {
    
        let tipPercentages = [0.15, 0.2 ,0.25]
        
        let bill = Double(billField.text!) ?? 0
        
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        let totalsplitone = total / 2
        let totalsplittwo = total / 3
        
        
        if( billField.text == "") {
           //totalView.hidden = true
            UIView.animateWithDuration(1, animations: {self.totalView.layer.opacity = 0})
             UIView.animateWithDuration(1, animations: {self.totalView.center.y = 600})
            UIView.animateWithDuration(1, animations: {self.billField.center.y = 300})
            
            
         
        }
        else
        {
            //totalView.hidden = false
             UIView.animateWithDuration(1, animations: {self.totalView.layer.opacity = 1})
            UIView.animateWithDuration(1, animations: {self.totalView.center.y = 360})
            UIView.animateWithDuration(1, animations: {self.billField.center.y = 100})
            
       }
        
       
        
        tipLabel.text = String(format: "$%.2f" , tip)
        
        totalLabel.text = String(format: "$%.2f" , total)
        totalLabelSplitOne.text = String(format: "$%.2f" , totalsplitone)
        totalLabelSplitTwo.text = String(format: "$%.2f" , totalsplittwo)
        
        
        
    }
    
    
}

