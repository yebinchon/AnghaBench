
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_softc {int sc_bssid; } ;
struct ieee80211com {struct ural_softc* ic_softc; } ;


 int RAL_LOCK (struct ural_softc*) ;
 int RAL_UNLOCK (struct ural_softc*) ;
 int ural_enable_tsf_sync (struct ural_softc*) ;
 int ural_set_bssid (struct ural_softc*,int ) ;

__attribute__((used)) static void
ural_scan_end(struct ieee80211com *ic)
{
 struct ural_softc *sc = ic->ic_softc;

 RAL_LOCK(sc);
 ural_enable_tsf_sync(sc);
 ural_set_bssid(sc, sc->sc_bssid);
 RAL_UNLOCK(sc);

}
