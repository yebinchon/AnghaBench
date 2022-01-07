
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int uint32_t ;
struct mfip_softc {scalar_t__ state; struct cam_sim* sim; } ;
struct mfi_softc {int mfi_io_lock; int mfi_dev; } ;
struct cam_sim {int dummy; } ;
typedef int * device_t ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int Giant ;
 scalar_t__ MFIP_STATE_DETACH ;
 scalar_t__ MFIP_STATE_NONE ;
 scalar_t__ MFIP_STATE_RESCAN ;
 int cam_sim_path (struct cam_sim*) ;
 int * device_find_child (int ,char*,int) ;
 struct mfip_softc* device_get_softc (int *) ;
 int device_printf (int ,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

__attribute__((used)) static void
mfip_cam_rescan(struct mfi_softc *sc, uint32_t tid)
{
 union ccb *ccb;
 struct mfip_softc *camsc;
 struct cam_sim *sim;
 device_t mfip_dev;

 mtx_lock(&Giant);
 mfip_dev = device_find_child(sc->mfi_dev, "mfip", -1);
 mtx_unlock(&Giant);
 if (mfip_dev == ((void*)0)) {
  device_printf(sc->mfi_dev, "Couldn't find mfip child device!\n");
  return;
 }

 mtx_lock(&sc->mfi_io_lock);
 camsc = device_get_softc(mfip_dev);
 if (camsc->state == MFIP_STATE_DETACH) {
  mtx_unlock(&sc->mfi_io_lock);
  return;
 }
 camsc->state = MFIP_STATE_RESCAN;

 ccb = xpt_alloc_ccb_nowait();
 if (ccb == ((void*)0)) {
  mtx_unlock(&sc->mfi_io_lock);
  device_printf(sc->mfi_dev,
      "Cannot allocate ccb for bus rescan.\n");
  return;
 }

 sim = camsc->sim;
 if (xpt_create_path(&ccb->ccb_h.path, ((void*)0), cam_sim_path(sim),
     tid, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  xpt_free_ccb(ccb);
  mtx_unlock(&sc->mfi_io_lock);
  device_printf(sc->mfi_dev,
      "Cannot create path for bus rescan.\n");
  return;
 }
 xpt_rescan(ccb);

 camsc->state = MFIP_STATE_NONE;
 mtx_unlock(&sc->mfi_io_lock);
}
