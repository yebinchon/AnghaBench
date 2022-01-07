
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int (* ic_node_cleanup ) (struct ieee80211_node*) ;} ;
struct ieee80211_node {int ni_psq; int ni_ies; struct ieee80211com* ni_ic; } ;


 int IEEE80211_FREE (struct ieee80211_node*,int ) ;
 int M_80211_NODE ;
 int ieee80211_ies_cleanup (int *) ;
 int ieee80211_psq_cleanup (int *) ;
 int ieee80211_ratectl_node_deinit (struct ieee80211_node*) ;
 int stub1 (struct ieee80211_node*) ;

__attribute__((used)) static void
node_free(struct ieee80211_node *ni)
{
 struct ieee80211com *ic = ni->ni_ic;

 ieee80211_ratectl_node_deinit(ni);
 ic->ic_node_cleanup(ni);
 ieee80211_ies_cleanup(&ni->ni_ies);
 ieee80211_psq_cleanup(&ni->ni_psq);
 IEEE80211_FREE(ni, M_80211_NODE);
}
