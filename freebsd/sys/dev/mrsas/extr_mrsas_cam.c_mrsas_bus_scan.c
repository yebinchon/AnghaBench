
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct mrsas_softc {int sim_lock; int sim_1; int sim_0; } ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int EIO ;
 int ENOMEM ;
 int cam_sim_path (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 union ccb* xpt_alloc_ccb () ;
 scalar_t__ xpt_create_path (int *,int ,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_periph ;
 int xpt_rescan (union ccb*) ;

int
mrsas_bus_scan(struct mrsas_softc *sc)
{
 union ccb *ccb_0;
 union ccb *ccb_1;

 if ((ccb_0 = xpt_alloc_ccb()) == ((void*)0)) {
  return (ENOMEM);
 }
 if ((ccb_1 = xpt_alloc_ccb()) == ((void*)0)) {
  xpt_free_ccb(ccb_0);
  return (ENOMEM);
 }
 mtx_lock(&sc->sim_lock);
 if (xpt_create_path(&ccb_0->ccb_h.path, xpt_periph, cam_sim_path(sc->sim_0),
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  xpt_free_ccb(ccb_0);
  xpt_free_ccb(ccb_1);
  mtx_unlock(&sc->sim_lock);
  return (EIO);
 }
 if (xpt_create_path(&ccb_1->ccb_h.path, xpt_periph, cam_sim_path(sc->sim_1),
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  xpt_free_ccb(ccb_0);
  xpt_free_ccb(ccb_1);
  mtx_unlock(&sc->sim_lock);
  return (EIO);
 }
 mtx_unlock(&sc->sim_lock);
 xpt_rescan(ccb_0);
 xpt_rescan(ccb_1);

 return (0);
}
