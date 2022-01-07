
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;


 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel const*) ;
 int IWI_CHAN_2GHZ ;
 int IWI_CHAN_5GHZ ;

__attribute__((used)) static __inline int
scan_band(const struct ieee80211_channel *c)
{
 return IEEE80211_IS_CHAN_5GHZ(c) ? IWI_CHAN_5GHZ : IWI_CHAN_2GHZ;
}
