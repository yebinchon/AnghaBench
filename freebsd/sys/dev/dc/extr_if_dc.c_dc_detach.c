
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_capenable; } ;
struct dc_softc {int dc_mtx; struct dc_mediainfo* dc_srom; struct dc_mediainfo* dc_mi; struct dc_mediainfo* dc_pnic_rx_buf; scalar_t__ dc_res; scalar_t__ dc_irq; scalar_t__ dc_intrhand; scalar_t__ dc_miibus; int dc_wdog_ch; int dc_stat_ch; struct ifnet* dc_ifp; } ;
struct dc_mediainfo {struct dc_mediainfo* dc_next; } ;
typedef int device_t ;


 int DC_LOCK (struct dc_softc*) ;
 int DC_RES ;
 int DC_RID ;
 int DC_UNLOCK (struct dc_softc*) ;
 int IFCAP_POLLING ;
 int KASSERT (int ,char*) ;
 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int callout_drain (int *) ;
 int dc_dma_free (struct dc_softc*) ;
 int dc_stop (struct dc_softc*) ;
 int device_delete_child (int ,scalar_t__) ;
 struct dc_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ether_poll_deregister (struct ifnet*) ;
 int free (struct dc_mediainfo*,int ) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;

__attribute__((used)) static int
dc_detach(device_t dev)
{
 struct dc_softc *sc;
 struct ifnet *ifp;
 struct dc_mediainfo *m;

 sc = device_get_softc(dev);
 KASSERT(mtx_initialized(&sc->dc_mtx), ("dc mutex not initialized"));

 ifp = sc->dc_ifp;







 if (device_is_attached(dev)) {
  DC_LOCK(sc);
  dc_stop(sc);
  DC_UNLOCK(sc);
  callout_drain(&sc->dc_stat_ch);
  callout_drain(&sc->dc_wdog_ch);
  ether_ifdetach(ifp);
 }
 if (sc->dc_miibus)
  device_delete_child(dev, sc->dc_miibus);
 bus_generic_detach(dev);

 if (sc->dc_intrhand)
  bus_teardown_intr(dev, sc->dc_irq, sc->dc_intrhand);
 if (sc->dc_irq)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->dc_irq);
 if (sc->dc_res)
  bus_release_resource(dev, DC_RES, DC_RID, sc->dc_res);

 if (ifp != ((void*)0))
  if_free(ifp);

 dc_dma_free(sc);

 free(sc->dc_pnic_rx_buf, M_DEVBUF);

 while (sc->dc_mi != ((void*)0)) {
  m = sc->dc_mi->dc_next;
  free(sc->dc_mi, M_DEVBUF);
  sc->dc_mi = m;
 }
 free(sc->dc_srom, M_DEVBUF);

 mtx_destroy(&sc->dc_mtx);

 return (0);
}
