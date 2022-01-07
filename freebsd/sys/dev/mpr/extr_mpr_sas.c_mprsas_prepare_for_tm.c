
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int path; } ;
union ccb {TYPE_2__ ccb_h; } ;
struct mprsas_target {int flags; int tid; } ;
struct mpr_softc {TYPE_1__* sassc; } ;
struct mpr_command {struct mprsas_target* cm_targ; union ccb* cm_ccb; } ;
typedef int path_id_t ;
typedef int lun_id_t ;
struct TYPE_3__ {int sim; } ;


 scalar_t__ CAM_REQ_CMP ;
 int MPRSAS_TARGET_INRESET ;
 int cam_sim_path (int ) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 scalar_t__ xpt_create_path (int *,int ,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_periph ;

void
mprsas_prepare_for_tm(struct mpr_softc *sc, struct mpr_command *tm,
    struct mprsas_target *target, lun_id_t lun_id)
{
 union ccb *ccb;
 path_id_t path_id;

 ccb = xpt_alloc_ccb_nowait();
 if (ccb) {
  path_id = cam_sim_path(sc->sassc->sim);
  if (xpt_create_path(&ccb->ccb_h.path, xpt_periph, path_id,
      target->tid, lun_id) != CAM_REQ_CMP) {
   xpt_free_ccb(ccb);
  } else {
   tm->cm_ccb = ccb;
   tm->cm_targ = target;
   target->flags |= MPRSAS_TARGET_INRESET;
  }
 }
}
