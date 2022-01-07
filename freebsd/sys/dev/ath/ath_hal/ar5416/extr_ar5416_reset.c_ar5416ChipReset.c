
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_channel {int ic_freq; } ;
struct TYPE_4__ {scalar_t__ ah_force_full_reset; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
struct TYPE_6__ {int (* ah_initPLL ) (struct ath_hal*,struct ieee80211_channel const*) ;} ;
struct TYPE_5__ {int ah_chipFullSleep; } ;
typedef int HAL_BOOL ;


 TYPE_3__* AH5416 (struct ath_hal*) ;
 int AH_FALSE ;
 int AH_MARK_CHIPRESET ;
 int AH_TRUE ;
 int AR_EEP_OL_PWRCTRL ;
 scalar_t__ AR_SREV_MERLIN (struct ath_hal*) ;
 int HAL_PM_AWAKE ;
 int HAL_RESET_POWER_ON ;
 int HAL_RESET_WARM ;
 int OS_MARK (struct ath_hal*,int ,int ) ;
 TYPE_2__* ahp ;
 int ar5416SetPowerMode (struct ath_hal*,int ,int ) ;
 int ar5416SetResetReg (struct ath_hal*,int ) ;
 int ar5416SetRfMode (struct ath_hal*,struct ieee80211_channel const*) ;
 scalar_t__ ath_hal_eepromGetFlag (struct ath_hal*,int ) ;
 int stub1 (struct ath_hal*,struct ieee80211_channel const*) ;

HAL_BOOL
ar5416ChipReset(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 OS_MARK(ah, AH_MARK_CHIPRESET, chan ? chan->ic_freq : 0);



 if (AR_SREV_MERLIN(ah) &&
     ath_hal_eepromGetFlag(ah, AR_EEP_OL_PWRCTRL)) {
  if (!ar5416SetResetReg(ah, HAL_RESET_POWER_ON))
   return AH_FALSE;
 } else if (ah->ah_config.ah_force_full_reset) {
  if (!ar5416SetResetReg(ah, HAL_RESET_POWER_ON))
   return AH_FALSE;
 } else {
  if (!ar5416SetResetReg(ah, HAL_RESET_WARM))
   return AH_FALSE;
 }


 if (!ar5416SetPowerMode(ah, HAL_PM_AWAKE, AH_TRUE))
        return AH_FALSE;





 AH5416(ah)->ah_initPLL(ah, chan);







 ar5416SetRfMode(ah, chan);

 return AH_TRUE;
}
