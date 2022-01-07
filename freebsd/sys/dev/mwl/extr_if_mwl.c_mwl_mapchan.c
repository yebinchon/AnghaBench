
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ieee80211_channel {int ic_ieee; } ;
struct TYPE_4__ {int ChnlWidth; int ExtChnlOffset; int FreqBand; } ;
struct TYPE_5__ {TYPE_1__ channelFlags; int channel; } ;
typedef TYPE_2__ MWL_HAL_CHANNEL ;


 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40U (struct ieee80211_channel const*) ;
 int MWL_CH_20_MHz_WIDTH ;
 int MWL_CH_40_MHz_WIDTH ;
 int MWL_EXT_CH_ABOVE_CTRL_CH ;
 int MWL_EXT_CH_BELOW_CTRL_CH ;
 int MWL_FREQ_BAND_2DOT4GHZ ;
 int MWL_FREQ_BAND_5GHZ ;

__attribute__((used)) static void
mwl_mapchan(MWL_HAL_CHANNEL *hc, const struct ieee80211_channel *chan)
{
 hc->channel = chan->ic_ieee;

 *(uint32_t *)&hc->channelFlags = 0;
 if (IEEE80211_IS_CHAN_2GHZ(chan))
  hc->channelFlags.FreqBand = MWL_FREQ_BAND_2DOT4GHZ;
 else if (IEEE80211_IS_CHAN_5GHZ(chan))
  hc->channelFlags.FreqBand = MWL_FREQ_BAND_5GHZ;
 if (IEEE80211_IS_CHAN_HT40(chan)) {
  hc->channelFlags.ChnlWidth = MWL_CH_40_MHz_WIDTH;
  if (IEEE80211_IS_CHAN_HT40U(chan))
   hc->channelFlags.ExtChnlOffset = MWL_EXT_CH_ABOVE_CTRL_CH;
  else
   hc->channelFlags.ExtChnlOffset = MWL_EXT_CH_BELOW_CTRL_CH;
 } else
  hc->channelFlags.ChnlWidth = MWL_CH_20_MHz_WIDTH;

}
