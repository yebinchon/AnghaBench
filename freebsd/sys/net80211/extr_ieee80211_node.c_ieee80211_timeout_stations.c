
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node_table {int dummy; } ;
struct ieee80211com {struct ieee80211_node_table ic_sta; } ;


 int ieee80211_iterate_nodes (struct ieee80211_node_table*,int ,int *) ;
 int timeout_stations ;

__attribute__((used)) static void
ieee80211_timeout_stations(struct ieee80211com *ic)
{
 struct ieee80211_node_table *nt = &ic->ic_sta;

 ieee80211_iterate_nodes(nt, timeout_stations, ((void*)0));
}
