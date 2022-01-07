
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
 int sprintf (char*,char*,int) ;

const char *
mpt_raid_level(U8 VolumeType)
{
 static char buf[16];

 switch (VolumeType) {
 case 132:
  return ("RAID-0");
 case 134:
  return ("RAID-1");
 case 133:
  return ("RAID-1E");
 case 130:
  return ("RAID-5");
 case 128:
  return ("RAID-6");
 case 131:
  return ("RAID-10");
 case 129:
  return ("RAID-50");
 default:
  sprintf(buf, "LVL 0x%02x", VolumeType);
  return (buf);
 }
}
