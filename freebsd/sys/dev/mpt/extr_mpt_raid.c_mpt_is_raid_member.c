
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ target_id_t ;
struct mpt_softc {struct mpt_raid_disk* raid_disks; TYPE_2__* ioc_page2; } ;
struct TYPE_3__ {scalar_t__ PhysDiskID; } ;
struct mpt_raid_disk {int flags; TYPE_1__ config_page; } ;
struct TYPE_4__ {int MaxPhysDisks; } ;


 int MPT_RDF_ACTIVE ;

int
mpt_is_raid_member(struct mpt_softc *mpt, target_id_t tgt)
{
 struct mpt_raid_disk *mpt_disk;
 int i;

 if (mpt->ioc_page2 == ((void*)0) || mpt->ioc_page2->MaxPhysDisks == 0)
  return (0);
 for (i = 0; i < mpt->ioc_page2->MaxPhysDisks; i++) {
  mpt_disk = &mpt->raid_disks[i];
  if ((mpt_disk->flags & MPT_RDF_ACTIVE) != 0 &&
      mpt_disk->config_page.PhysDiskID == tgt)
   return (1);
 }
 return (0);

}
