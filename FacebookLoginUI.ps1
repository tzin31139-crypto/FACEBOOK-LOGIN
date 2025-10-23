Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form
$form.Text = "Facebook Login"
$form.Size = New-Object System.Drawing.Size(320,600)
$form.StartPosition = "CenterScreen"
$form.BackColor = [System.Drawing.Color]::White

# Facebook Logo Label
$logoLabel = New-Object System.Windows.Forms.Label
$logoLabel.Text = "facebook"
$logoLabel.Font = New-Object System.Drawing.Font("Segoe UI", 28, [System.Drawing.FontStyle]::Bold)
$logoLabel.ForeColor = [System.Drawing.Color]::FromArgb(24,119,242)
$logoLabel.AutoSize = $true
$logoLabel.Location = New-Object System.Drawing.Point(80,40)
$form.Controls.Add($logoLabel)

# Username TextBox
$userBox = New-Object System.Windows.Forms.TextBox
$userBox.PlaceholderText = "Mobile number or email"
$userBox.Location = New-Object System.Drawing.Point(40,120)
$userBox.Size = New-Object System.Drawing.Size(240,40)
$userBox.Font = New-Object System.Drawing.Font("Segoe UI", 12)
$form.Controls.Add($userBox)

# Password TextBox
$passBox = New-Object System.Windows.Forms.TextBox
$passBox.PlaceholderText = "Password"
$passBox.Location = New-Object System.Drawing.Point(40,170)
$passBox.Size = New-Object System.Drawing.Size(240,40)
$passBox.Font = New-Object System.Drawing.Font("Segoe UI", 12)
$passBox.UseSystemPasswordChar = $true
$form.Controls.Add($passBox)

# Login Button
$loginButton = New-Object System.Windows.Forms.Button
$loginButton.Text = "Log In"
$loginButton.Location = New-Object System.Drawing.Point(40,230)
$loginButton.Size = New-Object System.Drawing.Size(240,40)
$loginButton.Font = New-Object System.Drawing.Font("Segoe UI", 12, [System.Drawing.FontStyle]::Bold)
$loginButton.BackColor = [System.Drawing.Color]::FromArgb(24,119,242)
$loginButton.ForeColor = [System.Drawing.Color]::White
$loginButton.FlatStyle = "Flat"
$loginButton.Add_Click({
    [System.Windows.Forms.MessageBox]::Show("Username: $($userBox.Text)`nPassword: $($passBox.Text)")
})
$form.Controls.Add($loginButton)

# Forgot Password Link
$forgotLink = New-Object System.Windows.Forms.LinkLabel
$forgotLink.Text = "Forgot Password?"
$forgotLink.Location = New-Object System.Drawing.Point(100,280)
$forgotLink.Size = New-Object System.Drawing.Size(120,20)
$forgotLink.Font = New-Object System.Drawing.Font("Segoe UI", 10)
$form.Controls.Add($forgotLink)

# Divider Line
$divider = New-Object System.Windows.Forms.Label
$divider.Text = ""
$divider.BackColor = [System.Drawing.Color]::LightGray
$divider.Location = New-Object System.Drawing.Point(40,320)
$divider.Size = New-Object System.Drawing.Size(240,1)
$form.Controls.Add($divider)

# Create New Account Button
$createButton = New-Object System.Windows.Forms.Button
$createButton.Text = "Create New Account"
$createButton.Location = New-Object System.Drawing.Point(40,340)
$createButton.Size = New-Object System.Drawing.Size(240,40)
$createButton.Font = New-Object System.Drawing.Font("Segoe UI", 11, [System.Drawing.FontStyle]::Bold)
$createButton.BackColor = [System.Drawing.Color]::FromArgb(66,183,42)
$createButton.ForeColor = [System.Drawing.Color]::White
$createButton.FlatStyle = "Flat"
$form.Controls.Add($createButton)

$form.ShowDialog()
