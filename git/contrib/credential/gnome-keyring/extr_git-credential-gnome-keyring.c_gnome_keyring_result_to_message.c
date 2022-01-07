
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GnomeKeyringResult ;
__attribute__((used)) static const char *gnome_keyring_result_to_message(GnomeKeyringResult result)
{
 switch (result) {
 case 128:
  return "OK";
 case 132:
  return "Denied";
 case 130:
  return "No Keyring Daemon";
 case 135:
  return "Already UnLocked";
 case 129:
  return "No Such Keyring";
 case 134:
  return "Bad Arguments";
 case 131:
  return "IO Error";
 case 133:
  return "Cancelled";
 case 136:
  return "Already Exists";
 default:
  return "Unknown Error";
 }
}
