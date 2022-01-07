
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {scalar_t__ bcn_vaps; } ;
struct ieee80211com {struct rtwn_softc* ic_softc; } ;


 int R92C_TXPAUSE ;
 int R92C_TX_QUEUE_BCN ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 int rtwn_set_rx_bssid_all (struct rtwn_softc*,int) ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;

__attribute__((used)) static void
rtwn_scan_start(struct ieee80211com *ic)
{
 struct rtwn_softc *sc = ic->ic_softc;

 RTWN_LOCK(sc);

 rtwn_setbits_1(sc, R92C_TXPAUSE, 0, R92C_TX_QUEUE_BCN);

 if (sc->bcn_vaps == 0)
  rtwn_set_rx_bssid_all(sc, 1);
 RTWN_UNLOCK(sc);
}
