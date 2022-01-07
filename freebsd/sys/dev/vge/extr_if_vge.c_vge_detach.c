
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vge_softc {int vge_flags; int vge_mtx; scalar_t__ vge_res; scalar_t__ vge_irq; scalar_t__ vge_intrhand; scalar_t__ vge_miibus; int vge_watchdog; struct ifnet* vge_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef int device_t ;


 int IFCAP_POLLING ;
 int KASSERT (int ,char*) ;
 int PCIR_BAR (int) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int VGE_FLAG_MSI ;
 int VGE_LOCK (struct vge_softc*) ;
 int VGE_UNLOCK (struct vge_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,scalar_t__) ;
 struct vge_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ether_poll_deregister (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int pci_release_msi (int ) ;
 int vge_dma_free (struct vge_softc*) ;
 int vge_stop (struct vge_softc*) ;

__attribute__((used)) static int
vge_detach(device_t dev)
{
 struct vge_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 KASSERT(mtx_initialized(&sc->vge_mtx), ("vge mutex not initialized"));
 ifp = sc->vge_ifp;







 if (device_is_attached(dev)) {
  ether_ifdetach(ifp);
  VGE_LOCK(sc);
  vge_stop(sc);
  VGE_UNLOCK(sc);
  callout_drain(&sc->vge_watchdog);
 }
 if (sc->vge_miibus)
  device_delete_child(dev, sc->vge_miibus);
 bus_generic_detach(dev);

 if (sc->vge_intrhand)
  bus_teardown_intr(dev, sc->vge_irq, sc->vge_intrhand);
 if (sc->vge_irq)
  bus_release_resource(dev, SYS_RES_IRQ,
      sc->vge_flags & VGE_FLAG_MSI ? 1 : 0, sc->vge_irq);
 if (sc->vge_flags & VGE_FLAG_MSI)
  pci_release_msi(dev);
 if (sc->vge_res)
  bus_release_resource(dev, SYS_RES_MEMORY,
      PCIR_BAR(1), sc->vge_res);
 if (ifp)
  if_free(ifp);

 vge_dma_free(sc);
 mtx_destroy(&sc->vge_mtx);

 return (0);
}
