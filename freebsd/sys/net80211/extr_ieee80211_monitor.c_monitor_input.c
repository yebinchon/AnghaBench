
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct ieee80211vap {struct ifnet* iv_ifp; } ;
struct ieee80211_rx_stats {int dummy; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;


 int IFCOUNTER_IPACKETS ;
 scalar_t__ ieee80211_radiotap_active_vap (struct ieee80211vap*) ;
 int ieee80211_radiotap_rx (struct ieee80211vap*,struct mbuf*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
monitor_input(struct ieee80211_node *ni, struct mbuf *m,
    const struct ieee80211_rx_stats *rxs, int rssi, int nf)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ifnet *ifp = vap->iv_ifp;

 if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);

 if (ieee80211_radiotap_active_vap(vap))
  ieee80211_radiotap_rx(vap, m);
 m_freem(m);
 return -1;
}
