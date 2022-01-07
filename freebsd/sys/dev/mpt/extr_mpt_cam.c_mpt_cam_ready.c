
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int role; int ready; scalar_t__ is_fc; } ;


 scalar_t__ FALSE ;
 int MPT_LOCK (struct mpt_softc*) ;
 int MPT_ROLE_TARGET ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 scalar_t__ mpt_add_target_commands (struct mpt_softc*) ;
 int mpt_prt (struct mpt_softc*,char*) ;

__attribute__((used)) static void
mpt_cam_ready(struct mpt_softc *mpt)
{





 if (mpt->is_fc && (mpt->role & MPT_ROLE_TARGET)) {



  MPT_LOCK(mpt);
  if (mpt_add_target_commands(mpt) == FALSE) {
   mpt_prt(mpt, "failed to add target commands\n");
  }
  MPT_UNLOCK(mpt);
 }
 mpt->ready = 1;
}
