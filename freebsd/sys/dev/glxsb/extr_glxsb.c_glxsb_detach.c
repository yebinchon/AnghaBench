
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glxsb_softc {int sc_task_mtx; int sc_tq; int sc_sr; int sc_rid; int sc_dma; int sc_cryptotask; int sc_rngco; int sc_cid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int callout_drain (int *) ;
 int crypto_unregister_all (int ) ;
 struct glxsb_softc* device_get_softc (int ) ;
 int glxsb_dma_free (struct glxsb_softc*,int *) ;
 int mtx_destroy (int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_free (int ) ;

__attribute__((used)) static int
glxsb_detach(device_t dev)
{
 struct glxsb_softc *sc = device_get_softc(dev);

 crypto_unregister_all(sc->sc_cid);

 callout_drain(&sc->sc_rngco);
 taskqueue_drain(sc->sc_tq, &sc->sc_cryptotask);
 bus_generic_detach(dev);
 glxsb_dma_free(sc, &sc->sc_dma);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_rid, sc->sc_sr);
 taskqueue_free(sc->sc_tq);
 mtx_destroy(&sc->sc_task_mtx);
 return (0);
}
