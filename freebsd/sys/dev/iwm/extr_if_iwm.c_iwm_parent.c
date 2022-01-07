
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_flags; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct iwm_softc* ic_softc; } ;


 int IWM_FLAG_HW_INITED ;
 int IWM_LOCK (struct iwm_softc*) ;
 int IWM_UNLOCK (struct iwm_softc*) ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int iwm_init (struct iwm_softc*) ;
 int iwm_stop (struct iwm_softc*) ;

__attribute__((used)) static void
iwm_parent(struct ieee80211com *ic)
{
 struct iwm_softc *sc = ic->ic_softc;
 int startall = 0;

 IWM_LOCK(sc);
 if (ic->ic_nrunning > 0) {
  if (!(sc->sc_flags & IWM_FLAG_HW_INITED)) {
   iwm_init(sc);
   startall = 1;
  }
 } else if (sc->sc_flags & IWM_FLAG_HW_INITED)
  iwm_stop(sc);
 IWM_UNLOCK(sc);
 if (startall)
  ieee80211_start_all(ic);
}
