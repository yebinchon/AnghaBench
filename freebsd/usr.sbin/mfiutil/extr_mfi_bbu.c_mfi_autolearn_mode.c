
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int snprintf (char*,size_t,char*,...) ;

void
mfi_autolearn_mode(uint8_t mode, char *buf, size_t sz)
{

 switch (mode) {
 case 0:
  snprintf(buf, sz, "enabled");
  break;
 case 1:
  snprintf(buf, sz, "disabled");
  break;
 case 2:
  snprintf(buf, sz, "warn via event");
  break;
 default:
  snprintf(buf, sz, "mode 0x%02x", mode);
  break;
 }
}
