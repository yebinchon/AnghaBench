
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ FreqBand; int ChnlWidth; int ExtChnlOffset; } ;
struct TYPE_5__ {TYPE_1__ channelFlags; } ;
typedef TYPE_2__ MWL_HAL_CHANNEL ;


 int CH_10_MHz_WIDTH ;
 int CH_20_MHz_WIDTH ;
 int CH_40_MHz_WIDTH ;
 int EXT_CH_ABOVE_CTRL_CH ;
 int EXT_CH_BELOW_CTRL_CH ;
 int EXT_CH_NONE ;
 int FREQ_BAND_2DOT4GHZ ;
 int FREQ_BAND_5GHZ ;






 scalar_t__ MWL_FREQ_BAND_2DOT4GHZ ;
 int htole32 (int ) ;

__attribute__((used)) static uint32_t
cvtChannelFlags(const MWL_HAL_CHANNEL *chan)
{
 uint32_t w;





 w = (chan->channelFlags.FreqBand == MWL_FREQ_BAND_2DOT4GHZ) ?
  FREQ_BAND_2DOT4GHZ : FREQ_BAND_5GHZ;
 switch (chan->channelFlags.ChnlWidth) {
 case 133:
  w |= CH_10_MHz_WIDTH;
  break;
 case 132:
  w |= CH_20_MHz_WIDTH;
  break;
 case 131:
 default:
  w |= CH_40_MHz_WIDTH;
  break;
 }
 switch (chan->channelFlags.ExtChnlOffset) {
 case 128:
  w |= EXT_CH_NONE;
  break;
 case 130:
  w |= EXT_CH_ABOVE_CTRL_CH;
  break;
 case 129:
  w |= EXT_CH_BELOW_CTRL_CH;
  break;
 }
 return htole32(w);
}
