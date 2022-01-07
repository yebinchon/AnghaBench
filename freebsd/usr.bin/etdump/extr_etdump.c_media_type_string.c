
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
const char *
media_type_string(u_char media_type)
{

 switch (media_type) {
 case 128:
  return ("no emulation");
 case 132:
  return ("1.2MB FDD");
 case 131:
  return ("1.44MB FDD");
 case 130:
  return ("2.88MB FDD");
 case 129:
  return ("HDD");
 default:
  return ("invalid");
 }
}
