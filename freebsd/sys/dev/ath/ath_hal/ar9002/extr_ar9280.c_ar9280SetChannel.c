
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct ieee80211_channel {int ic_freq; } ;
struct ath_hal {int dummy; } ;
struct TYPE_5__ {struct ieee80211_channel const* ah_curchan; } ;
struct TYPE_4__ {int synth_center; } ;
typedef int HAL_BOOL ;
typedef TYPE_1__ CHAN_CENTERS ;


 int AH_MARK_SETCHANNEL ;
 TYPE_3__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_AN_SYNTH9 ;
 int AR_AN_SYNTH9_REFDIVA ;
 int AR_EEP_FRAC_N_5G ;
 int AR_PHY_CCK_TX_CTRL ;
 int AR_PHY_CCK_TX_CTRL_JAPAN ;
 int AR_PHY_SYNTH_CONTROL ;
 scalar_t__ HAL_OK ;
 int IEEE80211_IS_CHAN_HALF (struct ieee80211_channel const*) ;
 int IEEE80211_IS_CHAN_QUARTER (struct ieee80211_channel const*) ;
 int OS_A_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int OS_MARK (struct ath_hal*,int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar5416GetChannelCenters (struct ath_hal*,struct ieee80211_channel const*,TYPE_1__*) ;
 scalar_t__ ath_hal_eepromGet (struct ath_hal*,int ,int*) ;

__attribute__((used)) static HAL_BOOL
ar9280SetChannel(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 uint16_t bMode, fracMode, aModeRefSel = 0;
 uint32_t freq, ndiv, channelSel = 0, channelFrac = 0, reg32 = 0;
 CHAN_CENTERS centers;
 uint32_t refDivA = 24;
 uint8_t frac_n_5g;

 OS_MARK(ah, AH_MARK_SETCHANNEL, chan->ic_freq);

 ar5416GetChannelCenters(ah, chan, &centers);
 freq = centers.synth_center;

 reg32 = OS_REG_READ(ah, AR_PHY_SYNTH_CONTROL);
 reg32 &= 0xc0000000;

 if (ath_hal_eepromGet(ah, AR_EEP_FRAC_N_5G, &frac_n_5g) != HAL_OK)
  frac_n_5g = 0;

 if (freq < 4800) {
  uint32_t txctl;

  bMode = 1;
  fracMode = 1;
  aModeRefSel = 0;
  channelSel = (freq * 0x10000)/15;

  txctl = OS_REG_READ(ah, AR_PHY_CCK_TX_CTRL);
  if (freq == 2484) {

   OS_REG_WRITE(ah, AR_PHY_CCK_TX_CTRL,
       txctl | AR_PHY_CCK_TX_CTRL_JAPAN);
  } else {
   OS_REG_WRITE(ah, AR_PHY_CCK_TX_CTRL,
       txctl &~ AR_PHY_CCK_TX_CTRL_JAPAN);
  }
 } else {
  bMode = 0;
  fracMode = 0;

  switch (frac_n_5g) {
  case 0:







   if (IEEE80211_IS_CHAN_QUARTER(chan) ||
       IEEE80211_IS_CHAN_HALF(chan))
    aModeRefSel = 0;
   else if ((freq % 20) == 0) {
    aModeRefSel = 3;
   } else if ((freq % 10) == 0) {
    aModeRefSel = 2;
   }
   if (aModeRefSel) break;
  case 1:
  default:
   aModeRefSel = 0;
    fracMode = 1;
    refDivA = 1;
    channelSel = (freq * 0x8000)/15;
   OS_A_REG_RMW_FIELD(ah, AR_AN_SYNTH9,
       AR_AN_SYNTH9_REFDIVA, refDivA);
  }

  if (!fracMode) {
   ndiv = (freq * (refDivA >> aModeRefSel))/60;
   channelSel = ndiv & 0x1ff;
   channelFrac = (ndiv & 0xfffffe00) * 2;
   channelSel = (channelSel << 17) | channelFrac;
  }
 }

 reg32 = reg32 | (bMode << 29) | (fracMode << 28) |
     (aModeRefSel << 26) | (channelSel);

 OS_REG_WRITE(ah, AR_PHY_SYNTH_CONTROL, reg32);

 AH_PRIVATE(ah)->ah_curchan = chan;

 return AH_TRUE;
}
