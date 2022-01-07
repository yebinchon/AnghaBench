
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int phydisk_sim; int unit; int raid_thread; } ;


 int FALSE ;
 int MPT_LOCK (struct mpt_softc*) ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 int kproc_create (int ,struct mpt_softc*,int *,int ,int ,char*,int ) ;
 int mpt_raid_thread ;
 int xpt_freeze_simq (int ,int) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static int
mpt_spawn_raid_thread(struct mpt_softc *mpt)
{
 int error;
 MPT_LOCK(mpt);
 xpt_freeze_simq(mpt->phydisk_sim, 1);
 MPT_UNLOCK(mpt);
 error = kproc_create(mpt_raid_thread, mpt,
     &mpt->raid_thread, 0, 0,
     "mpt_raid%d", mpt->unit);
 if (error != 0) {
  MPT_LOCK(mpt);
  xpt_release_simq(mpt->phydisk_sim, FALSE);
  MPT_UNLOCK(mpt);
 }
 return (error);
}
