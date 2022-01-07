
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct tws_softc {int sim_lock; int sim; } ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int EIO ;
 int ENXIO ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,struct tws_softc*,int ) ;
 int cam_sim_path (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 union ccb* xpt_alloc_ccb () ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

int
tws_bus_scan(struct tws_softc *sc)
{
    union ccb *ccb;

    TWS_TRACE_DEBUG(sc, "entry", sc, 0);
    if (!(sc->sim))
        return(ENXIO);
    ccb = xpt_alloc_ccb();
    mtx_lock(&sc->sim_lock);
    if (xpt_create_path(&ccb->ccb_h.path, ((void*)0), cam_sim_path(sc->sim),
                  CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
 mtx_unlock(&sc->sim_lock);
        xpt_free_ccb(ccb);
        return(EIO);
    }
    xpt_rescan(ccb);
    mtx_unlock(&sc->sim_lock);
    return(0);
}
