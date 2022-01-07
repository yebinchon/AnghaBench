
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int target_id_t ;
struct vtscsi_softc {int vtscsi_sim; } ;
typedef int lun_id_t ;
typedef scalar_t__ cam_status ;


 scalar_t__ CAM_REQ_CMP ;
 int VTSCSI_ERROR ;
 int cam_sim_path (int ) ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

__attribute__((used)) static void
vtscsi_execute_rescan(struct vtscsi_softc *sc, target_id_t target_id,
    lun_id_t lun_id)
{
 union ccb *ccb;
 cam_status status;

 ccb = xpt_alloc_ccb_nowait();
 if (ccb == ((void*)0)) {
  vtscsi_dprintf(sc, VTSCSI_ERROR, "cannot allocate CCB\n");
  return;
 }

 status = xpt_create_path(&ccb->ccb_h.path, ((void*)0),
     cam_sim_path(sc->vtscsi_sim), target_id, lun_id);
 if (status != CAM_REQ_CMP) {
  xpt_free_ccb(ccb);
  return;
 }

 xpt_rescan(ccb);
}
