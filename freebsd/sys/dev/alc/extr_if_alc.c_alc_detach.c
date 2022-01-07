
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct alc_softc {int alc_flags; int alc_mtx; int ** alc_res; int alc_res_spec; int ** alc_irq; int alc_irq_spec; int ** alc_intrhand; struct ifnet* alc_ifp; int * alc_miibus; int * alc_tq; int alc_int_task; int alc_tick_ch; } ;
typedef int device_t ;


 int ALC_FLAG_MSI ;
 int ALC_FLAG_MSIX ;
 int ALC_LOCK (struct alc_softc*) ;
 int ALC_MSIX_MESSAGES ;
 int ALC_MSI_MESSAGES ;
 int ALC_UNLOCK (struct alc_softc*) ;
 int alc_dma_free (struct alc_softc*) ;
 int alc_phy_down (struct alc_softc*) ;
 int alc_stop (struct alc_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int **) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 struct alc_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int pci_release_msi (int ) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

__attribute__((used)) static int
alc_detach(device_t dev)
{
 struct alc_softc *sc;
 struct ifnet *ifp;
 int i, msic;

 sc = device_get_softc(dev);

 ifp = sc->alc_ifp;
 if (device_is_attached(dev)) {
  ether_ifdetach(ifp);
  ALC_LOCK(sc);
  alc_stop(sc);
  ALC_UNLOCK(sc);
  callout_drain(&sc->alc_tick_ch);
  taskqueue_drain(sc->alc_tq, &sc->alc_int_task);
 }

 if (sc->alc_tq != ((void*)0)) {
  taskqueue_drain(sc->alc_tq, &sc->alc_int_task);
  taskqueue_free(sc->alc_tq);
  sc->alc_tq = ((void*)0);
 }

 if (sc->alc_miibus != ((void*)0)) {
  device_delete_child(dev, sc->alc_miibus);
  sc->alc_miibus = ((void*)0);
 }
 bus_generic_detach(dev);
 alc_dma_free(sc);

 if (ifp != ((void*)0)) {
  if_free(ifp);
  sc->alc_ifp = ((void*)0);
 }

 if ((sc->alc_flags & ALC_FLAG_MSIX) != 0)
  msic = ALC_MSIX_MESSAGES;
 else if ((sc->alc_flags & ALC_FLAG_MSI) != 0)
  msic = ALC_MSI_MESSAGES;
 else
  msic = 1;
 for (i = 0; i < msic; i++) {
  if (sc->alc_intrhand[i] != ((void*)0)) {
   bus_teardown_intr(dev, sc->alc_irq[i],
       sc->alc_intrhand[i]);
   sc->alc_intrhand[i] = ((void*)0);
  }
 }
 if (sc->alc_res[0] != ((void*)0))
  alc_phy_down(sc);
 bus_release_resources(dev, sc->alc_irq_spec, sc->alc_irq);
 if ((sc->alc_flags & (ALC_FLAG_MSI | ALC_FLAG_MSIX)) != 0)
  pci_release_msi(dev);
 bus_release_resources(dev, sc->alc_res_spec, sc->alc_res);
 mtx_destroy(&sc->alc_mtx);

 return (0);
}
