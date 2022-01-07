
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;






 int sprintf (char*,char*,int) ;

const char *
mpt_volstate(U8 State)
{
 static char buf[16];

 switch (State) {
 case 128:
  return ("OPTIMAL");
 case 131:
  return ("DEGRADED");
 case 130:
  return ("FAILED");
 case 129:
  return ("MISSING");
 default:
  sprintf(buf, "VSTATE 0x%02x", State);
  return (buf);
 }
}
