
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct mrsas_softc {int sim_lock; } ;
struct cam_sim {int dummy; } ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int EIO ;
 int ENOMEM ;
 int cam_sim_path (struct cam_sim*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 union ccb* xpt_alloc_ccb () ;
 scalar_t__ xpt_create_path (int *,int ,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_periph ;
 int xpt_rescan (union ccb*) ;

int
mrsas_bus_scan_sim(struct mrsas_softc *sc, struct cam_sim *sim)
{
 union ccb *ccb;

 if ((ccb = xpt_alloc_ccb()) == ((void*)0)) {
  return (ENOMEM);
 }
 mtx_lock(&sc->sim_lock);
 if (xpt_create_path(&ccb->ccb_h.path, xpt_periph, cam_sim_path(sim),
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  xpt_free_ccb(ccb);
  mtx_unlock(&sc->sim_lock);
  return (EIO);
 }
 mtx_unlock(&sc->sim_lock);
 xpt_rescan(ccb);

 return (0);
}
