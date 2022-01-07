
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_vnet; } ;
struct ieee80211vap {struct ieee80211_node* iv_bss; struct ifnet* iv_ifp; } ;
struct ieee80211_node {int ni_macaddr; int ni_bssid; struct ieee80211vap* ni_vap; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int IEEE80211_MSG_NODE ;
 int IEEE80211_NOTE (struct ieee80211vap*,int ,struct ieee80211_node*,char*,char*) ;
 int LINK_STATE_UP ;
 int RTM_IEEE80211_ASSOC ;
 int RTM_IEEE80211_JOIN ;
 int RTM_IEEE80211_REASSOC ;
 int RTM_IEEE80211_REJOIN ;
 int if_link_state_change (struct ifnet*,int ) ;
 int notify_macaddr (struct ifnet*,int ,int ) ;

void
ieee80211_notify_node_join(struct ieee80211_node *ni, int newassoc)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ifnet *ifp = vap->iv_ifp;

 CURVNET_SET_QUIET(ifp->if_vnet);
 IEEE80211_NOTE(vap, IEEE80211_MSG_NODE, ni, "%snode join",
     (ni == vap->iv_bss) ? "bss " : "");

 if (ni == vap->iv_bss) {
  notify_macaddr(ifp, newassoc ?
      RTM_IEEE80211_ASSOC : RTM_IEEE80211_REASSOC, ni->ni_bssid);
  if_link_state_change(ifp, LINK_STATE_UP);
 } else {
  notify_macaddr(ifp, newassoc ?
      RTM_IEEE80211_JOIN : RTM_IEEE80211_REJOIN, ni->ni_macaddr);
 }
 CURVNET_RESTORE();
}
