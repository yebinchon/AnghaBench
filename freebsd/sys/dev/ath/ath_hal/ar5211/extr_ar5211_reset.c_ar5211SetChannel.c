
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct ieee80211_channel {size_t ic_ieee; } ;
struct ath_hal {int dummy; } ;
typedef size_t int16_t ;
struct TYPE_5__ {struct ieee80211_channel const* ah_curchan; } ;
struct TYPE_4__ {size_t channelSelect; int refClkSel; size_t channel5111; } ;
typedef int HAL_BOOL ;
typedef TYPE_1__ CHAN_INFO_2GHZ ;


 TYPE_3__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_PHY (int) ;
 size_t CI_2GHZ_INDEX_CORRECTION ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel const*) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ath_hal_reverseBits (size_t,int) ;
 TYPE_1__* chan2GHzData ;

__attribute__((used)) static HAL_BOOL
ar5211SetChannel(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 uint32_t refClk, reg32, data2111;
 int16_t chan5111, chanIEEE;

 chanIEEE = chan->ic_ieee;
 if (IEEE80211_IS_CHAN_2GHZ(chan)) {
  const CHAN_INFO_2GHZ* ci =
   &chan2GHzData[chanIEEE + CI_2GHZ_INDEX_CORRECTION];

  data2111 = ((ath_hal_reverseBits(ci->channelSelect, 8) & 0xff)
    << 5)
    | (ci->refClkSel << 4);
  chan5111 = ci->channel5111;
 } else {
  data2111 = 0;
  chan5111 = chanIEEE;
 }


 if (chan5111 >= 145 || (chan5111 & 0x1)) {
  reg32 = ath_hal_reverseBits(chan5111 - 24, 8) & 0xFF;
  refClk = 1;
 } else {
  reg32 = ath_hal_reverseBits(((chan5111 - 24) / 2), 8) & 0xFF;
  refClk = 0;
 }

 reg32 = (reg32 << 2) | (refClk << 1) | (1 << 10) | 0x1;
 OS_REG_WRITE(ah, AR_PHY(0x27), ((data2111 & 0xff) << 8) | (reg32 & 0xff));
 reg32 >>= 8;
 OS_REG_WRITE(ah, AR_PHY(0x34), (data2111 & 0xff00) | (reg32 & 0xff));

 AH_PRIVATE(ah)->ah_curchan = chan;
 return AH_TRUE;
}
