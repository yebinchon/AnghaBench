
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_flags; } ;
struct ieee80211com {struct rtwn_softc* ic_softc; } ;


 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_RUNNING ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 int rtwn_set_multi (struct rtwn_softc*) ;

__attribute__((used)) static void
rtwn_update_mcast(struct ieee80211com *ic)
{
 struct rtwn_softc *sc = ic->ic_softc;

 RTWN_LOCK(sc);
 if (sc->sc_flags & RTWN_RUNNING)
  rtwn_set_multi(sc);
 RTWN_UNLOCK(sc);
}
