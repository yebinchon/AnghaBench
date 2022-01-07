
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_softc {int sc_bssid; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;


 int RUN_LOCK (struct run_softc*) ;
 int RUN_UNLOCK (struct run_softc*) ;
 int run_enable_tsf_sync (struct run_softc*) ;
 int run_set_bssid (struct run_softc*,int ) ;

__attribute__((used)) static void
run_scan_end(struct ieee80211com *ic)
{
 struct run_softc *sc = ic->ic_softc;

 RUN_LOCK(sc);

 run_enable_tsf_sync(sc);
 run_set_bssid(sc, sc->sc_bssid);

 RUN_UNLOCK(sc);

 return;
}
