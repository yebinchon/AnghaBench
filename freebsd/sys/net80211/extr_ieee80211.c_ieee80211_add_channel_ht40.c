
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct ieee80211_channel {int ic_freq; int ic_ieee; } ;
typedef int int8_t ;


 int EINVAL ;
 int ENOENT ;
 int IEEE80211_CHAN_HT ;
 int IEEE80211_CHAN_HT20 ;
 int IEEE80211_CHAN_HT40D ;
 int IEEE80211_CHAN_HT40U ;
 int addchan (struct ieee80211_channel*,int,int*,int ,int ,int ,int) ;
 struct ieee80211_channel* findchannel (struct ieee80211_channel*,int,scalar_t__,int) ;
 scalar_t__ ieee80211_ieee2mhz (int ,int) ;

int
ieee80211_add_channel_ht40(struct ieee80211_channel chans[], int maxchans,
    int *nchans, uint8_t ieee, int8_t maxregpower, uint32_t flags)
{
 struct ieee80211_channel *cent, *extc;
 uint16_t freq;
 int error;

 freq = ieee80211_ieee2mhz(ieee, flags);





 flags |= IEEE80211_CHAN_HT20;
 cent = findchannel(chans, *nchans, freq, flags);
 if (cent == ((void*)0))
  return (EINVAL);

 extc = findchannel(chans, *nchans, freq + 20, flags);
 if (extc == ((void*)0))
  return (ENOENT);

 flags &= ~IEEE80211_CHAN_HT;
 error = addchan(chans, maxchans, nchans, cent->ic_ieee, cent->ic_freq,
     maxregpower, flags | IEEE80211_CHAN_HT40U);
 if (error != 0)
  return (error);

 error = addchan(chans, maxchans, nchans, extc->ic_ieee, extc->ic_freq,
     maxregpower, flags | IEEE80211_CHAN_HT40D);

 return (error);
}
