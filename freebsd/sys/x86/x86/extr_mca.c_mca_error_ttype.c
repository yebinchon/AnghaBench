
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static const char *
mca_error_ttype(uint16_t mca_error)
{

 switch ((mca_error & 0x000c) >> 2) {
 case 0:
  return ("I");
 case 1:
  return ("D");
 case 2:
  return ("G");
 }
 return ("?");
}
