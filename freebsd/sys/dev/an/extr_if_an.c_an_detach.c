
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct an_softc {int an_gone; int an_mtx; int an_stat_ch; int irq_handle; int irq_res; int an_ifmedia; struct ifnet* an_ifp; } ;
typedef int device_t ;


 int AN_LOCK (struct an_softc*) ;
 int AN_UNLOCK (struct an_softc*) ;
 int IFF_DRV_RUNNING ;
 int an_release_resources (int ) ;
 int an_stop (struct an_softc*) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_drain (int *) ;
 struct an_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int ifmedia_removeall (int *) ;
 int mtx_destroy (int *) ;

int
an_detach(device_t dev)
{
 struct an_softc *sc = device_get_softc(dev);
 struct ifnet *ifp = sc->an_ifp;

 if (sc->an_gone) {
  device_printf(dev,"already unloaded\n");
  return(0);
 }
 AN_LOCK(sc);
 an_stop(sc);
 sc->an_gone = 1;
 ifmedia_removeall(&sc->an_ifmedia);
 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 AN_UNLOCK(sc);
 ether_ifdetach(ifp);
 bus_teardown_intr(dev, sc->irq_res, sc->irq_handle);
 callout_drain(&sc->an_stat_ch);
 if_free(ifp);
 an_release_resources(dev);
 mtx_destroy(&sc->an_mtx);
 return (0);
}
