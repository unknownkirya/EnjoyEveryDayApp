//
//  ViewController.swift
//  EnjoyEveryDayApp
//
//  Created by Кирилл Бережной on 14.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    private var numberOfDays = ""
    //@IBOutlet weak var resultButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //resultButton.layer.cornerRadius = 15
    }
    
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    @IBAction func resultButtonTap() {
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays)!!!"
    }
    
}

