
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static const char *
aspm_string(uint8_t aspm)
{

 switch (aspm) {
 case 1:
  return ("L0s");
 case 2:
  return ("L1");
 case 3:
  return ("L0s/L1");
 default:
  return ("disabled");
 }
}
