
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vte_softc {int vte_mtx; struct ifnet* vte_ifp; int * vte_res; int vte_res_id; int vte_res_type; int * vte_irq; int * vte_intrhand; int * vte_miibus; int vte_tick_ch; } ;
struct ifnet {int dummy; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int VTE_LOCK (struct vte_softc*) ;
 int VTE_UNLOCK (struct vte_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 struct vte_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int vte_dma_free (struct vte_softc*) ;
 int vte_stop (struct vte_softc*) ;

__attribute__((used)) static int
vte_detach(device_t dev)
{
 struct vte_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);

 ifp = sc->vte_ifp;
 if (device_is_attached(dev)) {
  VTE_LOCK(sc);
  vte_stop(sc);
  VTE_UNLOCK(sc);
  callout_drain(&sc->vte_tick_ch);
  ether_ifdetach(ifp);
 }

 if (sc->vte_miibus != ((void*)0)) {
  device_delete_child(dev, sc->vte_miibus);
  sc->vte_miibus = ((void*)0);
 }
 bus_generic_detach(dev);

 if (sc->vte_intrhand != ((void*)0)) {
  bus_teardown_intr(dev, sc->vte_irq, sc->vte_intrhand);
  sc->vte_intrhand = ((void*)0);
 }
 if (sc->vte_irq != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->vte_irq);
  sc->vte_irq = ((void*)0);
 }
 if (sc->vte_res != ((void*)0)) {
  bus_release_resource(dev, sc->vte_res_type, sc->vte_res_id,
      sc->vte_res);
  sc->vte_res = ((void*)0);
 }
 if (ifp != ((void*)0)) {
  if_free(ifp);
  sc->vte_ifp = ((void*)0);
 }
 vte_dma_free(sc);
 mtx_destroy(&sc->vte_mtx);

 return (0);
}
