
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int AR_RC_BB ;
 int AR_RC_MAC ;
 int AR_RC_PCI ;
 int HAL_PM_AWAKE ;
 int OS_DELAY (int) ;
 int ar5211SetPowerMode (struct ath_hal*,int ,int ) ;
 int ar5211SetResetReg (struct ath_hal*,int) ;

HAL_BOOL
ar5211Disable(struct ath_hal *ah)
{
 if (!ar5211SetPowerMode(ah, HAL_PM_AWAKE, AH_TRUE))
  return AH_FALSE;




 if (!ar5211SetResetReg(ah, AR_RC_MAC | AR_RC_BB | AR_RC_PCI))
  return AH_FALSE;
 OS_DELAY(2100);

 return AH_TRUE;
}
