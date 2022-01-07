
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211_node* iv_bss; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;


 int ieee80211_node_leave (struct ieee80211_node*) ;

__attribute__((used)) static void
sta_leave(void *arg, struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;

 if (ni != vap->iv_bss)
  ieee80211_node_leave(ni);
}
