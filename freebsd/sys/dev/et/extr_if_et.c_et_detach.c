
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_softc {int sc_flags; int sc_mtx; int * ifp; int * sc_mem_res; int * sc_irq_res; int * sc_irq_handle; int * sc_miibus; int sc_tick; } ;
typedef int device_t ;


 int ET_FLAG_MSI ;
 int ET_LOCK (struct et_softc*) ;
 int ET_UNLOCK (struct et_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 struct et_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int et_dma_free (struct et_softc*) ;
 int et_stop (struct et_softc*) ;
 int ether_ifdetach (int *) ;
 int if_free (int *) ;
 int mtx_destroy (int *) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
et_detach(device_t dev)
{
 struct et_softc *sc;

 sc = device_get_softc(dev);
 if (device_is_attached(dev)) {
  ether_ifdetach(sc->ifp);
  ET_LOCK(sc);
  et_stop(sc);
  ET_UNLOCK(sc);
  callout_drain(&sc->sc_tick);
 }

 if (sc->sc_miibus != ((void*)0))
  device_delete_child(dev, sc->sc_miibus);
 bus_generic_detach(dev);

 if (sc->sc_irq_handle != ((void*)0))
  bus_teardown_intr(dev, sc->sc_irq_res, sc->sc_irq_handle);
 if (sc->sc_irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ,
      rman_get_rid(sc->sc_irq_res), sc->sc_irq_res);
 if ((sc->sc_flags & ET_FLAG_MSI) != 0)
  pci_release_msi(dev);
 if (sc->sc_mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(sc->sc_mem_res), sc->sc_mem_res);

 if (sc->ifp != ((void*)0))
  if_free(sc->ifp);

 et_dma_free(sc);

 mtx_destroy(&sc->sc_mtx);

 return (0);
}
