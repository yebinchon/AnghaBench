
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct ieee80211vap {struct ifnet* iv_ifp; } ;
struct ieee80211_node {int ni_macaddr; struct ieee80211vap* ni_vap; } ;


 int RTM_IEEE80211_WDS ;
 int notify_macaddr (struct ifnet*,int ,int ) ;

void
ieee80211_notify_wds_discover(struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ifnet *ifp = vap->iv_ifp;

 notify_macaddr(ifp, RTM_IEEE80211_WDS, ni->ni_macaddr);
}
