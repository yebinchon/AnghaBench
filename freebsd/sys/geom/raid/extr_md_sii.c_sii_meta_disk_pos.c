
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii_raid_conf {int type; int disk_number; int raid1_ident; int raid1_disks; int raid0_ident; int timestamp; } ;
 int SII_T_SPARE ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static int
sii_meta_disk_pos(struct sii_raid_conf *meta, struct sii_raid_conf *pdmeta)
{

 if (pdmeta->type == SII_T_SPARE)
  return (-3);

 if (memcmp(&meta->timestamp, &pdmeta->timestamp, 6) != 0)
  return (-1);

 switch (pdmeta->type) {
 case 131:
 case 129:
 case 128:
 case 133:
  return (pdmeta->disk_number);
 case 130:
  return (pdmeta->raid1_ident * pdmeta->raid1_disks +
      pdmeta->raid0_ident);
 case 132:
  return (0);
 }
 return (-1);
}
