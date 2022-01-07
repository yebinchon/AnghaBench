
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;


 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_A (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_B (struct ieee80211_channel*) ;

__attribute__((used)) static int
iwm_mvm_scan_skip_channel(struct ieee80211_channel *c)
{
 if (IEEE80211_IS_CHAN_2GHZ(c) && IEEE80211_IS_CHAN_B(c))
  return 0;
 else if (IEEE80211_IS_CHAN_5GHZ(c) && IEEE80211_IS_CHAN_A(c))
  return 0;
 else
  return 1;
}
