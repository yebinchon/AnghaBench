
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {scalar_t__ ic_nrunning; } ;
struct ath_softc {int sc_resume_up; int sc_ah; int sc_cal_ch; int sc_tq; struct ieee80211com sc_ic; } ;


 int ATH_LOCK (struct ath_softc*) ;
 int ATH_UNLOCK (struct ath_softc*) ;
 int ath_hal_enablepcie (int ,int,int) ;
 int ath_hal_intrset (int ,int ) ;
 int callout_stop (int *) ;
 int ieee80211_suspend_all (struct ieee80211com*) ;
 int taskqueue_block (int ) ;

void
ath_suspend(struct ath_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;

 sc->sc_resume_up = ic->ic_nrunning != 0;

 ieee80211_suspend_all(ic);
 ath_hal_intrset(sc->sc_ah, 0);
 taskqueue_block(sc->sc_tq);

 ATH_LOCK(sc);
 callout_stop(&sc->sc_cal_ch);
 ATH_UNLOCK(sc);






 ath_hal_enablepcie(sc->sc_ah, 1, 1);
}
