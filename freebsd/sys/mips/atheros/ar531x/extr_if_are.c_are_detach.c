
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct are_softc {int are_detach; int are_mtx; scalar_t__ are_res; int are_rid; scalar_t__ are_irq; scalar_t__ are_intrhand; scalar_t__ are_miibus; int are_link_task; struct ifnet* are_ifp; } ;
typedef int device_t ;


 int ARE_LOCK (struct are_softc*) ;
 int ARE_UNLOCK (struct are_softc*) ;
 int KASSERT (int ,char*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int are_dma_free (struct are_softc*) ;
 int are_stop (struct are_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int device_delete_child (int ,scalar_t__) ;
 struct are_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static int
are_detach(device_t dev)
{
 struct are_softc *sc = device_get_softc(dev);
 struct ifnet *ifp = sc->are_ifp;

 KASSERT(mtx_initialized(&sc->are_mtx), ("vr mutex not initialized"));


 if (device_is_attached(dev)) {
  ARE_LOCK(sc);
  sc->are_detach = 1;
  are_stop(sc);
  ARE_UNLOCK(sc);
  taskqueue_drain(taskqueue_swi, &sc->are_link_task);
  ether_ifdetach(ifp);
 }




 bus_generic_detach(dev);

 if (sc->are_intrhand)
  bus_teardown_intr(dev, sc->are_irq, sc->are_intrhand);
 if (sc->are_irq)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->are_irq);

 if (sc->are_res)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->are_rid,
      sc->are_res);

 if (ifp)
  if_free(ifp);

 are_dma_free(sc);

 mtx_destroy(&sc->are_mtx);

 return (0);

}
