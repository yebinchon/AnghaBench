
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ste_softc {int ste_mtx; scalar_t__ ste_res; int ste_res_id; int ste_res_type; scalar_t__ ste_irq; scalar_t__ ste_intrhand; scalar_t__ ste_miibus; int ste_callout; struct ifnet* ste_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef int device_t ;


 int IFCAP_POLLING ;
 int KASSERT (int ,char*) ;
 int STE_LOCK (struct ste_softc*) ;
 int STE_UNLOCK (struct ste_softc*) ;
 int SYS_RES_IRQ ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,scalar_t__) ;
 struct ste_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ether_poll_deregister (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int ste_dma_free (struct ste_softc*) ;
 int ste_stop (struct ste_softc*) ;

__attribute__((used)) static int
ste_detach(device_t dev)
{
 struct ste_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 KASSERT(mtx_initialized(&sc->ste_mtx), ("ste mutex not initialized"));
 ifp = sc->ste_ifp;







 if (device_is_attached(dev)) {
  ether_ifdetach(ifp);
  STE_LOCK(sc);
  ste_stop(sc);
  STE_UNLOCK(sc);
  callout_drain(&sc->ste_callout);
 }
 if (sc->ste_miibus)
  device_delete_child(dev, sc->ste_miibus);
 bus_generic_detach(dev);

 if (sc->ste_intrhand)
  bus_teardown_intr(dev, sc->ste_irq, sc->ste_intrhand);
 if (sc->ste_irq)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->ste_irq);
 if (sc->ste_res)
  bus_release_resource(dev, sc->ste_res_type, sc->ste_res_id,
      sc->ste_res);

 if (ifp)
  if_free(ifp);

 ste_dma_free(sc);
 mtx_destroy(&sc->ste_mtx);

 return (0);
}
