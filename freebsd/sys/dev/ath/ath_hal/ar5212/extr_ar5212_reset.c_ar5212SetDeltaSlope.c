
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint16_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;


 int AR_PHY_TIMING3 ;
 int AR_PHY_TIMING3_DSC_EXP ;
 int AR_PHY_TIMING3_DSC_MAN ;
 unsigned long COEF_SCALE_S ;
 int HALASSERT (unsigned long) ;
 scalar_t__ IEEE80211_IS_CHAN_HALF (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_QUARTER (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_TURBO (struct ieee80211_channel const*) ;
 unsigned long INIT_CLOCKMHZSCALED ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,unsigned long) ;
 unsigned long ath_hal_gethwchannel (struct ath_hal*,struct ieee80211_channel const*) ;

void
ar5212SetDeltaSlope(struct ath_hal *ah, const struct ieee80211_channel *chan)
{


 uint16_t freq = ath_hal_gethwchannel(ah, chan);
 unsigned long coef_scaled, coef_exp, coef_man, ds_coef_exp, ds_coef_man;
 unsigned long clockMhzScaled = 0x64000000;

 if (IEEE80211_IS_CHAN_TURBO(chan))
  clockMhzScaled *= 2;


 if (IEEE80211_IS_CHAN_HALF(chan)) {
  clockMhzScaled = clockMhzScaled >> 1;
 } else if (IEEE80211_IS_CHAN_QUARTER(chan)) {
  clockMhzScaled = clockMhzScaled >> 2;
 }





 coef_scaled = clockMhzScaled / freq;





 for (coef_exp = 31; coef_exp > 0; coef_exp--)
  if ((coef_scaled >> coef_exp) & 0x1)
   break;

 HALASSERT(coef_exp);
 coef_exp = 14 - (coef_exp - 24);





 coef_man = coef_scaled + (1 << (24 - coef_exp - 1));
 ds_coef_man = coef_man >> (24 - coef_exp);
 ds_coef_exp = coef_exp - 16;

 OS_REG_RMW_FIELD(ah, AR_PHY_TIMING3,
  AR_PHY_TIMING3_DSC_MAN, ds_coef_man);
 OS_REG_RMW_FIELD(ah, AR_PHY_TIMING3,
  AR_PHY_TIMING3_DSC_EXP, ds_coef_exp);


}
