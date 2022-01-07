
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mwl_hal_channel {int maxTxPow; int ieee; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_3__ {int nchannels; struct mwl_hal_channel* channels; } ;
typedef TYPE_1__ MWL_HAL_CHANNELINFO ;


 int ENOENT ;
 int ieee80211_add_channel_ht40 (struct ieee80211_channel*,int,int*,int ,int ,int) ;

__attribute__((used)) static void
addht40channels(struct ieee80211_channel chans[], int maxchans, int *nchans,
 const MWL_HAL_CHANNELINFO *ci, int flags)
{
 int i, error;

 for (i = 0; i < ci->nchannels; i++) {
  const struct mwl_hal_channel *hc = &ci->channels[i];

  error = ieee80211_add_channel_ht40(chans, maxchans, nchans,
      hc->ieee, hc->maxTxPow, flags);
  if (error != 0 && error != ENOENT)
   break;
 }
}
