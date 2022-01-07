
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {int ni_refcnt; } ;


 int atomic_cmpset_int (int *,int ,int) ;
 int atomic_subtract_int (int *,int) ;

int
ieee80211_node_dectestref(struct ieee80211_node *ni)
{

 atomic_subtract_int(&ni->ni_refcnt, 1);
 return atomic_cmpset_int(&ni->ni_refcnt, 0, 1);
}
