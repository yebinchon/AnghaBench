
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2560_vap {int (* ral_newstate ) (struct ieee80211vap*,int,int) ;} ;
struct rt2560_softc {int sc_dev; } ;
struct mbuf {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_state; scalar_t__ iv_opmode; struct ieee80211_node* iv_bss; TYPE_1__* iv_ic; } ;
struct ieee80211_node {int ni_bssid; int ni_rates; } ;
typedef enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;
struct TYPE_2__ {struct rt2560_softc* ic_softc; } ;


 int ENOBUFS ;
 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_IBSS ;
 scalar_t__ IEEE80211_M_MBSS ;
 scalar_t__ IEEE80211_M_MONITOR ;
 int IEEE80211_S_INIT ;
 scalar_t__ IEEE80211_S_RUN ;
 int RAL_WRITE (struct rt2560_softc*,int ,int ) ;
 int RT2560_CSR14 ;
 struct rt2560_vap* RT2560_VAP (struct ieee80211vap*) ;
 int device_printf (int ,char*) ;
 struct mbuf* ieee80211_beacon_alloc (struct ieee80211_node*) ;
 int ieee80211_ref_node (struct ieee80211_node*) ;
 int rt2560_enable_tsf (struct rt2560_softc*) ;
 int rt2560_enable_tsf_sync (struct rt2560_softc*) ;
 int rt2560_set_basicrates (struct rt2560_softc*,int *) ;
 int rt2560_set_bssid (struct rt2560_softc*,int ) ;
 int rt2560_tx_bcn (struct rt2560_softc*,struct mbuf*,struct ieee80211_node*) ;
 int rt2560_update_led (struct rt2560_softc*,int,int ) ;
 int rt2560_update_plcp (struct rt2560_softc*) ;
 int stub1 (struct ieee80211vap*,int,int) ;

__attribute__((used)) static int
rt2560_newstate(struct ieee80211vap *vap, enum ieee80211_state nstate, int arg)
{
 struct rt2560_vap *rvp = RT2560_VAP(vap);
 struct rt2560_softc *sc = vap->iv_ic->ic_softc;
 int error;

 if (nstate == IEEE80211_S_INIT && vap->iv_state == IEEE80211_S_RUN) {

  RAL_WRITE(sc, RT2560_CSR14, 0);


  rt2560_update_led(sc, 0, 0);
 }

 error = rvp->ral_newstate(vap, nstate, arg);

 if (error == 0 && nstate == IEEE80211_S_RUN) {
  struct ieee80211_node *ni = vap->iv_bss;
  struct mbuf *m;

  if (vap->iv_opmode != IEEE80211_M_MONITOR) {
   rt2560_update_plcp(sc);
   rt2560_set_basicrates(sc, &ni->ni_rates);
   rt2560_set_bssid(sc, ni->ni_bssid);
  }

  if (vap->iv_opmode == IEEE80211_M_HOSTAP ||
      vap->iv_opmode == IEEE80211_M_IBSS ||
      vap->iv_opmode == IEEE80211_M_MBSS) {
   m = ieee80211_beacon_alloc(ni);
   if (m == ((void*)0)) {
    device_printf(sc->sc_dev,
        "could not allocate beacon\n");
    return ENOBUFS;
   }
   ieee80211_ref_node(ni);
   error = rt2560_tx_bcn(sc, m, ni);
   if (error != 0)
    return error;
  }


  rt2560_update_led(sc, 1, 0);

  if (vap->iv_opmode != IEEE80211_M_MONITOR)
   rt2560_enable_tsf_sync(sc);
  else
   rt2560_enable_tsf(sc);
 }
 return error;
}
