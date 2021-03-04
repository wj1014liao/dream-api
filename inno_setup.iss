; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define AppName "DreamAPI"
#define AppVersion "1.2.0"
#define AppVersionLong "1.2.0.0"
#define AppPublisher "acidicoala"
#define AppURL "https://github.com/acidicoala/dream-api"
#define AppExeName "DreamAPI.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{FF9B6947-9E8A-4075-83F6-F231A6F3DB07}
AppName={#AppName}
AppVersion={#AppVersion}
;AppVerName={#AppName} {#AppVersion}
AppPublisher={#AppPublisher}
AppPublisherURL={#AppURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
Compression=lzma
DefaultDirName={autopf}\{#AppName}
DefaultGroupName={#AppName}
AllowNoIcons=yes
LicenseFile=LICENSE.txt
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputBaseFilename=DreamAPISetup
OutputDir=dist
SolidCompression=yes
UninstallDisplayIcon={app}\{#AppExeName}
VersionInfoCompany=acidicoala
VersionInfoProductName="DreamAPI Setup"
VersionInfoProductVersion={#AppVersionLong}
VersionInfoVersion={#AppVersionLong}
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "dist\main\{#AppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "dist\main\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#AppName}"; Filename: "{app}\{#AppExeName}"
Name: "{group}\{cm:UninstallProgram,{#AppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#AppName}"; Filename: "{app}\{#AppExeName}"; Tasks: desktopicon

[UninstallDelete]
Type: files; Name: "{app}\DreamAPI.log"
Type: files; Name: "{app}\DreamAPI.json"
