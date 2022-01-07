
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_channel {int dummy; } ;


 int ieee80211_add_channel_list_2ghz (struct ieee80211_channel*,int,int*,int const*,int ,int const*,int) ;
 int nitems (int const*) ;

int
ieee80211_add_channels_default_2ghz(struct ieee80211_channel chans[],
    int maxchans, int *nchans, const uint8_t bands[], int ht40)
{
 const uint8_t default_chan_list[] =
     { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 };

 return (ieee80211_add_channel_list_2ghz(chans, maxchans, nchans,
     default_chan_list, nitems(default_chan_list), bands, ht40));
}
