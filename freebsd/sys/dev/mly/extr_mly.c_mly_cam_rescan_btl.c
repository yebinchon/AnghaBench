
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct mly_softc {int * mly_cam_sim; } ;


 scalar_t__ CAM_REQ_CMP ;
 int cam_sim_path (int ) ;
 int debug (int,char*,int,int) ;
 int debug_called (int) ;
 int mly_printf (struct mly_softc*,char*) ;
 union ccb* xpt_alloc_ccb () ;
 scalar_t__ xpt_create_path (int *,int *,int ,int,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

__attribute__((used)) static void
mly_cam_rescan_btl(struct mly_softc *sc, int bus, int target)
{
    union ccb *ccb;

    debug_called(1);

    if ((ccb = xpt_alloc_ccb()) == ((void*)0)) {
 mly_printf(sc, "rescan failed (can't allocate CCB)\n");
 return;
    }
    if (xpt_create_path(&ccb->ccb_h.path, ((void*)0),
     cam_sim_path(sc->mly_cam_sim[bus]), target, 0) != CAM_REQ_CMP) {
 mly_printf(sc, "rescan failed (can't create path)\n");
 xpt_free_ccb(ccb);
 return;
    }
    debug(1, "rescan target %d:%d", bus, target);
    xpt_rescan(ccb);
}
