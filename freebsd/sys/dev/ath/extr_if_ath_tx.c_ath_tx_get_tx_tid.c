
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_ampdu {int dummy; } ;
struct ieee80211_node {struct ieee80211_tx_ampdu* ni_tx_ampdu; } ;
struct ath_node {struct ieee80211_node an_node; } ;


 int IEEE80211_NONQOS_TID ;

struct ieee80211_tx_ampdu *
ath_tx_get_tx_tid(struct ath_node *an, int tid)
{
 struct ieee80211_node *ni = &an->an_node;
 struct ieee80211_tx_ampdu *tap;

 if (tid == IEEE80211_NONQOS_TID)
  return ((void*)0);

 tap = &ni->ni_tx_ampdu[tid];
 return tap;
}
