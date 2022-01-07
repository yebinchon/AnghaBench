
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static const char *
mca_error_mmtype(uint16_t mca_error)
{

 switch ((mca_error & 0x70) >> 4) {
 case 0x0:
  return ("GEN");
 case 0x1:
  return ("RD");
 case 0x2:
  return ("WR");
 case 0x3:
  return ("AC");
 case 0x4:
  return ("MS");
 }
 return ("???");
}
