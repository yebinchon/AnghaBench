
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_vap {scalar_t__ id; } ;
struct rtwn_softc {scalar_t__ vaps_running; scalar_t__ monvaps_running; int sc_calib_to; int thermal_meter; int thcal_temp; int sc_flags; int sc_dev; int sc_pwrmode_init; } ;
struct ieee80211vap {int iv_opmode; int iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {scalar_t__ ic_bsschan; int ic_caps; } ;
struct ieee80211_node {scalar_t__ ni_chan; int ni_intval; int ni_bssid; } ;


 int EINVAL ;
 scalar_t__ IEEE80211_CHAN_ANYC ;
 int IEEE80211_C_PMGT ;



 int IEEE80211_NODE_AID (struct ieee80211_node*) ;
 int KASSERT (int ,char*) ;
 int R92C_BCN_INTERVAL (scalar_t__) ;
 int R92C_BCN_PSR_RPT ;
 scalar_t__ R92C_MAC_SPEC_SIFS ;
 int R92C_MSR_ADHOC ;
 int R92C_MSR_AP ;
 int R92C_MSR_INFRA ;
 scalar_t__ R92C_R2T_SIFS ;
 int R92C_RXFLTMAP2 ;
 scalar_t__ R92C_SIFS_CCK ;
 scalar_t__ R92C_SIFS_OFDM ;
 scalar_t__ R92C_SPEC_SIFS ;
 scalar_t__ R92C_T2T_SIFS ;
 scalar_t__ R92C_TXPAUSE ;
 int RTWN_ASSERT_LOCKED (struct rtwn_softc*) ;
 int RTWN_LED_LINK ;
 int RTWN_TEMP_MEASURED ;
 struct rtwn_vap* RTWN_VAP (struct ieee80211vap*) ;
 int callout_reset (int *,int,int ,struct rtwn_softc*) ;
 int device_printf (int ,char*,int) ;
 int hz ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 struct ieee80211_node* ieee80211_ref_node (int ) ;
 int rtwn_calc_basicrates (struct rtwn_softc*) ;
 int rtwn_calib_to ;
 int rtwn_pwrmode_init ;
 int rtwn_set_ack_preamble (struct rtwn_softc*) ;
 int rtwn_set_bssid (struct rtwn_softc*,int ,scalar_t__) ;
 int rtwn_set_led (struct rtwn_softc*,int ,int) ;
 int rtwn_set_mode (struct rtwn_softc*,int ,scalar_t__) ;
 int rtwn_setup_beacon (struct rtwn_softc*,struct ieee80211_node*) ;
 int rtwn_tsf_sync_enable (struct rtwn_softc*,struct ieee80211vap*) ;
 int rtwn_tx_fwpkt_check (struct rtwn_softc*,struct ieee80211vap*) ;
 int rtwn_write_1 (struct rtwn_softc*,scalar_t__,int) ;
 int rtwn_write_2 (struct rtwn_softc*,int ,int) ;

__attribute__((used)) static int
rtwn_run(struct rtwn_softc *sc, struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct rtwn_vap *uvp = RTWN_VAP(vap);
 struct ieee80211_node *ni;
 uint8_t mode;
 int error;

 RTWN_ASSERT_LOCKED(sc);

 error = 0;
 ni = ieee80211_ref_node(vap->iv_bss);

 if (ic->ic_bsschan == IEEE80211_CHAN_ANYC ||
     ni->ni_chan == IEEE80211_CHAN_ANYC) {
  error = EINVAL;
  goto fail;
 }

 switch (vap->iv_opmode) {
 case 128:
  mode = R92C_MSR_INFRA;
  break;
 case 129:
  mode = R92C_MSR_ADHOC;
  break;
 case 130:
  mode = R92C_MSR_AP;
  break;
 default:
  KASSERT(0, ("undefined opmode %d\n", vap->iv_opmode));
  error = EINVAL;
  goto fail;
 }


 rtwn_set_mode(sc, mode, uvp->id);



 rtwn_write_2(sc, R92C_BCN_PSR_RPT,
     0xc000 | IEEE80211_NODE_AID(ni));


 rtwn_set_bssid(sc, ni->ni_bssid, uvp->id);


 rtwn_write_2(sc, R92C_BCN_INTERVAL(uvp->id), ni->ni_intval);

 if (sc->vaps_running == sc->monvaps_running) {

  rtwn_write_2(sc, R92C_RXFLTMAP2, 0xffff);


  rtwn_write_1(sc, R92C_TXPAUSE, 0);
 }




 if ((ic->ic_caps & IEEE80211_C_PMGT) != 0 &&
     vap->iv_opmode == 128 && uvp->id == 0) {
  error = rtwn_tx_fwpkt_check(sc, vap);
  if (error != 0)
   goto fail;






  callout_reset(&sc->sc_pwrmode_init, 5*hz,
      rtwn_pwrmode_init, sc);
 }



 rtwn_tsf_sync_enable(sc, vap);

 if (vap->iv_opmode == 130 ||
     vap->iv_opmode == 129) {
  error = rtwn_setup_beacon(sc, ni);
  if (error != 0) {
   device_printf(sc->sc_dev,
       "unable to push beacon into the chip, "
       "error %d\n", error);
   goto fail;
  }
 }


 rtwn_set_ack_preamble(sc);


 rtwn_calc_basicrates(sc);
 if (sc->vaps_running == sc->monvaps_running) {

  sc->sc_flags &= ~RTWN_TEMP_MEASURED;
  sc->thcal_temp = sc->thermal_meter;


  callout_reset(&sc->sc_calib_to, 2*hz, rtwn_calib_to,
      sc);

  if (sc->vaps_running == 0) {

   rtwn_set_led(sc, RTWN_LED_LINK, 1);
  }
 }

fail:
 ieee80211_free_node(ni);

 return (error);
}
