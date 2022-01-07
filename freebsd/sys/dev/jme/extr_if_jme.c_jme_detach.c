
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_softc {int jme_flags; int jme_mtx; int ** jme_res; int jme_res_spec; int ** jme_irq; int jme_irq_spec; int ** jme_intrhand; struct ifnet* jme_ifp; int * jme_miibus; int * jme_tq; int jme_int_task; int jme_eaddr; int jme_link_task; int jme_tick_ch; } ;
struct ifnet {int dummy; } ;
typedef int device_t ;


 int JME_FLAG_DETACH ;
 int JME_FLAG_EFUSE ;
 int JME_FLAG_MSI ;
 int JME_FLAG_MSIX ;
 int JME_LOCK (struct jme_softc*) ;
 int JME_UNLOCK (struct jme_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int **) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 struct jme_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int jme_dma_free (struct jme_softc*) ;
 int jme_set_macaddr (struct jme_softc*,int ) ;
 int jme_stop (struct jme_softc*) ;
 int mtx_destroy (int *) ;
 int pci_release_msi (int ) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;
 int * taskqueue_swi ;

__attribute__((used)) static int
jme_detach(device_t dev)
{
 struct jme_softc *sc;
 struct ifnet *ifp;
 int i;

 sc = device_get_softc(dev);

 ifp = sc->jme_ifp;
 if (device_is_attached(dev)) {
  JME_LOCK(sc);
  sc->jme_flags |= JME_FLAG_DETACH;
  jme_stop(sc);
  JME_UNLOCK(sc);
  callout_drain(&sc->jme_tick_ch);
  taskqueue_drain(sc->jme_tq, &sc->jme_int_task);
  taskqueue_drain(taskqueue_swi, &sc->jme_link_task);

  if ((sc->jme_flags & JME_FLAG_EFUSE) != 0)
   jme_set_macaddr(sc, sc->jme_eaddr);
  ether_ifdetach(ifp);
 }

 if (sc->jme_tq != ((void*)0)) {
  taskqueue_drain(sc->jme_tq, &sc->jme_int_task);
  taskqueue_free(sc->jme_tq);
  sc->jme_tq = ((void*)0);
 }

 if (sc->jme_miibus != ((void*)0)) {
  device_delete_child(dev, sc->jme_miibus);
  sc->jme_miibus = ((void*)0);
 }
 bus_generic_detach(dev);
 jme_dma_free(sc);

 if (ifp != ((void*)0)) {
  if_free(ifp);
  sc->jme_ifp = ((void*)0);
 }

 for (i = 0; i < 1; i++) {
  if (sc->jme_intrhand[i] != ((void*)0)) {
   bus_teardown_intr(dev, sc->jme_irq[i],
       sc->jme_intrhand[i]);
   sc->jme_intrhand[i] = ((void*)0);
  }
 }

 if (sc->jme_irq[0] != ((void*)0))
  bus_release_resources(dev, sc->jme_irq_spec, sc->jme_irq);
 if ((sc->jme_flags & (JME_FLAG_MSIX | JME_FLAG_MSI)) != 0)
  pci_release_msi(dev);
 if (sc->jme_res[0] != ((void*)0))
  bus_release_resources(dev, sc->jme_res_spec, sc->jme_res);
 mtx_destroy(&sc->jme_mtx);

 return (0);
}
