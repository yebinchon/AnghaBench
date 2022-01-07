
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct age_softc {int age_flags; int age_mtx; int * age_res; int age_res_spec; int * age_irq; int age_irq_spec; int ** age_intrhand; struct ifnet* age_ifp; int * age_miibus; int * age_tq; int age_int_task; int age_link_task; int age_tick_ch; } ;
typedef int device_t ;


 int AGE_FLAG_DETACH ;
 int AGE_FLAG_MSI ;
 int AGE_FLAG_MSIX ;
 int AGE_LOCK (struct age_softc*) ;
 int AGE_MSIX_MESSAGES ;
 int AGE_MSI_MESSAGES ;
 int AGE_UNLOCK (struct age_softc*) ;
 int age_dma_free (struct age_softc*) ;
 int age_stop (struct age_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int *) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 struct age_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int pci_release_msi (int ) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;
 int * taskqueue_swi ;

__attribute__((used)) static int
age_detach(device_t dev)
{
 struct age_softc *sc;
 struct ifnet *ifp;
 int i, msic;

 sc = device_get_softc(dev);

 ifp = sc->age_ifp;
 if (device_is_attached(dev)) {
  AGE_LOCK(sc);
  sc->age_flags |= AGE_FLAG_DETACH;
  age_stop(sc);
  AGE_UNLOCK(sc);
  callout_drain(&sc->age_tick_ch);
  taskqueue_drain(sc->age_tq, &sc->age_int_task);
  taskqueue_drain(taskqueue_swi, &sc->age_link_task);
  ether_ifdetach(ifp);
 }

 if (sc->age_tq != ((void*)0)) {
  taskqueue_drain(sc->age_tq, &sc->age_int_task);
  taskqueue_free(sc->age_tq);
  sc->age_tq = ((void*)0);
 }

 if (sc->age_miibus != ((void*)0)) {
  device_delete_child(dev, sc->age_miibus);
  sc->age_miibus = ((void*)0);
 }
 bus_generic_detach(dev);
 age_dma_free(sc);

 if (ifp != ((void*)0)) {
  if_free(ifp);
  sc->age_ifp = ((void*)0);
 }

 if ((sc->age_flags & AGE_FLAG_MSIX) != 0)
  msic = AGE_MSIX_MESSAGES;
 else if ((sc->age_flags & AGE_FLAG_MSI) != 0)
  msic = AGE_MSI_MESSAGES;
 else
  msic = 1;
 for (i = 0; i < msic; i++) {
  if (sc->age_intrhand[i] != ((void*)0)) {
   bus_teardown_intr(dev, sc->age_irq[i],
       sc->age_intrhand[i]);
   sc->age_intrhand[i] = ((void*)0);
  }
 }

 bus_release_resources(dev, sc->age_irq_spec, sc->age_irq);
 if ((sc->age_flags & (AGE_FLAG_MSI | AGE_FLAG_MSIX)) != 0)
  pci_release_msi(dev);
 bus_release_resources(dev, sc->age_res_spec, sc->age_res);
 mtx_destroy(&sc->age_mtx);

 return (0);
}
