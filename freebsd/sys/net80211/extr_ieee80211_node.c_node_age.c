
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {int (* iv_set_tim ) (struct ieee80211_node*,int ) ;} ;
struct TYPE_2__ {scalar_t__ psq_len; } ;
struct ieee80211_node {scalar_t__ ni_associd; int ni_flags; TYPE_1__ ni_psq; struct ieee80211vap* ni_vap; } ;


 int IEEE80211_NODE_HT ;
 int ieee80211_ht_node_age (struct ieee80211_node*) ;
 scalar_t__ ieee80211_node_psq_age (struct ieee80211_node*) ;
 int stub1 (struct ieee80211_node*,int ) ;

__attribute__((used)) static void
node_age(struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;




 if (ieee80211_node_psq_age(ni) != 0 &&
     ni->ni_psq.psq_len == 0 && vap->iv_set_tim != ((void*)0))
  vap->iv_set_tim(ni, 0);




 if (ni->ni_associd != 0 && (ni->ni_flags & IEEE80211_NODE_HT))
  ieee80211_ht_node_age(ni);
}
