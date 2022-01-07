
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zyd_softc {int sc_flags; scalar_t__ tx_nfree; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct zyd_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;


 int EIO ;
 int ENETDOWN ;
 int ENOBUFS ;
 int ZYD_FLAG_RUNNING ;
 int ZYD_LOCK (struct zyd_softc*) ;
 int ZYD_UNLOCK (struct zyd_softc*) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ zyd_tx_start (struct zyd_softc*,struct mbuf*,struct ieee80211_node*) ;

__attribute__((used)) static int
zyd_raw_xmit(struct ieee80211_node *ni, struct mbuf *m,
 const struct ieee80211_bpf_params *params)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct zyd_softc *sc = ic->ic_softc;

 ZYD_LOCK(sc);

 if (!(sc->sc_flags & ZYD_FLAG_RUNNING)) {
  ZYD_UNLOCK(sc);
  m_freem(m);
  return (ENETDOWN);
 }
 if (sc->tx_nfree == 0) {
  ZYD_UNLOCK(sc);
  m_freem(m);
  return (ENOBUFS);
 }






 if (zyd_tx_start(sc, m, ni) != 0) {
  ZYD_UNLOCK(sc);
  m_freem(m);
  return (EIO);
 }
 ZYD_UNLOCK(sc);
 return (0);
}
