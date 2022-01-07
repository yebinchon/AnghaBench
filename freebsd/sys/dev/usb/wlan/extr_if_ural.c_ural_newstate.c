
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_vap {int (* newstate ) (struct ieee80211vap*,int,int) ;int ratectl_ch; } ;
struct ural_softc {int sc_dev; int sc_bssid; } ;
struct mbuf {int dummy; } ;
struct ieee80211vap {size_t iv_state; struct ieee80211_txparam* iv_txparms; int iv_opmode; struct ieee80211_node* iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_curchan; int ic_bsschan; struct ural_softc* ic_softc; } ;
struct ieee80211_txparam {int ucastrate; } ;
struct ieee80211_node {int ni_bssid; } ;
typedef enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;


 int DPRINTF (char*,int ,int ) ;
 int IEEE80211_ADDR_COPY (int ,int ) ;
 int IEEE80211_CHAN_ANYC ;
 int IEEE80211_FIXED_RATE_NONE ;
 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_M_HOSTAP ;
 int IEEE80211_M_IBSS ;
 int IEEE80211_M_MONITOR ;


 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int RAL_LOCK (struct ural_softc*) ;
 int RAL_MAC_CSR20 ;
 int RAL_TXRX_CSR19 ;
 int RAL_UNLOCK (struct ural_softc*) ;
 struct ural_vap* URAL_VAP (struct ieee80211vap*) ;
 int device_printf (int ,char*) ;
 struct mbuf* ieee80211_beacon_alloc (struct ieee80211_node*) ;
 size_t ieee80211_chan2mode (int ) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 struct ieee80211_node* ieee80211_ref_node (struct ieee80211_node*) ;
 int * ieee80211_state_name ;
 int stub1 (struct ieee80211vap*,int,int) ;
 int ural_enable_tsf (struct ural_softc*) ;
 int ural_enable_tsf_sync (struct ural_softc*) ;
 int ural_ratectl_start (struct ural_softc*,struct ieee80211_node*) ;
 int ural_set_basicrates (struct ural_softc*,int ) ;
 int ural_set_bssid (struct ural_softc*,int ) ;
 int ural_set_txpreamble (struct ural_softc*) ;
 int ural_tx_bcn (struct ural_softc*,struct mbuf*,struct ieee80211_node*) ;
 int ural_update_slot (struct ural_softc*) ;
 int ural_write (struct ural_softc*,int ,int) ;
 int usb_callout_stop (int *) ;

__attribute__((used)) static int
ural_newstate(struct ieee80211vap *vap, enum ieee80211_state nstate, int arg)
{
 struct ural_vap *uvp = URAL_VAP(vap);
 struct ieee80211com *ic = vap->iv_ic;
 struct ural_softc *sc = ic->ic_softc;
 const struct ieee80211_txparam *tp;
 struct ieee80211_node *ni;
 struct mbuf *m;

 DPRINTF("%s -> %s\n",
  ieee80211_state_name[vap->iv_state],
  ieee80211_state_name[nstate]);

 IEEE80211_UNLOCK(ic);
 RAL_LOCK(sc);
 usb_callout_stop(&uvp->ratectl_ch);

 switch (nstate) {
 case 129:
  if (vap->iv_state == 128) {

   ural_write(sc, RAL_TXRX_CSR19, 0);


   ural_write(sc, RAL_MAC_CSR20, 0);
  }
  break;

 case 128:
  ni = ieee80211_ref_node(vap->iv_bss);

  if (vap->iv_opmode != IEEE80211_M_MONITOR) {
   if (ic->ic_bsschan == IEEE80211_CHAN_ANYC)
    goto fail;

   ural_update_slot(sc);
   ural_set_txpreamble(sc);
   ural_set_basicrates(sc, ic->ic_bsschan);
   IEEE80211_ADDR_COPY(sc->sc_bssid, ni->ni_bssid);
   ural_set_bssid(sc, sc->sc_bssid);
  }

  if (vap->iv_opmode == IEEE80211_M_HOSTAP ||
      vap->iv_opmode == IEEE80211_M_IBSS) {
   m = ieee80211_beacon_alloc(ni);
   if (m == ((void*)0)) {
    device_printf(sc->sc_dev,
        "could not allocate beacon\n");
    goto fail;
   }
   ieee80211_ref_node(ni);
   if (ural_tx_bcn(sc, m, ni) != 0) {
    device_printf(sc->sc_dev,
        "could not send beacon\n");
    goto fail;
   }
  }


  ural_write(sc, RAL_MAC_CSR20, 1);

  if (vap->iv_opmode != IEEE80211_M_MONITOR)
   ural_enable_tsf_sync(sc);
  else
   ural_enable_tsf(sc);



  tp = &vap->iv_txparms[ieee80211_chan2mode(ic->ic_curchan)];
  if (tp->ucastrate == IEEE80211_FIXED_RATE_NONE)
   ural_ratectl_start(sc, ni);
  ieee80211_free_node(ni);
  break;

 default:
  break;
 }
 RAL_UNLOCK(sc);
 IEEE80211_LOCK(ic);
 return (uvp->newstate(vap, nstate, arg));

fail:
 RAL_UNLOCK(sc);
 IEEE80211_LOCK(ic);
 ieee80211_free_node(ni);
 return (-1);
}
