
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
const char *
dump_power_mode(uint8_t value)
{
 ;
 switch (value) {
 case 132:
  return ("OFF");
 case 131:
  return ("ON");
 case 129:
  return ("SAVE");
 case 128:
  return ("SUSPEND");
 case 130:
  return ("RESUME");
 default:
  return ("UNKNOWN");
 }
}
