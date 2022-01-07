
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct ieee80211_channel {size_t ic_ieee; } ;
struct ath_hal {int dummy; } ;
typedef size_t int16_t ;
struct TYPE_2__ {struct ieee80211_channel const* ah_curchan; } ;
typedef int HAL_BOOL ;


 int AH_MARK_SETCHANNEL ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_PHY (int) ;
 int AR_PHY_CCK_TX_CTRL ;
 int AR_PHY_CCK_TX_CTRL_JAPAN ;
 size_t CI_2GHZ_INDEX_CORRECTION ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel const*) ;
 int OS_MARK (struct ath_hal*,int ,int) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ath_hal_gethwchannel (struct ath_hal*,struct ieee80211_channel const*) ;
 int ath_hal_reverseBits (size_t,int) ;

__attribute__((used)) static HAL_BOOL
ar5111SetChannel(struct ath_hal *ah, const struct ieee80211_channel *chan)
{

 uint16_t freq = ath_hal_gethwchannel(ah, chan);
 uint32_t refClk, reg32, data2111;
 int16_t chan5111, chanIEEE;





 typedef struct {
  uint32_t refClkSel;
  uint32_t channelSelect;
  uint16_t channel5111;
 } CHAN_INFO_2GHZ;

 static const CHAN_INFO_2GHZ chan2GHzData[] = {
  { 1, 0x46, 96 },
  { 1, 0x46, 97 },
  { 1, 0x46, 98 },
  { 1, 0x46, 99 },
  { 1, 0x46, 100 },
  { 1, 0x46, 101 },
  { 1, 0x46, 102 },
  { 1, 0x46, 103 },
  { 1, 0x46, 104 },
  { 1, 0x46, 105 },
  { 1, 0x46, 106 },
  { 1, 0x46, 107 },
  { 1, 0x46, 108 },

  { 1, 0x46, 116 },
  { 1, 0x46, 116 },
  { 1, 0x46, 116 },
  { 1, 0x46, 116 },
  { 1, 0x46, 116 },
  { 1, 0x46, 116 },
  { 1, 0x46, 116 },
  { 1, 0x46, 116 },
  { 1, 0x46, 117 },
  { 1, 0x46, 118 },
  { 1, 0x46, 119 },
  { 1, 0x46, 120 },
  { 1, 0x46, 121 },
  { 1, 0x46, 122 },
  { 1, 0x46, 123 },
  { 1, 0x46, 124 },
  { 1, 0x46, 125 },
  { 1, 0x46, 126 },
  { 1, 0x46, 127 },
  { 1, 0x46, 128 },
  { 1, 0x44, 124 },
  { 1, 0x46, 136 },
  { 1, 0x46, 140 },
  { 1, 0x46, 144 },
  { 1, 0x46, 148 },
  { 1, 0x46, 152 },
  { 1, 0x46, 156 },
  { 1, 0x46, 160 },
  { 1, 0x46, 164 },
  { 1, 0x46, 168 },
  { 1, 0x46, 172 },
  { 1, 0x46, 176 },
  { 1, 0x46, 180 }
 };

 OS_MARK(ah, AH_MARK_SETCHANNEL, freq);

 chanIEEE = chan->ic_ieee;
 if (IEEE80211_IS_CHAN_2GHZ(chan)) {
  const CHAN_INFO_2GHZ* ci =
   &chan2GHzData[chanIEEE + 19];
  uint32_t txctl;

  data2111 = ((ath_hal_reverseBits(ci->channelSelect, 8) & 0xff)
    << 5)
    | (ci->refClkSel << 4);
  chan5111 = ci->channel5111;
  txctl = OS_REG_READ(ah, AR_PHY_CCK_TX_CTRL);
  if (freq == 2484) {

   OS_REG_WRITE(ah, AR_PHY_CCK_TX_CTRL,
    txctl | AR_PHY_CCK_TX_CTRL_JAPAN);
  } else {
   OS_REG_WRITE(ah, AR_PHY_CCK_TX_CTRL,
    txctl &~ AR_PHY_CCK_TX_CTRL_JAPAN);
  }
 } else {
  chan5111 = chanIEEE;
  data2111 = 0;
 }


 if (chan5111 >= 145 || (chan5111 & 0x1)) {
  reg32 = ath_hal_reverseBits(chan5111 - 24, 8) & 0xff;
  refClk = 1;
 } else {
  reg32 = ath_hal_reverseBits(((chan5111 - 24)/2), 8) & 0xff;
  refClk = 0;
 }

 reg32 = (reg32 << 2) | (refClk << 1) | (1 << 10) | 0x1;
 OS_REG_WRITE(ah, AR_PHY(0x27), ((data2111 & 0xff) << 8) | (reg32 & 0xff));
 reg32 >>= 8;
 OS_REG_WRITE(ah, AR_PHY(0x34), (data2111 & 0xff00) | (reg32 & 0xff));

 AH_PRIVATE(ah)->ah_curchan = chan;
 return AH_TRUE;

}
