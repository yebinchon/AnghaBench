
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii_raid_conf {int type; int raid0_disks; int raid1_disks; } ;
__attribute__((used)) static int
sii_meta_total_disks(struct sii_raid_conf *meta)
{

 switch (meta->type) {
 case 132:
 case 129:
 case 134:
  return (meta->raid0_disks);
 case 130:
  return (meta->raid1_disks);
 case 131:
  return (meta->raid0_disks * meta->raid1_disks);
 case 128:
 case 133:
  return (1);
 }
 return (0);
}
