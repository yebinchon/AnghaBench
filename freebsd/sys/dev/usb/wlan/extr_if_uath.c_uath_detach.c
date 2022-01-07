
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct uath_softc {int sc_mtx; int sc_snd; int * sc_xfer; int sc_cmd; int watchdog_ch; int stat_ch; int sc_cmd_inactive; int sc_cmd_waiting; int sc_cmd_pending; int sc_cmd_active; int sc_tx_pending; int sc_tx_inactive; int sc_tx_active; int sc_rx_inactive; int sc_rx_active; int sc_flags; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int STAILQ_INIT (int *) ;
 int UATH_FLAG_INVALID ;
 int UATH_LOCK (struct uath_softc*) ;
 unsigned int UATH_N_XFERS ;
 int UATH_UNLOCK (struct uath_softc*) ;
 int callout_drain (int *) ;
 struct uath_softc* device_get_softc (int ) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mbufq_drain (int *) ;
 int mtx_destroy (int *) ;
 int uath_free_cmd_list (struct uath_softc*,int ) ;
 int uath_free_rx_data_list (struct uath_softc*) ;
 int uath_free_tx_data_list (struct uath_softc*) ;
 int uath_stop (struct uath_softc*) ;
 int usbd_transfer_drain (int ) ;
 int usbd_transfer_unsetup (int *,unsigned int) ;

__attribute__((used)) static int
uath_detach(device_t dev)
{
 struct uath_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;
 unsigned int x;





 UATH_LOCK(sc);
 sc->sc_flags |= UATH_FLAG_INVALID;

 STAILQ_INIT(&sc->sc_rx_active);
 STAILQ_INIT(&sc->sc_rx_inactive);

 STAILQ_INIT(&sc->sc_tx_active);
 STAILQ_INIT(&sc->sc_tx_inactive);
 STAILQ_INIT(&sc->sc_tx_pending);

 STAILQ_INIT(&sc->sc_cmd_active);
 STAILQ_INIT(&sc->sc_cmd_pending);
 STAILQ_INIT(&sc->sc_cmd_waiting);
 STAILQ_INIT(&sc->sc_cmd_inactive);

 uath_stop(sc);
 UATH_UNLOCK(sc);

 callout_drain(&sc->stat_ch);
 callout_drain(&sc->watchdog_ch);


 for (x = 0; x != UATH_N_XFERS; x++)
  usbd_transfer_drain(sc->sc_xfer[x]);


 UATH_LOCK(sc);
 uath_free_rx_data_list(sc);
 uath_free_tx_data_list(sc);
 uath_free_cmd_list(sc, sc->sc_cmd);
 UATH_UNLOCK(sc);


 usbd_transfer_unsetup(sc->sc_xfer, UATH_N_XFERS);

 ieee80211_ifdetach(ic);
 mbufq_drain(&sc->sc_snd);
 mtx_destroy(&sc->sc_mtx);
 return (0);
}
