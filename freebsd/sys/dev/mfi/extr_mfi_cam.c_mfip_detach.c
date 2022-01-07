
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfip_softc {scalar_t__ state; int * devq; TYPE_1__* mfi_sc; int * sim; } ;
typedef int device_t ;
struct TYPE_2__ {int mfi_io_lock; int * mfi_cam_rescan_cb; } ;


 int EBUSY ;
 int EINVAL ;
 int FALSE ;
 scalar_t__ MFIP_STATE_DETACH ;
 scalar_t__ MFIP_STATE_RESCAN ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 int cam_simq_free (int *) ;
 struct mfip_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_bus_deregister (int ) ;

__attribute__((used)) static int
mfip_detach(device_t dev)
{
 struct mfip_softc *sc;

 sc = device_get_softc(dev);
 if (sc == ((void*)0))
  return (EINVAL);

 mtx_lock(&sc->mfi_sc->mfi_io_lock);
 if (sc->state == MFIP_STATE_RESCAN) {
  mtx_unlock(&sc->mfi_sc->mfi_io_lock);
  return (EBUSY);
 }
 sc->state = MFIP_STATE_DETACH;
 mtx_unlock(&sc->mfi_sc->mfi_io_lock);

 sc->mfi_sc->mfi_cam_rescan_cb = ((void*)0);

 if (sc->sim != ((void*)0)) {
  mtx_lock(&sc->mfi_sc->mfi_io_lock);
  xpt_bus_deregister(cam_sim_path(sc->sim));
  cam_sim_free(sc->sim, FALSE);
  sc->sim = ((void*)0);
  mtx_unlock(&sc->mfi_sc->mfi_io_lock);
 }

 if (sc->devq != ((void*)0)) {
  cam_simq_free(sc->devq);
  sc->devq = ((void*)0);
 }

 return (0);
}
