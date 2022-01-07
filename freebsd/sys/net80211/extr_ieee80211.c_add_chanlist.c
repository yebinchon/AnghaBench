
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct ieee80211_channel {int dummy; } ;


 int IEEE80211_CHAN_HT40D ;
 int IEEE80211_CHAN_HT40U ;
 int IEEE80211_CHAN_VHT ;
 int IEEE80211_CHAN_VHT80 ;
 int addchan (struct ieee80211_channel*,int,int*,scalar_t__ const,int,int ,int) ;
 int copychan_prev (struct ieee80211_channel*,int,int*,int) ;
 int ieee80211_ieee2mhz (scalar_t__ const,int) ;
 int is_vht80_valid_freq (int) ;

__attribute__((used)) static int
add_chanlist(struct ieee80211_channel chans[], int maxchans, int *nchans,
    const uint8_t ieee[], int nieee, uint32_t flags[])
{
 uint16_t freq;
 int i, j, error;
 int is_vht;

 for (i = 0; i < nieee; i++) {
  freq = ieee80211_ieee2mhz(ieee[i], flags[0]);
  for (j = 0; flags[j] != 0; j++) {
   is_vht = !! (flags[j] & IEEE80211_CHAN_VHT);
   if (is_vht && flags[j] & IEEE80211_CHAN_VHT80)
    if (! is_vht80_valid_freq(freq))
     continue;
   if (flags[j] & IEEE80211_CHAN_HT40D)
    if (i == 0 || ieee[i] < ieee[0] + 4 ||
        freq - 20 !=
        ieee80211_ieee2mhz(ieee[i] - 4, flags[j]))
     continue;
   if (flags[j] & IEEE80211_CHAN_HT40U)
    if (i == nieee - 1 ||
        ieee[i] + 4 > ieee[nieee - 1] ||
        freq + 20 !=
        ieee80211_ieee2mhz(ieee[i] + 4, flags[j]))
     continue;

   if (j == 0) {
    error = addchan(chans, maxchans, nchans,
        ieee[i], freq, 0, flags[j]);
   } else {
    error = copychan_prev(chans, maxchans, nchans,
        flags[j]);
   }
   if (error != 0)
    return (error);
  }
 }

 return (0);
}
