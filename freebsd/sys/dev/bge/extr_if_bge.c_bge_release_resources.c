
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {int bge_mtx; int * bge_ifp; int * bge_res2; int * bge_res; int * bge_irq; int * bge_intrhand; int * bge_tq; int bge_dev; } ;
typedef int device_t ;


 int BGE_LOCK_DESTROY (struct bge_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bge_dma_free (struct bge_softc*) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int if_free (int *) ;
 scalar_t__ mtx_initialized (int *) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int *) ;
 int taskqueue_free (int *) ;

__attribute__((used)) static void
bge_release_resources(struct bge_softc *sc)
{
 device_t dev;

 dev = sc->bge_dev;

 if (sc->bge_tq != ((void*)0))
  taskqueue_free(sc->bge_tq);

 if (sc->bge_intrhand != ((void*)0))
  bus_teardown_intr(dev, sc->bge_irq, sc->bge_intrhand);

 if (sc->bge_irq != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IRQ,
      rman_get_rid(sc->bge_irq), sc->bge_irq);
  pci_release_msi(dev);
 }

 if (sc->bge_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(sc->bge_res), sc->bge_res);

 if (sc->bge_res2 != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(sc->bge_res2), sc->bge_res2);

 if (sc->bge_ifp != ((void*)0))
  if_free(sc->bge_ifp);

 bge_dma_free(sc);

 if (mtx_initialized(&sc->bge_mtx))
  BGE_LOCK_DESTROY(sc);
}
