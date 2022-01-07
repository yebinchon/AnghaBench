
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int (* if_transmit ) (struct ifnet*,struct mbuf*) ;} ;
struct ieee80211vap {int iv_ic; struct ifnet* iv_ifp; } ;


 int IEEE80211_TX_UNLOCK_ASSERT (int ) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

int
ieee80211_vap_xmitpkt(struct ieee80211vap *vap, struct mbuf *m)
{
 struct ifnet *ifp = vap->iv_ifp;





 IEEE80211_TX_UNLOCK_ASSERT(vap->iv_ic);

 return (ifp->if_transmit(ifp, m));

}
