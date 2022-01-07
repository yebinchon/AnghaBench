
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_softc {scalar_t__ tx_nfree; int sc_running; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct ural_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;


 int EIO ;
 int ENETDOWN ;
 int RAL_LOCK (struct ural_softc*) ;
 scalar_t__ RAL_TX_MINFREE ;
 int RAL_UNLOCK (struct ural_softc*) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ ural_tx_mgt (struct ural_softc*,struct mbuf*,struct ieee80211_node*) ;
 scalar_t__ ural_tx_raw (struct ural_softc*,struct mbuf*,struct ieee80211_node*,struct ieee80211_bpf_params const*) ;

__attribute__((used)) static int
ural_raw_xmit(struct ieee80211_node *ni, struct mbuf *m,
 const struct ieee80211_bpf_params *params)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct ural_softc *sc = ic->ic_softc;

 RAL_LOCK(sc);

 if (!sc->sc_running) {
  RAL_UNLOCK(sc);
  m_freem(m);
  return ENETDOWN;
 }
 if (sc->tx_nfree < RAL_TX_MINFREE) {
  RAL_UNLOCK(sc);
  m_freem(m);
  return EIO;
 }

 if (params == ((void*)0)) {




  if (ural_tx_mgt(sc, m, ni) != 0)
   goto bad;
 } else {




  if (ural_tx_raw(sc, m, ni, params) != 0)
   goto bad;
 }
 RAL_UNLOCK(sc);
 return 0;
bad:
 RAL_UNLOCK(sc);
 return EIO;
}
