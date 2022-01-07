
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211_channel {int ic_freq; } ;



uint32_t
ieee80211_get_channel_center_freq(const struct ieee80211_channel *c)
{

 return (c->ic_freq);
}
