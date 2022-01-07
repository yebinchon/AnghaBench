
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;


 int AR_EEP_AMODE ;
 int AR_EEP_BMODE ;
 int AR_EEP_TURBO5DISABLE ;
 int HAL_MODE_108A ;
 int HAL_MODE_11A ;
 int HAL_MODE_11B ;
 int HAL_MODE_TURBO ;
 scalar_t__ ath_hal_eepromGetFlag (struct ath_hal*,int ) ;

u_int
ar5211GetWirelessModes(struct ath_hal *ah)
{
 u_int mode = 0;

 if (ath_hal_eepromGetFlag(ah, AR_EEP_AMODE)) {
  mode = HAL_MODE_11A;
  if (!ath_hal_eepromGetFlag(ah, AR_EEP_TURBO5DISABLE))
   mode |= HAL_MODE_TURBO | HAL_MODE_108A;
 }
 if (ath_hal_eepromGetFlag(ah, AR_EEP_BMODE))
  mode |= HAL_MODE_11B;
 return mode;
}
