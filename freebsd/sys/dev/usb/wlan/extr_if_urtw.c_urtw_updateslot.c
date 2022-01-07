
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urtw_softc {int sc_updateslot_task; } ;
struct ieee80211com {struct urtw_softc* ic_softc; } ;


 int ieee80211_runtask (struct ieee80211com*,int *) ;

__attribute__((used)) static void
urtw_updateslot(struct ieee80211com *ic)
{
 struct urtw_softc *sc = ic->ic_softc;

 ieee80211_runtask(ic, &sc->sc_updateslot_task);
}
