
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 scalar_t__ snprintf (char*,int,char*,int,int) ;

void
usb_printbcd(char *p, uint16_t p_len, uint16_t bcd)
{
 if (snprintf(p, p_len, "%x.%02x", bcd >> 8, bcd & 0xff)) {

 }
}
