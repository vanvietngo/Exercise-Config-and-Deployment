# Configuration and Deployment
    # Ensure You Have a Usable Key Pair.
    # Add the SSH Key From your PEM File to Circle CI.
    # Create EC2 Instance for Testing.
    # Bring in Ansible Playbook from Previous Exercise.
    # Create Circle CI Job to Execute Playbook.
    # Add Job to Workflow.
    # Run Pipeline and Verify Successful Execution.
    # Clean Up EC2 Instance.


# Key pair - You should have an AWS EC2 key pair already created in your AWS Console, and downloaded to your local mahcine. We are assuming the key pair name is udacity.pem.

# A public Github repository set up in the CircleCI.

# AWS Access keys must have saved in the CircleCI project settings.

# You should have finished the previous Exercise: Infrastructure Creation and Exercise: Remote Control Using Ansible, and have the following files in your repo and local:

── template.yml       	# Change the KeyName and ImageID property value
├── ansible.cfg 		   # Disables host_key_checking 
├── inventory			  # Or it could be inventory.txt
├── main.yml     		  # Playbook file from the Exercise: Remote Control Using Ansible
└── roles
│   └── setup
│       ├── files
│       │   └── index.js
│       └── tasks
│           └── main.yml
└── .circleci
       └─── config.yml	    # Should have the create_infrastructure Job    

# The Ansible Playbook above is responsible for configuring the EC2 instance and copy over the files/index.js file.

# EC2 Ubuntu instance - You should have an EC2 instance running in your AWS account. We suggest having the Ubuntu instance for better compatibility with the exercise. Be sure to use your "udacity" key pair.
