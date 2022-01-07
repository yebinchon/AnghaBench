
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upgt_vap {int (* newstate ) (struct ieee80211vap*,int,int) ;} ;
struct upgt_softc {int sc_state; int sc_watchdog_ch; int sc_led_ch; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_curchan; struct upgt_softc* ic_softc; } ;
typedef enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;


 int IEEE80211_LOCK (struct ieee80211com*) ;





 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int UPGT_LED_OFF ;
 int UPGT_LED_ON ;
 int UPGT_LOCK (struct upgt_softc*) ;
 int UPGT_UNLOCK (struct upgt_softc*) ;
 struct upgt_vap* UPGT_VAP (struct ieee80211vap*) ;
 int callout_stop (int *) ;
 int stub1 (struct ieee80211vap*,int,int) ;
 int upgt_set_chan (struct upgt_softc*,int ) ;
 int upgt_set_led (struct upgt_softc*,int ) ;
 int upgt_set_macfilter (struct upgt_softc*,int) ;

__attribute__((used)) static int
upgt_newstate(struct ieee80211vap *vap, enum ieee80211_state nstate, int arg)
{
 struct upgt_vap *uvp = UPGT_VAP(vap);
 struct ieee80211com *ic = vap->iv_ic;
 struct upgt_softc *sc = ic->ic_softc;


 sc->sc_state = nstate;

 IEEE80211_UNLOCK(ic);
 UPGT_LOCK(sc);
 callout_stop(&sc->sc_led_ch);
 callout_stop(&sc->sc_watchdog_ch);

 switch (nstate) {
 case 130:

  (void)upgt_set_macfilter(sc, sc->sc_state);
  upgt_set_led(sc, UPGT_LED_OFF);
  break;
 case 128:
  upgt_set_chan(sc, ic->ic_curchan);
  break;
 case 131:
  upgt_set_chan(sc, ic->ic_curchan);
  break;
 case 132:
  break;
 case 129:
  upgt_set_macfilter(sc, sc->sc_state);
  upgt_set_led(sc, UPGT_LED_ON);
  break;
 default:
  break;
 }
 UPGT_UNLOCK(sc);
 IEEE80211_LOCK(ic);
 return (uvp->newstate(vap, nstate, arg));
}
