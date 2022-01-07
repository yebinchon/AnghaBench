
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct iwi_softc {scalar_t__ sc_running; struct ieee80211com sc_ic; } ;


 int IWI_LOCK (struct iwi_softc*) ;
 int IWI_LOCK_DECL ;
 int IWI_UNLOCK (struct iwi_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int iwi_init_locked (struct iwi_softc*) ;

__attribute__((used)) static void
iwi_init(void *priv)
{
 struct iwi_softc *sc = priv;
 struct ieee80211com *ic = &sc->sc_ic;
 IWI_LOCK_DECL;

 IWI_LOCK(sc);
 iwi_init_locked(sc);
 IWI_UNLOCK(sc);

 if (sc->sc_running)
  ieee80211_start_all(ic);
}
