
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct mwl_hal_channel {int maxTxPow; int freq; int ieee; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_3__ {int nchannels; struct mwl_hal_channel* channels; } ;
typedef TYPE_1__ MWL_HAL_CHANNELINFO ;


 int ieee80211_add_channel (struct ieee80211_channel*,int,int*,int ,int ,int ,int ,int const*) ;

__attribute__((used)) static void
addchannels(struct ieee80211_channel chans[], int maxchans, int *nchans,
 const MWL_HAL_CHANNELINFO *ci, const uint8_t bands[])
{
 int i, error;

 error = 0;
 for (i = 0; i < ci->nchannels && error == 0; i++) {
  const struct mwl_hal_channel *hc = &ci->channels[i];

  error = ieee80211_add_channel(chans, maxchans, nchans,
      hc->ieee, hc->freq, hc->maxTxPow, 0, bands);
 }
}
