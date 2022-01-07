
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int buffer ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
format_locale(uint16_t locale)
{
 static char buffer[8];

 switch (locale) {
 case 130:
  return ("VOLUME");
 case 129:
  return ("DRIVE");
 case 131:
  return ("ENCL");
 case 135:
  return ("BATTERY");
 case 128:
  return ("SAS");
 case 132:
  return ("CTRL");
 case 133:
  return ("CONFIG");
 case 134:
  return ("CLUSTER");
 case 136:
  return ("ALL");
 default:
  snprintf(buffer, sizeof(buffer), "0x%04x", locale);
  return (buffer);
 }
}
