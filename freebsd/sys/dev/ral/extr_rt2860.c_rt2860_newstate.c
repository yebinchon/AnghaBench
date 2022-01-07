
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt2860_vap {int (* ral_newstate ) (struct ieee80211vap*,int,int) ;} ;
struct rt2860_softc {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_state; scalar_t__ iv_opmode; struct ieee80211_node* iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {scalar_t__ ic_opmode; struct rt2860_softc* ic_softc; } ;
struct ieee80211_node {int ni_chan; int ni_bssid; int ni_rates; } ;
typedef enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;


 scalar_t__ IEEE80211_IS_CHAN_2GHZ (int ) ;
 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_IBSS ;
 scalar_t__ IEEE80211_M_MBSS ;
 scalar_t__ IEEE80211_M_MONITOR ;
 int IEEE80211_S_INIT ;
 scalar_t__ IEEE80211_S_RUN ;
 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT2860_BCN_TIME_CFG ;
 int RT2860_BCN_TX_EN ;
 int RT2860_LED_LINK_2GHZ ;
 int RT2860_LED_LINK_5GHZ ;
 int RT2860_LED_RADIO ;
 int RT2860_TBTT_TIMER_EN ;
 int RT2860_TSF_TIMER_EN ;
 struct rt2860_vap* RT2860_VAP (struct ieee80211vap*) ;
 int rt2860_enable_mrr (struct rt2860_softc*) ;
 int rt2860_enable_tsf_sync (struct rt2860_softc*) ;
 int rt2860_set_basicrates (struct rt2860_softc*,int *) ;
 int rt2860_set_bssid (struct rt2860_softc*,int ) ;
 int rt2860_set_gp_timer (struct rt2860_softc*,int) ;
 int rt2860_set_leds (struct rt2860_softc*,int) ;
 int rt2860_set_txpreamble (struct rt2860_softc*) ;
 int rt2860_setup_beacon (struct rt2860_softc*,struct ieee80211vap*) ;
 int stub1 (struct ieee80211vap*,int,int) ;

__attribute__((used)) static int
rt2860_newstate(struct ieee80211vap *vap, enum ieee80211_state nstate, int arg)
{
 struct rt2860_vap *rvp = RT2860_VAP(vap);
 struct ieee80211com *ic = vap->iv_ic;
 struct rt2860_softc *sc = ic->ic_softc;
 uint32_t tmp;
 int error;

 if (vap->iv_state == IEEE80211_S_RUN) {

  rt2860_set_leds(sc, RT2860_LED_RADIO);
 }

 if (nstate == IEEE80211_S_INIT && vap->iv_state == IEEE80211_S_RUN) {

  tmp = RAL_READ(sc, RT2860_BCN_TIME_CFG);
  RAL_WRITE(sc, RT2860_BCN_TIME_CFG,
      tmp & ~(RT2860_BCN_TX_EN | RT2860_TSF_TIMER_EN |
      RT2860_TBTT_TIMER_EN));
 }

 rt2860_set_gp_timer(sc, 0);

 error = rvp->ral_newstate(vap, nstate, arg);
 if (error != 0)
  return (error);

 if (nstate == IEEE80211_S_RUN) {
  struct ieee80211_node *ni = vap->iv_bss;

  if (ic->ic_opmode != IEEE80211_M_MONITOR) {
   rt2860_enable_mrr(sc);
   rt2860_set_txpreamble(sc);
   rt2860_set_basicrates(sc, &ni->ni_rates);
   rt2860_set_bssid(sc, ni->ni_bssid);
  }

  if (vap->iv_opmode == IEEE80211_M_HOSTAP ||
      vap->iv_opmode == IEEE80211_M_IBSS ||
      vap->iv_opmode == IEEE80211_M_MBSS) {
   error = rt2860_setup_beacon(sc, vap);
   if (error != 0)
    return error;
  }

  if (ic->ic_opmode != IEEE80211_M_MONITOR) {
   rt2860_enable_tsf_sync(sc);
   rt2860_set_gp_timer(sc, 500);
  }


  rt2860_set_leds(sc, RT2860_LED_RADIO |
      (IEEE80211_IS_CHAN_2GHZ(ni->ni_chan) ?
       RT2860_LED_LINK_2GHZ : RT2860_LED_LINK_5GHZ));
 }
 return error;
}
