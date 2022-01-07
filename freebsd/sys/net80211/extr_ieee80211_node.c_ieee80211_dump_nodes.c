
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node_table {int dummy; } ;
typedef int ieee80211_iter_func ;


 scalar_t__ ieee80211_dump_node ;
 int ieee80211_iterate_nodes (struct ieee80211_node_table*,int *,struct ieee80211_node_table*) ;

void
ieee80211_dump_nodes(struct ieee80211_node_table *nt)
{
 ieee80211_iterate_nodes(nt,
  (ieee80211_iter_func *) ieee80211_dump_node, nt);
}
