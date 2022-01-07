
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int AR_PHY_ADC_CTL ;
 int AR_PHY_ADC_CTL_OFF_PWDADC ;
 int AR_PHY_AGC_CONTROL ;
 int AR_PHY_AGC_CONTROL_CAL ;
 int AR_PHY_AGC_CONTROL_FLTR_CAL ;
 int AR_PHY_CL_CAL_CTL ;
 int AR_PHY_CL_CAL_ENABLE ;
 int AR_PHY_FC_DYN2040_EN ;
 int AR_PHY_PARALLEL_CAL_ENABLE ;
 int AR_PHY_TPCRG1 ;
 int AR_PHY_TPCRG1_PD_CAL_ENABLE ;
 int AR_PHY_TURBO ;
 int HALDEBUG (struct ath_hal*,int ,char*) ;
 int HAL_DEBUG_PERCAL ;
 scalar_t__ IEEE80211_IS_CHAN_HT20 (struct ieee80211_channel const*) ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int ath_hal_wait (struct ath_hal*,int ,int ,int ) ;

__attribute__((used)) static HAL_BOOL
ar9285_hw_cl_cal(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 OS_REG_SET_BIT(ah, AR_PHY_CL_CAL_CTL, AR_PHY_CL_CAL_ENABLE);
 if (IEEE80211_IS_CHAN_HT20(chan)) {
  OS_REG_SET_BIT(ah, AR_PHY_CL_CAL_CTL, AR_PHY_PARALLEL_CAL_ENABLE);
  OS_REG_SET_BIT(ah, AR_PHY_TURBO, AR_PHY_FC_DYN2040_EN);
  OS_REG_CLR_BIT(ah, AR_PHY_AGC_CONTROL,
       AR_PHY_AGC_CONTROL_FLTR_CAL);
  OS_REG_CLR_BIT(ah, AR_PHY_TPCRG1, AR_PHY_TPCRG1_PD_CAL_ENABLE);
  OS_REG_SET_BIT(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_CAL);
  if (!ath_hal_wait(ah, AR_PHY_AGC_CONTROL,
      AR_PHY_AGC_CONTROL_CAL, 0)) {
   HALDEBUG(ah, HAL_DEBUG_PERCAL,
    "offset calibration failed to complete in 1ms; noisy environment?\n");
   return AH_FALSE;
  }
  OS_REG_CLR_BIT(ah, AR_PHY_TURBO, AR_PHY_FC_DYN2040_EN);
  OS_REG_CLR_BIT(ah, AR_PHY_CL_CAL_CTL, AR_PHY_PARALLEL_CAL_ENABLE);
  OS_REG_CLR_BIT(ah, AR_PHY_CL_CAL_CTL, AR_PHY_CL_CAL_ENABLE);
 }
 OS_REG_CLR_BIT(ah, AR_PHY_ADC_CTL, AR_PHY_ADC_CTL_OFF_PWDADC);
 OS_REG_SET_BIT(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_FLTR_CAL);
 OS_REG_SET_BIT(ah, AR_PHY_TPCRG1, AR_PHY_TPCRG1_PD_CAL_ENABLE);
 OS_REG_SET_BIT(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_CAL);
 if (!ath_hal_wait(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_CAL,
     0)) {
  HALDEBUG(ah, HAL_DEBUG_PERCAL,
   "offset calibration failed to complete in 1ms; noisy environment?\n");
  return AH_FALSE;
 }

 OS_REG_SET_BIT(ah, AR_PHY_ADC_CTL, AR_PHY_ADC_CTL_OFF_PWDADC);
 OS_REG_CLR_BIT(ah, AR_PHY_CL_CAL_CTL, AR_PHY_CL_CAL_ENABLE);
 OS_REG_CLR_BIT(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_FLTR_CAL);

 return AH_TRUE;
}
