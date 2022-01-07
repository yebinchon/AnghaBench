
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211_channel {scalar_t__ ic_vht_ch_freq2; int ic_flags; } ;


 scalar_t__ IEEE80211_IS_CHAN_VHT (struct ieee80211_channel const*) ;
 int ieee80211_ieee2mhz (scalar_t__,int ) ;

uint32_t
ieee80211_get_channel_center_freq2(const struct ieee80211_channel *c)
{

 if (IEEE80211_IS_CHAN_VHT(c) && (c->ic_vht_ch_freq2 != 0))
  return (ieee80211_ieee2mhz(c->ic_vht_ch_freq2, c->ic_flags));

 return (0);
}
