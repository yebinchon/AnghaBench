
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_capenable; } ;
struct arge_softc {int arge_detach; int arge_mtx; scalar_t__ arge_res; int arge_rid; scalar_t__ arge_intrhand; int arge_irq; scalar_t__ arge_miiproxy; scalar_t__ arge_miibus; int arge_link_task; struct ifnet* arge_ifp; } ;
typedef int device_t ;


 int ARGE_LOCK (struct arge_softc*) ;
 int ARGE_UNLOCK (struct arge_softc*) ;
 int IFCAP_POLLING ;
 int KASSERT (int ,char*) ;
 int SYS_RES_MEMORY ;
 int arge_dma_free (struct arge_softc*) ;
 int arge_stop (struct arge_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,int ,scalar_t__) ;
 int device_delete_child (int ,scalar_t__) ;
 struct arge_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ether_poll_deregister (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static int
arge_detach(device_t dev)
{
 struct arge_softc *sc = device_get_softc(dev);
 struct ifnet *ifp = sc->arge_ifp;

 KASSERT(mtx_initialized(&sc->arge_mtx),
     ("arge mutex not initialized"));


 if (device_is_attached(dev)) {
  ARGE_LOCK(sc);
  sc->arge_detach = 1;





  arge_stop(sc);
  ARGE_UNLOCK(sc);
  taskqueue_drain(taskqueue_swi, &sc->arge_link_task);
  ether_ifdetach(ifp);
 }

 if (sc->arge_miibus)
  device_delete_child(dev, sc->arge_miibus);

 if (sc->arge_miiproxy)
  device_delete_child(dev, sc->arge_miiproxy);

 bus_generic_detach(dev);

 if (sc->arge_intrhand)
  bus_teardown_intr(dev, sc->arge_irq, sc->arge_intrhand);

 if (sc->arge_res)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->arge_rid,
      sc->arge_res);

 if (ifp)
  if_free(ifp);

 arge_dma_free(sc);

 mtx_destroy(&sc->arge_mtx);

 return (0);

}
