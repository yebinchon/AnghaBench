
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct ieee80211vap {struct ifnet* iv_ifp; } ;
struct ieee80211_node {int ni_macaddr; struct ieee80211vap* ni_vap; } ;


 int IEEE80211_MSG_NODE ;
 int IEEE80211_NOTE (struct ieee80211vap*,int ,struct ieee80211_node*,char*,char*) ;
 int RTM_IEEE80211_AUTH ;
 int notify_macaddr (struct ifnet*,int ,int ) ;

void
ieee80211_notify_node_auth(struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ifnet *ifp = vap->iv_ifp;

 IEEE80211_NOTE(vap, IEEE80211_MSG_NODE, ni, "%s", "node auth");

 notify_macaddr(ifp, RTM_IEEE80211_AUTH, ni->ni_macaddr);
}
