
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mfi_pd_state { ____Placeholder_mfi_pd_state } mfi_pd_state ;
 int sprintf (char*,char*,int) ;

const char *
mfi_pdstate(enum mfi_pd_state state)
{
 static char buf[16];

 switch (state) {
 case 128:
  return ("UNCONFIGURED GOOD");
 case 129:
  return ("UNCONFIGURED BAD");
 case 134:
  return ("HOT SPARE");
 case 133:
  return ("OFFLINE");
 case 135:
  return ("FAILED");
 case 131:
  return ("REBUILD");
 case 132:
  return ("ONLINE");
 case 136:
  return ("COPYBACK");
 case 130:
  return ("JBOD");
 default:
  sprintf(buf, "PSTATE 0x%04x", state);
  return (buf);
 }
}
