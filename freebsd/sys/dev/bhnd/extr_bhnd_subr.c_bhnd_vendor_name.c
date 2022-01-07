
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;






const char *
bhnd_vendor_name(uint16_t vendor)
{
 switch (vendor) {
 case 130:
  return "ARM";
 case 129:
  return "Broadcom";
 case 128:
  return "MIPS";
 default:
  return "unknown";
 }
}
