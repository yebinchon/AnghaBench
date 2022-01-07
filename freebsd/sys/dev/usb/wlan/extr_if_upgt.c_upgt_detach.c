
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct upgt_softc {int sc_mtx; int sc_snd; int * sc_xfer; int sc_watchdog_ch; int sc_led_ch; int sc_rx_inactive; int sc_rx_active; int sc_tx_pending; int sc_tx_inactive; int sc_tx_active; int sc_flags; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int STAILQ_INIT (int *) ;
 int UPGT_FLAG_DETACHED ;
 int UPGT_LOCK (struct upgt_softc*) ;
 unsigned int UPGT_N_XFERS ;
 int UPGT_UNLOCK (struct upgt_softc*) ;
 int callout_drain (int *) ;
 struct upgt_softc* device_get_softc (int ) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mbufq_drain (int *) ;
 int mtx_destroy (int *) ;
 int upgt_free_rx (struct upgt_softc*) ;
 int upgt_free_tx (struct upgt_softc*) ;
 int upgt_stop (struct upgt_softc*) ;
 int usbd_transfer_drain (int ) ;
 int usbd_transfer_unsetup (int *,unsigned int) ;

__attribute__((used)) static int
upgt_detach(device_t dev)
{
 struct upgt_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;
 unsigned int x;





 UPGT_LOCK(sc);
 sc->sc_flags |= UPGT_FLAG_DETACHED;

 STAILQ_INIT(&sc->sc_tx_active);
 STAILQ_INIT(&sc->sc_tx_inactive);
 STAILQ_INIT(&sc->sc_tx_pending);

 STAILQ_INIT(&sc->sc_rx_active);
 STAILQ_INIT(&sc->sc_rx_inactive);

 upgt_stop(sc);
 UPGT_UNLOCK(sc);

 callout_drain(&sc->sc_led_ch);
 callout_drain(&sc->sc_watchdog_ch);


 for (x = 0; x != UPGT_N_XFERS; x++)
  usbd_transfer_drain(sc->sc_xfer[x]);


 UPGT_LOCK(sc);
 upgt_free_rx(sc);
 upgt_free_tx(sc);
 UPGT_UNLOCK(sc);


 usbd_transfer_unsetup(sc->sc_xfer, UPGT_N_XFERS);

 ieee80211_ifdetach(ic);
 mbufq_drain(&sc->sc_snd);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}
