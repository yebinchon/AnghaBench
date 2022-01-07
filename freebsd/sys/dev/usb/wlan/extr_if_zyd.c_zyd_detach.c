
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {struct zyd_softc* ic_softc; } ;
struct zyd_softc {int sc_mtx; int * sc_xfer; int tx_free; int tx_q; int sc_flags; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int STAILQ_INIT (int *) ;
 int ZYD_FLAG_DETACHED ;
 int ZYD_LOCK (struct zyd_softc*) ;
 unsigned int ZYD_N_TRANSFER ;
 int ZYD_UNLOCK (struct zyd_softc*) ;
 struct zyd_softc* device_get_softc (int ) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mtx_destroy (int *) ;
 int usbd_transfer_drain (int ) ;
 int usbd_transfer_unsetup (int *,unsigned int) ;
 int zyd_drain_mbufq (struct zyd_softc*) ;
 int zyd_unsetup_tx_list (struct zyd_softc*) ;

__attribute__((used)) static int
zyd_detach(device_t dev)
{
 struct zyd_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;
 unsigned int x;





 ZYD_LOCK(sc);
 sc->sc_flags |= ZYD_FLAG_DETACHED;
 zyd_drain_mbufq(sc);
 STAILQ_INIT(&sc->tx_q);
 STAILQ_INIT(&sc->tx_free);
 ZYD_UNLOCK(sc);


 for (x = 0; x != ZYD_N_TRANSFER; x++)
  usbd_transfer_drain(sc->sc_xfer[x]);


 ZYD_LOCK(sc);
 zyd_unsetup_tx_list(sc);
 ZYD_UNLOCK(sc);


 usbd_transfer_unsetup(sc->sc_xfer, ZYD_N_TRANSFER);

 if (ic->ic_softc == sc)
  ieee80211_ifdetach(ic);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}
