
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct mpt_softc {scalar_t__ shutdwn_raid; scalar_t__ raid_wakeup; scalar_t__ raid_rescan; int * raid_thread; int phydisk_sim; int raid_volumes; } ;


 int CAM_LUN_WILDCARD ;
 int CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int MPT_LOCK (struct mpt_softc*) ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 int PUSER ;
 int TRUE ;
 int cam_sim_path (int ) ;
 int kproc_exit (int ) ;
 int mpt_prt (struct mpt_softc*,char*) ;
 scalar_t__ mpt_refresh_raid_data (struct mpt_softc*) ;
 int mpt_schedule_raid_refresh (struct mpt_softc*) ;
 int mpt_sleep (struct mpt_softc*,int *,int ,char*,int ) ;
 int wakeup (int **) ;
 union ccb* xpt_alloc_ccb () ;
 int xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_release_simq (int ,int ) ;
 int xpt_rescan (union ccb*) ;

__attribute__((used)) static void
mpt_raid_thread(void *arg)
{
 struct mpt_softc *mpt;
 int firstrun;

 mpt = (struct mpt_softc *)arg;
 firstrun = 1;
 MPT_LOCK(mpt);
 while (mpt->shutdwn_raid == 0) {

  if (mpt->raid_wakeup == 0) {
   mpt_sleep(mpt, &mpt->raid_volumes, PUSER, "idle", 0);
   continue;
  }

  mpt->raid_wakeup = 0;

  if (mpt_refresh_raid_data(mpt)) {
   mpt_schedule_raid_refresh(mpt);
   continue;
  }





  if (firstrun) {
   firstrun = 0;
   xpt_release_simq(mpt->phydisk_sim, TRUE);
  }

  if (mpt->raid_rescan != 0) {
   union ccb *ccb;
   int error;

   mpt->raid_rescan = 0;
   MPT_UNLOCK(mpt);

   ccb = xpt_alloc_ccb();

   MPT_LOCK(mpt);
   error = xpt_create_path(&ccb->ccb_h.path, ((void*)0),
       cam_sim_path(mpt->phydisk_sim),
       CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD);
   if (error != CAM_REQ_CMP) {
    xpt_free_ccb(ccb);
    mpt_prt(mpt, "Unable to rescan RAID Bus!\n");
   } else {
    xpt_rescan(ccb);
   }
  }
 }
 mpt->raid_thread = ((void*)0);
 wakeup(&mpt->raid_thread);
 MPT_UNLOCK(mpt);
 kproc_exit(0);
}
