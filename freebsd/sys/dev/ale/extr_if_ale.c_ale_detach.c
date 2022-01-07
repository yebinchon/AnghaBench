
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct ale_softc {int ale_flags; int ale_mtx; int * ale_res; int ale_res_spec; int * ale_irq; int ale_irq_spec; int ** ale_intrhand; struct ifnet* ale_ifp; int * ale_miibus; int * ale_tq; int ale_int_task; int ale_tick_ch; } ;
typedef int device_t ;


 int ALE_FLAG_MSI ;
 int ALE_FLAG_MSIX ;
 int ALE_LOCK (struct ale_softc*) ;
 int ALE_MSIX_MESSAGES ;
 int ALE_MSI_MESSAGES ;
 int ALE_UNLOCK (struct ale_softc*) ;
 int ale_dma_free (struct ale_softc*) ;
 int ale_stop (struct ale_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int *) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 struct ale_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int pci_release_msi (int ) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

__attribute__((used)) static int
ale_detach(device_t dev)
{
 struct ale_softc *sc;
 struct ifnet *ifp;
 int i, msic;

 sc = device_get_softc(dev);

 ifp = sc->ale_ifp;
 if (device_is_attached(dev)) {
  ether_ifdetach(ifp);
  ALE_LOCK(sc);
  ale_stop(sc);
  ALE_UNLOCK(sc);
  callout_drain(&sc->ale_tick_ch);
  taskqueue_drain(sc->ale_tq, &sc->ale_int_task);
 }

 if (sc->ale_tq != ((void*)0)) {
  taskqueue_drain(sc->ale_tq, &sc->ale_int_task);
  taskqueue_free(sc->ale_tq);
  sc->ale_tq = ((void*)0);
 }

 if (sc->ale_miibus != ((void*)0)) {
  device_delete_child(dev, sc->ale_miibus);
  sc->ale_miibus = ((void*)0);
 }
 bus_generic_detach(dev);
 ale_dma_free(sc);

 if (ifp != ((void*)0)) {
  if_free(ifp);
  sc->ale_ifp = ((void*)0);
 }

 if ((sc->ale_flags & ALE_FLAG_MSIX) != 0)
  msic = ALE_MSIX_MESSAGES;
 else if ((sc->ale_flags & ALE_FLAG_MSI) != 0)
  msic = ALE_MSI_MESSAGES;
 else
  msic = 1;
 for (i = 0; i < msic; i++) {
  if (sc->ale_intrhand[i] != ((void*)0)) {
   bus_teardown_intr(dev, sc->ale_irq[i],
       sc->ale_intrhand[i]);
   sc->ale_intrhand[i] = ((void*)0);
  }
 }

 bus_release_resources(dev, sc->ale_irq_spec, sc->ale_irq);
 if ((sc->ale_flags & (ALE_FLAG_MSI | ALE_FLAG_MSIX)) != 0)
  pci_release_msi(dev);
 bus_release_resources(dev, sc->ale_res_spec, sc->ale_res);
 mtx_destroy(&sc->ale_mtx);

 return (0);
}
