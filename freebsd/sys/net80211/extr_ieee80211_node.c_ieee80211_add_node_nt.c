
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct ieee80211_node_table {int nt_count; int * nt_hash; int nt_node; struct ieee80211com* nt_ic; } ;
struct ieee80211_node {struct ieee80211_node_table* ni_table; int ni_macaddr; } ;


 int IEEE80211_NODE_HASH (struct ieee80211com*,int ) ;
 int IEEE80211_NODE_LOCK_ASSERT (struct ieee80211_node_table*) ;
 int LIST_INSERT_HEAD (int *,struct ieee80211_node*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct ieee80211_node*,int ) ;
 int ni_hash ;
 int ni_list ;

__attribute__((used)) static void
ieee80211_add_node_nt(struct ieee80211_node_table *nt,
    struct ieee80211_node *ni)
{
 struct ieee80211com *ic = nt->nt_ic;
 int hash;

 IEEE80211_NODE_LOCK_ASSERT(nt);

 hash = IEEE80211_NODE_HASH(ic, ni->ni_macaddr);
 (void) ic;
 TAILQ_INSERT_TAIL(&nt->nt_node, ni, ni_list);
 LIST_INSERT_HEAD(&nt->nt_hash[hash], ni, ni_hash);
 nt->nt_count++;
 ni->ni_table = nt;
}
