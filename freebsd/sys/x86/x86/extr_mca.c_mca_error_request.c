
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static const char *
mca_error_request(uint16_t mca_error)
{

 switch ((mca_error & 0x00f0) >> 4) {
 case 0x0:
  return ("ERR");
 case 0x1:
  return ("RD");
 case 0x2:
  return ("WR");
 case 0x3:
  return ("DRD");
 case 0x4:
  return ("DWR");
 case 0x5:
  return ("IRD");
 case 0x6:
  return ("PREFETCH");
 case 0x7:
  return ("EVICT");
 case 0x8:
  return ("SNOOP");
 }
 return ("???");
}
