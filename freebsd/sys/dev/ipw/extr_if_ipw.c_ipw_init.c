
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct ipw_softc {int flags; struct ieee80211com sc_ic; } ;


 int IPW_FLAG_RUNNING ;
 int IPW_LOCK (struct ipw_softc*) ;
 int IPW_UNLOCK (struct ipw_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int ipw_init_locked (struct ipw_softc*) ;

__attribute__((used)) static void
ipw_init(void *priv)
{
 struct ipw_softc *sc = priv;
 struct ieee80211com *ic = &sc->sc_ic;

 IPW_LOCK(sc);
 ipw_init_locked(sc);
 IPW_UNLOCK(sc);

 if (sc->flags & IPW_FLAG_RUNNING)
  ieee80211_start_all(ic);
}
