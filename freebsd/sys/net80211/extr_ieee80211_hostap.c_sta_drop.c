
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {scalar_t__ ni_associd; } ;


 int ieee80211_node_leave (struct ieee80211_node*) ;

__attribute__((used)) static void
sta_drop(void *arg, struct ieee80211_node *ni)
{

 if (ni->ni_associd != 0)
  ieee80211_node_leave(ni);
}
