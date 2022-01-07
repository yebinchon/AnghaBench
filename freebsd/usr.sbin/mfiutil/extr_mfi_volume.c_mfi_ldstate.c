
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mfi_ld_state { ____Placeholder_mfi_ld_state } mfi_ld_state ;






 int sprintf (char*,char*,int) ;

const char *
mfi_ldstate(enum mfi_ld_state state)
{
 static char buf[16];

 switch (state) {
 case 130:
  return ("OFFLINE");
 case 128:
  return ("PARTIALLY DEGRADED");
 case 131:
  return ("DEGRADED");
 case 129:
  return ("OPTIMAL");
 default:
  sprintf(buf, "LSTATE 0x%02x", state);
  return (buf);
 }
}
