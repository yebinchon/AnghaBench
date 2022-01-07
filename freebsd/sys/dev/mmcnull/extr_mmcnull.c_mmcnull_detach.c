
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmcnull_softc {int sc_mtx; int tick; int * devq; int * sim; } ;
typedef int device_t ;


 int EINVAL ;
 int FALSE ;
 int callout_drain (int *) ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 int cam_simq_free (int *) ;
 struct mmcnull_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_bus_deregister (int ) ;

__attribute__((used)) static int
mmcnull_detach(device_t dev)
{
 struct mmcnull_softc *sc;

 sc = device_get_softc(dev);

 if (sc == ((void*)0))
  return (EINVAL);

 if (sc->sim != ((void*)0)) {
  mtx_lock(&sc->sc_mtx);
  xpt_bus_deregister(cam_sim_path(sc->sim));
  cam_sim_free(sc->sim, FALSE);
  mtx_unlock(&sc->sc_mtx);
 }

 if (sc->devq != ((void*)0))
  cam_simq_free(sc->devq);

 callout_drain(&sc->tick);
 mtx_destroy(&sc->sc_mtx);

 device_printf(dev, "detached OK\n");
 return (0);
}
