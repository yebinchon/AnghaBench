
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpt_raid_volume {TYPE_1__* config_page; } ;
struct TYPE_2__ {int VolumeType; } ;






__attribute__((used)) static const char *
mpt_vol_type(struct mpt_raid_volume *vol)
{
 switch (vol->config_page->VolumeType) {
 case 128:
  return ("RAID-0");
 case 129:
  return ("RAID-1E");
 case 130:
  return ("RAID-1");
 default:
  return ("Unknown");
 }
}
