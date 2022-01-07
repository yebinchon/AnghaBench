
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2860_softc {int sc_flags; int sc_tx_timer; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct rt2860_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;


 int ENETDOWN ;
 int RAL_LOCK (struct rt2860_softc*) ;
 int RAL_UNLOCK (struct rt2860_softc*) ;
 int RT2860_RUNNING ;
 int m_freem (struct mbuf*) ;
 int rt2860_tx (struct rt2860_softc*,struct mbuf*,struct ieee80211_node*) ;
 int rt2860_tx_raw (struct rt2860_softc*,struct mbuf*,struct ieee80211_node*,struct ieee80211_bpf_params const*) ;

__attribute__((used)) static int
rt2860_raw_xmit(struct ieee80211_node *ni, struct mbuf *m,
    const struct ieee80211_bpf_params *params)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct rt2860_softc *sc = ic->ic_softc;
 int error;

 RAL_LOCK(sc);


 if (!(sc->sc_flags & RT2860_RUNNING)) {
  RAL_UNLOCK(sc);
  m_freem(m);
  return ENETDOWN;
 }
 if (params == ((void*)0)) {




  error = rt2860_tx(sc, m, ni);
 } else {




  error = rt2860_tx_raw(sc, m, ni, params);
 }
 sc->sc_tx_timer = 5;
 RAL_UNLOCK(sc);
 return error;
}
