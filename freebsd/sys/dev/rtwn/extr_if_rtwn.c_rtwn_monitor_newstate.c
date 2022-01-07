
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_vap {int (* newstate ) (struct ieee80211vap*,int,int) ;} ;
struct rtwn_softc {int vaps_running; int monvaps_running; } ;
struct ieee80211vap {size_t iv_state; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct rtwn_softc* ic_softc; } ;
typedef enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;


 int IEEE80211_LOCK (struct ieee80211com*) ;


 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int RTWN_DEBUG_STATE ;
 int RTWN_DPRINTF (struct rtwn_softc*,int ,char*,int ,int ) ;
 int RTWN_LED_LINK ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 struct rtwn_vap* RTWN_VAP (struct ieee80211vap*) ;
 int * ieee80211_state_name ;
 int rtwn_set_led (struct rtwn_softc*,int ,int) ;
 int stub1 (struct ieee80211vap*,int,int) ;

__attribute__((used)) static int
rtwn_monitor_newstate(struct ieee80211vap *vap, enum ieee80211_state nstate,
    int arg)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct rtwn_softc *sc = ic->ic_softc;
 struct rtwn_vap *uvp = RTWN_VAP(vap);

 RTWN_DPRINTF(sc, RTWN_DEBUG_STATE, "%s -> %s\n",
     ieee80211_state_name[vap->iv_state],
     ieee80211_state_name[nstate]);

 if (vap->iv_state != nstate) {
  IEEE80211_UNLOCK(ic);
  RTWN_LOCK(sc);

  switch (nstate) {
  case 129:
   sc->vaps_running--;
   sc->monvaps_running--;

   if (sc->vaps_running == 0) {

    rtwn_set_led(sc, RTWN_LED_LINK, 0);
   }
   break;
  case 128:
   sc->vaps_running++;
   sc->monvaps_running++;

   if (sc->vaps_running == 1) {

    rtwn_set_led(sc, RTWN_LED_LINK, 1);
   }
   break;
  default:

   break;
  }

  RTWN_UNLOCK(sc);
  IEEE80211_LOCK(ic);
 }

 return (uvp->newstate(vap, nstate, arg));
}
