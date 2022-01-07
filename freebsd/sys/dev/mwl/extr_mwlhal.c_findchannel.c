
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int nchannels; struct mwl_hal_channel* channels; } ;
struct mwl_hal_priv {TYPE_2__ mh_20M_5G; TYPE_2__ mh_40M_5G; TYPE_2__ mh_20M; TYPE_2__ mh_40M; } ;
struct mwl_hal_channel {int ieee; } ;
struct TYPE_5__ {scalar_t__ FreqBand; scalar_t__ ChnlWidth; scalar_t__ ExtChnlOffset; } ;
struct TYPE_7__ {int channel; TYPE_1__ channelFlags; } ;
typedef TYPE_2__ MWL_HAL_CHANNELINFO ;
typedef TYPE_3__ MWL_HAL_CHANNEL ;


 scalar_t__ MWL_CH_40_MHz_WIDTH ;
 scalar_t__ MWL_EXT_CH_BELOW_CTRL_CH ;
 scalar_t__ MWL_FREQ_BAND_2DOT4GHZ ;
 scalar_t__ MWL_FREQ_BAND_5GHZ ;

__attribute__((used)) static const struct mwl_hal_channel *
findchannel(const struct mwl_hal_priv *mh, const MWL_HAL_CHANNEL *c)
{
 const struct mwl_hal_channel *hc;
 const MWL_HAL_CHANNELINFO *ci;
 int chan = c->channel, i;

 if (c->channelFlags.FreqBand == MWL_FREQ_BAND_2DOT4GHZ) {
  i = chan - 1;
  if (c->channelFlags.ChnlWidth == MWL_CH_40_MHz_WIDTH) {
   ci = &mh->mh_40M;
   if (c->channelFlags.ExtChnlOffset == MWL_EXT_CH_BELOW_CTRL_CH)
    i -= 4;
  } else
   ci = &mh->mh_20M;

  hc = ((unsigned)i < ci->nchannels) ? &ci->channels[i] : ((void*)0);
 } else if (c->channelFlags.FreqBand == MWL_FREQ_BAND_5GHZ) {
  if (c->channelFlags.ChnlWidth == MWL_CH_40_MHz_WIDTH) {
   ci = &mh->mh_40M_5G;
   if (c->channelFlags.ExtChnlOffset == MWL_EXT_CH_BELOW_CTRL_CH)
    chan -= 4;
  } else
   ci = &mh->mh_20M_5G;

  for (i = 0; i < ci->nchannels; i++)
   if (ci->channels[i].ieee == chan)
    break;
  hc = (i < ci->nchannels) ? &ci->channels[i] : ((void*)0);
 } else
  hc = ((void*)0);
 return hc;
}
