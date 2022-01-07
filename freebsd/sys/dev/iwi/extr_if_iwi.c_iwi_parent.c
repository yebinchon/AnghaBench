
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {scalar_t__ sc_running; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct iwi_softc* ic_softc; } ;


 int IWI_LOCK (struct iwi_softc*) ;
 int IWI_LOCK_DECL ;
 int IWI_UNLOCK (struct iwi_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int iwi_init_locked (struct iwi_softc*) ;
 int iwi_stop_locked (struct iwi_softc*) ;

__attribute__((used)) static void
iwi_parent(struct ieee80211com *ic)
{
 struct iwi_softc *sc = ic->ic_softc;
 int startall = 0;
 IWI_LOCK_DECL;

 IWI_LOCK(sc);
 if (ic->ic_nrunning > 0) {
  if (!sc->sc_running) {
   iwi_init_locked(sc);
   startall = 1;
  }
 } else if (sc->sc_running)
  iwi_stop_locked(sc);
 IWI_UNLOCK(sc);
 if (startall)
  ieee80211_start_all(ic);
}
