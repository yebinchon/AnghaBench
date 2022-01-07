
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {scalar_t__ ni_associd; } ;


 int IEEE80211_FC0_SUBTYPE_DISASSOC ;
 int IEEE80211_REASON_ASSOC_LEAVE ;
 int IEEE80211_SEND_MGMT (struct ieee80211_node*,int ,int ) ;
 int ieee80211_node_leave (struct ieee80211_node*) ;

__attribute__((used)) static void
sta_disassoc(void *arg, struct ieee80211_node *ni)
{

 if (ni->ni_associd != 0) {
  IEEE80211_SEND_MGMT(ni, IEEE80211_FC0_SUBTYPE_DISASSOC,
   IEEE80211_REASON_ASSOC_LEAVE);
  ieee80211_node_leave(ni);
 }
}
