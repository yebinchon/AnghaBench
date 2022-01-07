
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {scalar_t__ ni_associd; } ;


 int IEEE80211_FC0_SUBTYPE_DEAUTH ;
 int IEEE80211_SEND_MGMT (struct ieee80211_node*,int ,int) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int ieee80211_node_leave (struct ieee80211_node*) ;
 int ieee80211_ref_node (struct ieee80211_node*) ;

void
ieee80211_node_deauth(struct ieee80211_node *ni, int reason)
{

 ieee80211_ref_node(ni);
 if (ni->ni_associd != 0)
  IEEE80211_SEND_MGMT(ni, IEEE80211_FC0_SUBTYPE_DEAUTH, reason);
 ieee80211_node_leave(ni);
 ieee80211_free_node(ni);
}
