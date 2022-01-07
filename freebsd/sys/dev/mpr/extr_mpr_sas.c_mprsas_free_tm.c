
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mpr_softc {int dummy; } ;
struct mpr_command {TYPE_3__* cm_ccb; TYPE_2__* cm_targ; } ;
struct TYPE_4__ {int path; } ;
struct TYPE_6__ {TYPE_1__ ccb_h; } ;
struct TYPE_5__ {int tid; int flags; } ;


 int MPRSAS_TARGET_INRESET ;
 int MPR_FUNCTRACE (struct mpr_softc*) ;
 int MPR_INFO ;
 int TRUE ;
 int mpr_dprint (struct mpr_softc*,int ,char*,int) ;
 int mpr_free_high_priority_command (struct mpr_softc*,struct mpr_command*) ;
 int xpt_free_ccb (TYPE_3__*) ;
 int xpt_free_path (int ) ;
 int xpt_release_devq (int ,int,int ) ;

void
mprsas_free_tm(struct mpr_softc *sc, struct mpr_command *tm)
{
 int target_id = 0xFFFFFFFF;

 MPR_FUNCTRACE(sc);
 if (tm == ((void*)0))
  return;






 if (tm->cm_targ != ((void*)0)) {
  tm->cm_targ->flags &= ~MPRSAS_TARGET_INRESET;
  target_id = tm->cm_targ->tid;
 }
 if (tm->cm_ccb) {
  mpr_dprint(sc, MPR_INFO, "Unfreezing devq for target ID %d\n",
      target_id);
  xpt_release_devq(tm->cm_ccb->ccb_h.path, 1, TRUE);
  xpt_free_path(tm->cm_ccb->ccb_h.path);
  xpt_free_ccb(tm->cm_ccb);
 }

 mpr_free_high_priority_command(sc, tm);
}
