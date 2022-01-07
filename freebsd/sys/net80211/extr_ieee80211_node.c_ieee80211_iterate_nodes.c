
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node_table {int dummy; } ;
typedef int ieee80211_iter_func ;


 int ieee80211_iterate_nodes_vap (struct ieee80211_node_table*,int *,int *,void*) ;

void
ieee80211_iterate_nodes(struct ieee80211_node_table *nt,
 ieee80211_iter_func *f, void *arg)
{

 (void) ieee80211_iterate_nodes_vap(nt, ((void*)0), f, arg);
}
