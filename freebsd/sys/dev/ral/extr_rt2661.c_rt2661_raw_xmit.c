
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ queued; } ;
struct rt2661_softc {int sc_flags; int sc_tx_timer; TYPE_1__ mgtq; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct rt2661_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;


 int EIO ;
 int ENETDOWN ;
 int ENOBUFS ;
 int RAL_LOCK (struct rt2661_softc*) ;
 int RAL_RUNNING ;
 int RAL_UNLOCK (struct rt2661_softc*) ;
 scalar_t__ RT2661_MGT_RING_COUNT ;
 int m_freem (struct mbuf*) ;
 scalar_t__ rt2661_tx_mgt (struct rt2661_softc*,struct mbuf*,struct ieee80211_node*) ;

__attribute__((used)) static int
rt2661_raw_xmit(struct ieee80211_node *ni, struct mbuf *m,
 const struct ieee80211_bpf_params *params)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct rt2661_softc *sc = ic->ic_softc;

 RAL_LOCK(sc);


 if (!(sc->sc_flags & RAL_RUNNING)) {
  RAL_UNLOCK(sc);
  m_freem(m);
  return ENETDOWN;
 }
 if (sc->mgtq.queued >= RT2661_MGT_RING_COUNT) {
  RAL_UNLOCK(sc);
  m_freem(m);
  return ENOBUFS;
 }






 if (rt2661_tx_mgt(sc, m, ni) != 0)
  goto bad;
 sc->sc_tx_timer = 5;

 RAL_UNLOCK(sc);

 return 0;
bad:
 RAL_UNLOCK(sc);
 return EIO;
}
