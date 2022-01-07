
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_vap {struct mbuf* bcn_mbuf; } ;
struct rum_softc {int dummy; } ;
struct mbuf {int dummy; } ;
struct ieee80211vap {struct ieee80211_node* iv_bss; } ;
struct ieee80211_node {scalar_t__ ni_chan; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IEEE80211_CHAN_ANYC ;
 struct rum_vap* RUM_VAP (struct ieee80211vap*) ;
 struct mbuf* ieee80211_beacon_alloc (struct ieee80211_node*) ;
 int m_freem (struct mbuf*) ;
 int rum_set_beacon (struct rum_softc*,struct ieee80211vap*) ;

__attribute__((used)) static int
rum_alloc_beacon(struct rum_softc *sc, struct ieee80211vap *vap)
{
 struct rum_vap *rvp = RUM_VAP(vap);
 struct ieee80211_node *ni = vap->iv_bss;
 struct mbuf *m;

 if (ni->ni_chan == IEEE80211_CHAN_ANYC)
  return EINVAL;

 m = ieee80211_beacon_alloc(ni);
 if (m == ((void*)0))
  return ENOMEM;

 if (rvp->bcn_mbuf != ((void*)0))
  m_freem(rvp->bcn_mbuf);

 rvp->bcn_mbuf = m;

 return (rum_set_beacon(sc, vap));
}
