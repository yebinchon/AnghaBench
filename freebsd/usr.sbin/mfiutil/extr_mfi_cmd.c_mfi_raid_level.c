
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int sprintf (char*,char*,int) ;

const char *
mfi_raid_level(uint8_t primary_level, uint8_t secondary_level)
{
 static char buf[16];

 switch (primary_level) {
 case 135:
  return ("RAID-0");
 case 134:
  if (secondary_level != 0)
   return ("RAID-10");
  else
   return ("RAID-1");
 case 133:
  return ("RAID-1E");
 case 132:
  return ("RAID-3");
 case 131:
  if (secondary_level != 0)
   return ("RAID-50");
  else
   return ("RAID-5");
 case 130:
  return ("RAID-5E");
 case 129:
  return ("RAID-5EE");
 case 128:
  if (secondary_level != 0)
   return ("RAID-60");
  else
   return ("RAID-6");
 case 136:
  return ("JBOD");
 case 137:
  return ("CONCAT");
 default:
  sprintf(buf, "LVL 0x%02x", primary_level);
  return (buf);
 }
}
