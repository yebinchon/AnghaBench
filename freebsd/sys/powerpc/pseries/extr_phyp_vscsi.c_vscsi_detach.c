
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsi_softc {int io_lock; int * devq; int * sim; } ;
typedef int device_t ;


 int EINVAL ;
 int FALSE ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 int cam_simq_free (int *) ;
 struct vscsi_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_bus_deregister (int ) ;

__attribute__((used)) static int
vscsi_detach(device_t dev)
{
 struct vscsi_softc *sc;

 sc = device_get_softc(dev);
 if (sc == ((void*)0))
  return (EINVAL);

 if (sc->sim != ((void*)0)) {
  mtx_lock(&sc->io_lock);
  xpt_bus_deregister(cam_sim_path(sc->sim));
  cam_sim_free(sc->sim, FALSE);
  sc->sim = ((void*)0);
  mtx_unlock(&sc->io_lock);
 }

 if (sc->devq != ((void*)0)) {
  cam_simq_free(sc->devq);
  sc->devq = ((void*)0);
 }

 mtx_destroy(&sc->io_lock);

 return (0);
}
