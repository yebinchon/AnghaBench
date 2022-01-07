
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int rbuf ;
 int snprintf (char*,int,char*,int) ;

const char *
scode2ascii(u_char code)
{
 static char rbuf[32];
 switch (code & 0xf) {
 case 128:
  return ("Unsupported");
 case 131:
  return ("OK");
 case 136:
  return ("Critical");
 case 134:
  return ("Noncritical");
 case 129:
  return ("Unrecoverable");
 case 132:
  return ("Not Installed");
 case 130:
  return ("Unknown");
 case 133:
  return ("Not Available");
 case 135:
  return ("No Access Allowed");
 default:
  snprintf(rbuf, sizeof(rbuf), "<Status 0x%x>", code & 0xf);
  return (rbuf);
 }
}
