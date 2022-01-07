
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct ciss_softc {int * ciss_cam_sim; } ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int cam_sim_path (int ) ;
 int ciss_printf (struct ciss_softc*,char*) ;
 int debug_called (int) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 scalar_t__ xpt_create_path (int *,int *,int ,int,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

__attribute__((used)) static void
ciss_cam_rescan_target(struct ciss_softc *sc, int bus, int target)
{
    union ccb *ccb;

    debug_called(1);

    if ((ccb = xpt_alloc_ccb_nowait()) == ((void*)0)) {
 ciss_printf(sc, "rescan failed (can't allocate CCB)\n");
 return;
    }

    if (xpt_create_path(&ccb->ccb_h.path, ((void*)0),
     cam_sim_path(sc->ciss_cam_sim[bus]),
     target, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
 ciss_printf(sc, "rescan failed (can't create path)\n");
 xpt_free_ccb(ccb);
 return;
    }
    xpt_rescan(ccb);

}
