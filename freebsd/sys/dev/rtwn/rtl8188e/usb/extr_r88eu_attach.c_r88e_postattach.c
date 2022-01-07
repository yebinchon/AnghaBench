
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_scan_end; int ic_scan_start; } ;
struct rtwn_softc {struct ieee80211com sc_ic; struct r92c_softc* sc_priv; } ;
struct r92c_softc {int rs_scan_end; int rs_scan_start; } ;


 int r92c_scan_end ;
 int r92c_scan_start ;

__attribute__((used)) static void
r88e_postattach(struct rtwn_softc *sc)
{
 struct r92c_softc *rs = sc->sc_priv;
 struct ieee80211com *ic = &sc->sc_ic;

 rs->rs_scan_start = ic->ic_scan_start;
 ic->ic_scan_start = r92c_scan_start;
 rs->rs_scan_end = ic->ic_scan_end;
 ic->ic_scan_end = r92c_scan_end;
}
