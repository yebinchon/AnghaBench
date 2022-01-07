
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211_node* iv_bss; } ;
struct ieee80211_node {scalar_t__ ni_chan; } ;


 scalar_t__ IEEE80211_CHAN_ANYC ;
 scalar_t__ IEEE80211_IS_CHAN_HT (scalar_t__) ;

__attribute__((used)) static int
isvapht(const struct ieee80211vap *vap)
{
 const struct ieee80211_node *bss = vap->iv_bss;
 return bss->ni_chan != IEEE80211_CHAN_ANYC &&
     IEEE80211_IS_CHAN_HT(bss->ni_chan);
}
