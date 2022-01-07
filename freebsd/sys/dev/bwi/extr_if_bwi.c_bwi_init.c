
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct bwi_softc {int sc_flags; struct ieee80211com sc_ic; } ;


 int BWI_F_RUNNING ;
 int BWI_LOCK (struct bwi_softc*) ;
 int BWI_UNLOCK (struct bwi_softc*) ;
 int bwi_init_statechg (struct bwi_softc*,int) ;
 int ieee80211_start_all (struct ieee80211com*) ;

__attribute__((used)) static void
bwi_init(struct bwi_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;

 BWI_LOCK(sc);
 bwi_init_statechg(sc, 1);
 BWI_UNLOCK(sc);

 if (sc->sc_flags & BWI_F_RUNNING)
  ieee80211_start_all(ic);
}
