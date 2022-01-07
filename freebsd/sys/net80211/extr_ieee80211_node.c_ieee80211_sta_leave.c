
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int (* ic_node_cleanup ) (struct ieee80211_node*) ;} ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;


 int ieee80211_notify_node_leave (struct ieee80211_node*) ;
 int stub1 (struct ieee80211_node*) ;

void
ieee80211_sta_leave(struct ieee80211_node *ni)
{
 struct ieee80211com *ic = ni->ni_ic;

 ic->ic_node_cleanup(ni);
 ieee80211_notify_node_leave(ni);
}
