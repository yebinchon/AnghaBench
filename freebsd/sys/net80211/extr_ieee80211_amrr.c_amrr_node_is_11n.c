
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rs_nrates; } ;
struct ieee80211_node {int * ni_chan; TYPE_1__ ni_htrates; } ;


 int * IEEE80211_CHAN_ANYC ;
 int IEEE80211_IS_CHAN_HT (int *) ;

__attribute__((used)) static int
amrr_node_is_11n(struct ieee80211_node *ni)
{

 if (ni->ni_chan == ((void*)0))
  return (0);
 if (ni->ni_chan == IEEE80211_CHAN_ANYC)
  return (0);
 if (IEEE80211_IS_CHAN_HT(ni->ni_chan) && ni->ni_htrates.rs_nrates == 0)
  return (0);
 return (IEEE80211_IS_CHAN_HT(ni->ni_chan));
}
