
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct urtw_softc {int sc_flags; int sc_mtx; int sc_snd; int * sc_xfer; int sc_rx_inactive; int sc_rx_active; int sc_tx_pending; int sc_tx_inactive; int sc_tx_active; int sc_watchdog_ch; int sc_led_ch; int sc_led_task; int sc_updateslot_task; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int STAILQ_INIT (int *) ;
 unsigned int URTW_8187B_N_XFERS ;
 unsigned int URTW_8187L_N_XFERS ;
 int URTW_DETACHED ;
 int URTW_LOCK (struct urtw_softc*) ;
 int URTW_RTL8187B ;
 int URTW_UNLOCK (struct urtw_softc*) ;
 int callout_drain (int *) ;
 struct urtw_softc* device_get_softc (int ) ;
 int ieee80211_draintask (struct ieee80211com*,int *) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mbufq_drain (int *) ;
 int mtx_destroy (int *) ;
 int urtw_free_rx_data_list (struct urtw_softc*) ;
 int urtw_free_tx_data_list (struct urtw_softc*) ;
 int urtw_stop (struct urtw_softc*) ;
 int usb_callout_drain (int *) ;
 int usbd_transfer_drain (int ) ;
 int usbd_transfer_unsetup (int *,unsigned int) ;

__attribute__((used)) static int
urtw_detach(device_t dev)
{
 struct urtw_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;
 unsigned int x;
 unsigned int n_xfers;


 URTW_LOCK(sc);
 sc->sc_flags |= URTW_DETACHED;
 urtw_stop(sc);
 URTW_UNLOCK(sc);

 ieee80211_draintask(ic, &sc->sc_updateslot_task);
 ieee80211_draintask(ic, &sc->sc_led_task);

 usb_callout_drain(&sc->sc_led_ch);
 callout_drain(&sc->sc_watchdog_ch);

 n_xfers = (sc->sc_flags & URTW_RTL8187B) ?
     URTW_8187B_N_XFERS : URTW_8187L_N_XFERS;


 URTW_LOCK(sc);
 STAILQ_INIT(&sc->sc_tx_active);
 STAILQ_INIT(&sc->sc_tx_inactive);
 STAILQ_INIT(&sc->sc_tx_pending);

 STAILQ_INIT(&sc->sc_rx_active);
 STAILQ_INIT(&sc->sc_rx_inactive);
 URTW_UNLOCK(sc);


 for (x = 0; x != n_xfers; x++)
  usbd_transfer_drain(sc->sc_xfer[x]);


 URTW_LOCK(sc);
 urtw_free_tx_data_list(sc);
 urtw_free_rx_data_list(sc);
 URTW_UNLOCK(sc);


 usbd_transfer_unsetup(sc->sc_xfer, n_xfers);

 ieee80211_ifdetach(ic);
 mbufq_drain(&sc->sc_snd);
 mtx_destroy(&sc->sc_mtx);
 return (0);
}
