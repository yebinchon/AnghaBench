
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node_table {scalar_t__ nt_count; int nt_node; } ;
struct ieee80211_node {int * ni_table; } ;


 int IEEE80211_NODE_LOCK_ASSERT (struct ieee80211_node_table*) ;
 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct ieee80211_node*,int ) ;
 int TAILQ_REMOVE (int *,struct ieee80211_node*,int ) ;
 int ni_hash ;
 int ni_list ;

__attribute__((used)) static void
ieee80211_del_node_nt(struct ieee80211_node_table *nt,
    struct ieee80211_node *ni)
{

 IEEE80211_NODE_LOCK_ASSERT(nt);

 TAILQ_REMOVE(&nt->nt_node, ni, ni_list);
 LIST_REMOVE(ni, ni_hash);
 nt->nt_count--;
 KASSERT(nt->nt_count >= 0,
     ("nt_count is negative (%d)!\n", nt->nt_count));
 ni->ni_table = ((void*)0);
}
