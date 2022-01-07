
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ ah_devid; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 struct ieee80211_channel const* AH_NULL ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 scalar_t__ AR5211_DEVID ;
 int AR5211_PHY_MODE ;
 int AR5211_PHY_MODE_CCK ;
 int AR5211_PHY_MODE_OFDM ;
 int AR5211_PHY_MODE_RF2GHZ ;
 int AR5211_PHY_MODE_RF5GHZ ;
 int AR_PHY_FC_TURBO_MODE ;
 int AR_PHY_FC_TURBO_SHORT ;
 int AR_PHY_PLL_CTL ;
 int AR_PHY_PLL_CTL_40 ;
 int AR_PHY_PLL_CTL_44 ;
 int AR_PHY_TURBO ;
 int AR_RC_BB ;
 int AR_RC_MAC ;
 int AR_RC_PCI ;
 int DELAY_PLL_SETTLE ;
 int HAL_PM_AWAKE ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_B (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_TURBO (struct ieee80211_channel const*) ;
 int OS_DELAY (int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ar5211SetPowerMode (struct ath_hal*,int ,int ) ;
 int ar5211SetResetReg (struct ath_hal*,int) ;

HAL_BOOL
ar5211ChipReset(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 if (!ar5211SetPowerMode(ah, HAL_PM_AWAKE, AH_TRUE))
  return AH_FALSE;


 if (chan != AH_NULL) {

  OS_REG_WRITE(ah, AR_PHY_TURBO, IEEE80211_IS_CHAN_TURBO(chan) ?
      AR_PHY_FC_TURBO_MODE | AR_PHY_FC_TURBO_SHORT : 0);
  if (IEEE80211_IS_CHAN_B(chan)) {
   OS_REG_WRITE(ah, AR5211_PHY_MODE,
       AR5211_PHY_MODE_CCK | AR5211_PHY_MODE_RF2GHZ);
   OS_REG_WRITE(ah, AR_PHY_PLL_CTL, AR_PHY_PLL_CTL_44);

   OS_DELAY(DELAY_PLL_SETTLE);
  } else if (AH_PRIVATE(ah)->ah_devid == AR5211_DEVID) {
   OS_REG_WRITE(ah, AR_PHY_PLL_CTL, AR_PHY_PLL_CTL_40);
   OS_DELAY(DELAY_PLL_SETTLE);
   OS_REG_WRITE(ah, AR5211_PHY_MODE,
       AR5211_PHY_MODE_OFDM | (IEEE80211_IS_CHAN_2GHZ(chan) ?
    AR5211_PHY_MODE_RF2GHZ :
    AR5211_PHY_MODE_RF5GHZ));
  }
 }





 if (!ar5211SetResetReg(ah, AR_RC_MAC | AR_RC_BB | AR_RC_PCI))
  return AH_FALSE;
 OS_DELAY(2100);


 if (!ar5211SetPowerMode(ah, HAL_PM_AWAKE, AH_TRUE))
  return AH_FALSE;


 return ar5211SetResetReg(ah, 0);
}
