
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rx_ampdu {int dummy; } ;
struct ieee80211_node {struct ieee80211_rx_ampdu* ni_rx_ampdu; } ;


 int ampdu_rx_stop (struct ieee80211_node*,struct ieee80211_rx_ampdu*) ;

void
ieee80211_ampdu_rx_stop_ext(struct ieee80211_node *ni, int tid)
{
 struct ieee80211_rx_ampdu *rap;


 rap = &ni->ni_rx_ampdu[tid];
 ampdu_rx_stop(ni, rap);
}
