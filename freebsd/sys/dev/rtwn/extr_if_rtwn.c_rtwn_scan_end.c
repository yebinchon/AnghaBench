
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {scalar_t__ bcn_vaps; scalar_t__ vaps_running; } ;
struct ieee80211com {scalar_t__ ic_promisc; struct rtwn_softc* ic_softc; } ;


 int R92C_TXPAUSE ;
 int R92C_TX_QUEUE_BCN ;
 int RTWN_LED_LINK ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 int rtwn_calc_basicrates (struct rtwn_softc*) ;
 int rtwn_set_led (struct rtwn_softc*,int ,int) ;
 int rtwn_set_rx_bssid_all (struct rtwn_softc*,int ) ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;

__attribute__((used)) static void
rtwn_scan_end(struct ieee80211com *ic)
{
 struct rtwn_softc *sc = ic->ic_softc;

 RTWN_LOCK(sc);

 if (ic->ic_promisc == 0 && sc->bcn_vaps == 0)
  rtwn_set_rx_bssid_all(sc, 0);


 rtwn_set_led(sc, RTWN_LED_LINK, (sc->vaps_running != 0));


 rtwn_calc_basicrates(sc);


 rtwn_setbits_1(sc, R92C_TXPAUSE, R92C_TX_QUEUE_BCN, 0);
 RTWN_UNLOCK(sc);
}
