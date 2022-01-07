
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_flags; int sc_es_task; } ;
struct ieee80211vap {scalar_t__ iv_state; } ;
struct ieee80211com {int ic_tq; struct iwm_softc* ic_softc; int ic_vaps; } ;


 scalar_t__ IEEE80211_S_RUN ;
 int IWM_FLAG_SCAN_RUNNING ;
 int IWM_LOCK (struct iwm_softc*) ;
 int IWM_UNLOCK (struct iwm_softc*) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int iwm_led_blink_stop (struct iwm_softc*) ;
 int iwm_mvm_led_enable (struct iwm_softc*) ;
 int iwm_mvm_scan_stop_wait (struct iwm_softc*) ;
 int taskqueue_cancel (int ,int *,int *) ;

__attribute__((used)) static void
iwm_scan_end(struct ieee80211com *ic)
{
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 struct iwm_softc *sc = ic->ic_softc;

 IWM_LOCK(sc);
 iwm_led_blink_stop(sc);
 if (vap->iv_state == IEEE80211_S_RUN)
  iwm_mvm_led_enable(sc);
 if (sc->sc_flags & IWM_FLAG_SCAN_RUNNING) {





  sc->sc_flags &= ~IWM_FLAG_SCAN_RUNNING;
  iwm_mvm_scan_stop_wait(sc);
 }
 IWM_UNLOCK(sc);






 taskqueue_cancel(ic->ic_tq, &sc->sc_es_task, ((void*)0));
}
