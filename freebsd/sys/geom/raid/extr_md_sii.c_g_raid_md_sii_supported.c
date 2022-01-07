
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_RAID_VOLUME_RLQ_NONE ;
 int G_RAID_VOLUME_RLQ_R5LS ;







__attribute__((used)) static int
g_raid_md_sii_supported(int level, int qual, int disks, int force)
{

 if (disks > 8)
  return (0);
 switch (level) {
 case 132:
  if (disks < 1)
   return (0);
  if (!force && (disks < 2 || disks > 6))
   return (0);
  break;
 case 131:
  if (disks < 1)
   return (0);
  if (!force && (disks != 2))
   return (0);
  break;
 case 130:
  if (disks < 2)
   return (0);
  if (disks % 2 != 0)
   return (0);
  if (!force && (disks < 4))
   return (0);
  break;
 case 128:
  if (disks != 1)
   return (0);
  break;
 case 133:
  if (disks < 2)
   return (0);
  break;
 case 129:
  if (disks < 3)
   return (0);
  if (qual != G_RAID_VOLUME_RLQ_R5LS)
   return (0);
  break;
 default:
  return (0);
 }
 if (level != 129 && qual != G_RAID_VOLUME_RLQ_NONE)
  return (0);
 return (1);
}
