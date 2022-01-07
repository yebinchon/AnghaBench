
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_channel {int dummy; } ;
struct bwn_channelinfo {int nchannels; struct bwn_channel* channels; } ;
struct bwn_channel {int maxTxPow; int freq; int ieee; } ;


 int ieee80211_add_channel (struct ieee80211_channel*,int,int*,int ,int ,int ,int ,int const*) ;

__attribute__((used)) static void
bwn_addchannels(struct ieee80211_channel chans[], int maxchans, int *nchans,
    const struct bwn_channelinfo *ci, const uint8_t bands[])
{
 int i, error;

 for (i = 0, error = 0; i < ci->nchannels && error == 0; i++) {
  const struct bwn_channel *hc = &ci->channels[i];

  error = ieee80211_add_channel(chans, maxchans, nchans,
      hc->ieee, hc->freq, hc->maxTxPow, 0, bands);
 }
}
