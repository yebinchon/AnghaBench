
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ieee80211_recv_action_register (int,int,int ) ;
 int recv_inval ;

void
ieee80211_recv_action_unregister(int cat, int act)
{
 ieee80211_recv_action_register(cat, act, recv_inval);
}
