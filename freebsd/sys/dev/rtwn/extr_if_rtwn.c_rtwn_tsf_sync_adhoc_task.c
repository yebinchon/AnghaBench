
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtwn_vap {int tsf_sync_adhoc; int id; } ;
struct rtwn_softc {int sc_flags; } ;
struct ieee80211vap {int iv_bss; TYPE_1__* iv_ic; } ;
struct ieee80211_node {int ni_intval; } ;
struct TYPE_2__ {struct rtwn_softc* ic_softc; } ;


 int R92C_BCN_CTRL (int ) ;
 int R92C_BCN_CTRL_DIS_TSF_UDT0 ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_RCR_LOCKED ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 struct rtwn_vap* RTWN_VAP (struct ieee80211vap*) ;
 int callout_reset (int *,int,int ,struct ieee80211vap*) ;
 int hz ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 struct ieee80211_node* ieee80211_ref_node (int ) ;
 int rtwn_delay (struct rtwn_softc*,int) ;
 int rtwn_set_rx_bssid_all (struct rtwn_softc*,int) ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;
 int rtwn_tsf_sync_adhoc ;

__attribute__((used)) static void
rtwn_tsf_sync_adhoc_task(void *arg, int pending)
{
 struct ieee80211vap *vap = arg;
 struct rtwn_vap *uvp = RTWN_VAP(vap);
 struct rtwn_softc *sc = vap->iv_ic->ic_softc;
 struct ieee80211_node *ni;

 RTWN_LOCK(sc);
 ni = ieee80211_ref_node(vap->iv_bss);


 rtwn_set_rx_bssid_all(sc, 0);


 sc->sc_flags |= RTWN_RCR_LOCKED;


 rtwn_setbits_1(sc, R92C_BCN_CTRL(uvp->id),
     R92C_BCN_CTRL_DIS_TSF_UDT0, 0);


 rtwn_delay(sc, ni->ni_intval * 5 * 1000);


 rtwn_setbits_1(sc, R92C_BCN_CTRL(uvp->id),
     0, R92C_BCN_CTRL_DIS_TSF_UDT0);


 sc->sc_flags &= ~RTWN_RCR_LOCKED;
 rtwn_set_rx_bssid_all(sc, 1);


 callout_reset(&uvp->tsf_sync_adhoc, 60*hz, rtwn_tsf_sync_adhoc, vap);

 ieee80211_free_node(ni);
 RTWN_UNLOCK(sc);
}
