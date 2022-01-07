
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {struct r92c_softc* sc_priv; } ;
struct r92c_softc {int (* rs_scan_end ) (struct ieee80211com*) ;} ;
struct ieee80211com {struct rtwn_softc* ic_softc; } ;


 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 int rtwn_r92c_set_gain (struct rtwn_softc*,int) ;
 int stub1 (struct ieee80211com*) ;

void
r92c_scan_end(struct ieee80211com *ic)
{
 struct rtwn_softc *sc = ic->ic_softc;
 struct r92c_softc *rs = sc->sc_priv;

 RTWN_LOCK(sc);

 rtwn_r92c_set_gain(sc, 0x32);
 RTWN_UNLOCK(sc);

 rs->rs_scan_end(ic);
}
