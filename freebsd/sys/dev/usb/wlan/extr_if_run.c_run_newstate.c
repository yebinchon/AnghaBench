
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct run_vap {int rvp_id; int (* newstate ) (struct ieee80211vap*,int,int) ;int * beacon_mbuf; } ;
struct run_softc {int ratectl_run; int runbmap; int ap_running; int adhoc_running; int sta_running; int ratectl_ch; int sc_bssid; int running; } ;
struct ieee80211vap {int iv_state; struct ieee80211_txparam* iv_txparms; int iv_bss; int iv_opmode; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_curchan; int ic_bsschan; int ic_opmode; struct run_softc* ic_softc; } ;
struct ieee80211_txparam {int ucastrate; } ;
struct ieee80211_node {int ni_bssid; } ;
typedef enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;


 int IEEE80211_ADDR_COPY (int ,int ) ;
 int IEEE80211_CHAN_ANYC ;
 int IEEE80211_FIXED_RATE_NONE ;
 int IEEE80211_IS_CHAN_2GHZ (int ) ;
 int IEEE80211_LOCK (struct ieee80211com*) ;



 int IEEE80211_M_MONITOR ;



 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int RT2860_LED_LINK_2GHZ ;
 int RT2860_LED_LINK_5GHZ ;
 int RT2860_LED_RADIO ;
 int RT2860_TX_STA_CNT0 ;
 int RUN_DEBUG_STATE ;
 int RUN_DPRINTF (struct run_softc*,int ,char*,...) ;
 int RUN_LOCK (struct run_softc*) ;
 int RUN_RATECTL_OFF ;
 int RUN_UNLOCK (struct run_softc*) ;
 struct run_vap* RUN_VAP (struct ieee80211vap*) ;
 int hz ;
 size_t ieee80211_chan2mode (int ) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 struct ieee80211_node* ieee80211_ref_node (int ) ;
 int * ieee80211_state_name ;
 int m_freem (int *) ;
 int run_disable_tsf (struct run_softc*) ;
 int run_enable_mrr (struct run_softc*) ;
 int run_enable_tsf (struct run_softc*) ;
 int run_enable_tsf_sync (struct run_softc*) ;
 int run_ratectl_to ;
 int run_read_region_1 (struct run_softc*,int ,int*,int) ;
 int run_set_basicrates (struct run_softc*) ;
 int run_set_bssid (struct run_softc*,int ) ;
 int run_set_leds (struct run_softc*,int) ;
 int run_set_txpreamble (struct run_softc*) ;
 int run_update_beacon_cb (struct ieee80211vap*) ;
 int run_updateslot (struct ieee80211com*) ;
 int stub1 (struct ieee80211vap*,int,int) ;
 int usb_callout_reset (int *,int ,int ,struct run_softc*) ;
 int usb_callout_stop (int *) ;

__attribute__((used)) static int
run_newstate(struct ieee80211vap *vap, enum ieee80211_state nstate, int arg)
{
 const struct ieee80211_txparam *tp;
 struct ieee80211com *ic = vap->iv_ic;
 struct run_softc *sc = ic->ic_softc;
 struct run_vap *rvp = RUN_VAP(vap);
 enum ieee80211_state ostate;
 uint32_t sta[3];
 uint8_t ratectl;
 uint8_t restart_ratectl = 0;
 uint8_t bid = 1 << rvp->rvp_id;

 ostate = vap->iv_state;
 RUN_DPRINTF(sc, RUN_DEBUG_STATE, "%s -> %s\n",
  ieee80211_state_name[ostate],
  ieee80211_state_name[nstate]);

 IEEE80211_UNLOCK(ic);
 RUN_LOCK(sc);

 ratectl = sc->ratectl_run;
 sc->ratectl_run = RUN_RATECTL_OFF;
 usb_callout_stop(&sc->ratectl_ch);

 if (ostate == 128) {

  run_set_leds(sc, RT2860_LED_RADIO);
 }

 switch (nstate) {
 case 129:
  restart_ratectl = 1;

  if (ostate != 128)
   break;

  ratectl &= ~bid;
  sc->runbmap &= ~bid;


  if (--sc->running == 0)
   run_disable_tsf(sc);
  break;

 case 128:
  if (!(sc->runbmap & bid)) {
   if(sc->running++)
    restart_ratectl = 1;
   sc->runbmap |= bid;
  }

  m_freem(rvp->beacon_mbuf);
  rvp->beacon_mbuf = ((void*)0);

  switch (vap->iv_opmode) {
  case 133:
  case 131:
   sc->ap_running |= bid;
   ic->ic_opmode = vap->iv_opmode;
   run_update_beacon_cb(vap);
   break;
  case 132:
   sc->adhoc_running |= bid;
   if (!sc->ap_running)
    ic->ic_opmode = vap->iv_opmode;
   run_update_beacon_cb(vap);
   break;
  case 130:
   sc->sta_running |= bid;
   if (!sc->ap_running && !sc->adhoc_running)
    ic->ic_opmode = vap->iv_opmode;


   run_read_region_1(sc, RT2860_TX_STA_CNT0,
       (uint8_t *)sta, sizeof sta);

   break;
  default:
   ic->ic_opmode = vap->iv_opmode;
   break;
  }

  if (vap->iv_opmode != IEEE80211_M_MONITOR) {
   struct ieee80211_node *ni;

   if (ic->ic_bsschan == IEEE80211_CHAN_ANYC) {
    RUN_UNLOCK(sc);
    IEEE80211_LOCK(ic);
    return (-1);
   }
   run_updateslot(ic);
   run_enable_mrr(sc);
   run_set_txpreamble(sc);
   run_set_basicrates(sc);
   ni = ieee80211_ref_node(vap->iv_bss);
   IEEE80211_ADDR_COPY(sc->sc_bssid, ni->ni_bssid);
   run_set_bssid(sc, sc->sc_bssid);
   ieee80211_free_node(ni);
   run_enable_tsf_sync(sc);


   tp = &vap->iv_txparms[ieee80211_chan2mode(ic->ic_curchan)];
   if (tp->ucastrate == IEEE80211_FIXED_RATE_NONE)
    ratectl |= bid;
  } else
   run_enable_tsf(sc);


  run_set_leds(sc, RT2860_LED_RADIO |
      (IEEE80211_IS_CHAN_2GHZ(ic->ic_curchan) ?
       RT2860_LED_LINK_2GHZ : RT2860_LED_LINK_5GHZ));

  break;
 default:
  RUN_DPRINTF(sc, RUN_DEBUG_STATE, "undefined state\n");
  break;
 }


 if ((sc->ratectl_run = ratectl) && restart_ratectl)
  usb_callout_reset(&sc->ratectl_ch, hz, run_ratectl_to, sc);

 RUN_UNLOCK(sc);
 IEEE80211_LOCK(ic);

 return(rvp->newstate(vap, nstate, arg));
}
