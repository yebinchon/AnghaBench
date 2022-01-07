
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct twa_softc {int sim_lock; int sim; } ;
typedef int TW_INT32 ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int cam_sim_path (int ) ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*) ;
 union ccb* xpt_alloc_ccb () ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

TW_INT32
tw_osli_request_bus_scan(struct twa_softc *sc)
{
 union ccb *ccb;

 tw_osli_dbg_dprintf(3, sc, "entering");


 if (!(sc->sim))
  return(ENXIO);
 if ((ccb = xpt_alloc_ccb()) == ((void*)0))
  return(ENOMEM);
 mtx_lock(sc->sim_lock);
 if (xpt_create_path(&ccb->ccb_h.path, ((void*)0), cam_sim_path(sc->sim),
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  xpt_free_ccb(ccb);
  mtx_unlock(sc->sim_lock);
  return(EIO);
 }

 xpt_rescan(ccb);
 mtx_unlock(sc->sim_lock);
 return(0);
}
