
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct ccb_mmcio {int dummy; } ;
union ccb {TYPE_1__ ccb_h; struct ccb_mmcio mmcio; } ;
struct mmcnull_softc {int tick; union ccb* cur_ccb; } ;
struct cam_sim {int dummy; } ;


 int CAM_REQ_INPROG ;
 int callout_reset (int *,int,int ,struct mmcnull_softc*) ;
 struct mmcnull_softc* cam_sim_softc (struct cam_sim*) ;
 int hz ;
 scalar_t__ is_sdio_mode ;
 int mmcnull_intr_sd ;
 int mmcnull_intr_sdio ;

__attribute__((used)) static void
mmcnull_handle_mmcio(struct cam_sim *sim, union ccb *ccb)
{
 struct mmcnull_softc *sc;
 struct ccb_mmcio *mmcio;

 sc = cam_sim_softc(sim);
 mmcio = &ccb->mmcio;
 ccb->ccb_h.status = CAM_REQ_INPROG;
 sc->cur_ccb = ccb;


 if (is_sdio_mode)
  callout_reset(&sc->tick, hz / 10, mmcnull_intr_sdio, sc);
 else
  callout_reset(&sc->tick, hz / 10, mmcnull_intr_sd, sc);
}
