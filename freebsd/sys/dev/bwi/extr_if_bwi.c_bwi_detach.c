
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct bwi_softc {int sc_nmac; int sc_snd; int sc_tq; int * sc_mac; int sc_watchdog_timer; int sc_calib_ch; int sc_led_blink_ch; struct ieee80211com sc_ic; } ;


 int BWI_LOCK_DESTROY (struct bwi_softc*) ;
 int bwi_dma_free (struct bwi_softc*) ;
 int bwi_mac_detach (int *) ;
 int bwi_stop (struct bwi_softc*,int) ;
 int callout_drain (int *) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mbufq_drain (int *) ;
 int taskqueue_free (int ) ;

int
bwi_detach(struct bwi_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 int i;

 bwi_stop(sc, 1);
 callout_drain(&sc->sc_led_blink_ch);
 callout_drain(&sc->sc_calib_ch);
 callout_drain(&sc->sc_watchdog_timer);
 ieee80211_ifdetach(ic);

 for (i = 0; i < sc->sc_nmac; ++i)
  bwi_mac_detach(&sc->sc_mac[i]);
 bwi_dma_free(sc);
 taskqueue_free(sc->sc_tq);
 mbufq_drain(&sc->sc_snd);

 BWI_LOCK_DESTROY(sc);

 return (0);
}
