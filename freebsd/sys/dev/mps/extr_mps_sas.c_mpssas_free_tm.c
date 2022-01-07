
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mps_softc {int dummy; } ;
struct mps_command {TYPE_3__* cm_ccb; TYPE_2__* cm_targ; } ;
struct TYPE_4__ {int path; } ;
struct TYPE_6__ {TYPE_1__ ccb_h; } ;
struct TYPE_5__ {int tid; int flags; } ;


 int MPSSAS_TARGET_INRESET ;
 int MPS_INFO ;
 int TRUE ;
 int mps_dprint (struct mps_softc*,int ,char*,int) ;
 int mps_free_high_priority_command (struct mps_softc*,struct mps_command*) ;
 int xpt_free_ccb (TYPE_3__*) ;
 int xpt_free_path (int ) ;
 int xpt_release_devq (int ,int,int ) ;

void
mpssas_free_tm(struct mps_softc *sc, struct mps_command *tm)
{
 int target_id = 0xFFFFFFFF;

 if (tm == ((void*)0))
  return;






 if (tm->cm_targ != ((void*)0)) {
  tm->cm_targ->flags &= ~MPSSAS_TARGET_INRESET;
  target_id = tm->cm_targ->tid;
 }
 if (tm->cm_ccb) {
  mps_dprint(sc, MPS_INFO, "Unfreezing devq for target ID %d\n",
      target_id);
  xpt_release_devq(tm->cm_ccb->ccb_h.path, 1, TRUE);
  xpt_free_path(tm->cm_ccb->ccb_h.path);
  xpt_free_ccb(tm->cm_ccb);
 }

 mps_free_high_priority_command(sc, tm);
}
