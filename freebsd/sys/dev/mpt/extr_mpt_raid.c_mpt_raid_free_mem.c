
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int raid_max_volumes; scalar_t__ raid_max_disks; struct mpt_raid_volume* ioc_page3; struct mpt_raid_volume* ioc_page2; struct mpt_raid_volume* raid_disks; struct mpt_raid_volume* raid_volumes; } ;
struct mpt_raid_volume {struct mpt_raid_volume* config_page; } ;


 int M_DEVBUF ;
 int free (struct mpt_raid_volume*,int ) ;

void
mpt_raid_free_mem(struct mpt_softc *mpt)
{

 if (mpt->raid_volumes) {
  struct mpt_raid_volume *mpt_raid;
  int i;
  for (i = 0; i < mpt->raid_max_volumes; i++) {
   mpt_raid = &mpt->raid_volumes[i];
   if (mpt_raid->config_page) {
    free(mpt_raid->config_page, M_DEVBUF);
    mpt_raid->config_page = ((void*)0);
   }
  }
  free(mpt->raid_volumes, M_DEVBUF);
  mpt->raid_volumes = ((void*)0);
 }
 if (mpt->raid_disks) {
  free(mpt->raid_disks, M_DEVBUF);
  mpt->raid_disks = ((void*)0);
 }
 if (mpt->ioc_page2) {
  free(mpt->ioc_page2, M_DEVBUF);
  mpt->ioc_page2 = ((void*)0);
 }
 if (mpt->ioc_page3) {
  free(mpt->ioc_page3, M_DEVBUF);
  mpt->ioc_page3 = ((void*)0);
 }
 mpt->raid_max_volumes = 0;
 mpt->raid_max_disks = 0;
}
