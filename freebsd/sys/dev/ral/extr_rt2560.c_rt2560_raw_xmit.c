
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ queued; } ;
struct rt2560_softc {int sc_flags; int sc_tx_timer; TYPE_1__ prioq; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct rt2560_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;


 int EIO ;
 int ENETDOWN ;
 int ENOBUFS ;
 int RAL_LOCK (struct rt2560_softc*) ;
 int RAL_UNLOCK (struct rt2560_softc*) ;
 int RT2560_F_RUNNING ;
 scalar_t__ RT2560_PRIO_RING_COUNT ;
 int m_freem (struct mbuf*) ;
 scalar_t__ rt2560_tx_mgt (struct rt2560_softc*,struct mbuf*,struct ieee80211_node*) ;
 scalar_t__ rt2560_tx_raw (struct rt2560_softc*,struct mbuf*,struct ieee80211_node*,struct ieee80211_bpf_params const*) ;

__attribute__((used)) static int
rt2560_raw_xmit(struct ieee80211_node *ni, struct mbuf *m,
 const struct ieee80211_bpf_params *params)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct rt2560_softc *sc = ic->ic_softc;

 RAL_LOCK(sc);


 if (!(sc->sc_flags & RT2560_F_RUNNING)) {
  RAL_UNLOCK(sc);
  m_freem(m);
  return ENETDOWN;
 }
 if (sc->prioq.queued >= RT2560_PRIO_RING_COUNT) {
  RAL_UNLOCK(sc);
  m_freem(m);
  return ENOBUFS;
 }

 if (params == ((void*)0)) {




  if (rt2560_tx_mgt(sc, m, ni) != 0)
   goto bad;
 } else {




  if (rt2560_tx_raw(sc, m, ni, params))
   goto bad;
 }
 sc->sc_tx_timer = 5;

 RAL_UNLOCK(sc);

 return 0;
bad:
 RAL_UNLOCK(sc);
 return EIO;
}
