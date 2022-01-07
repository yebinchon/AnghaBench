
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int (* ah_initPLL ) (struct ath_hal*,int ) ;} ;
typedef int HAL_BOOL ;


 TYPE_1__* AH5416 (struct ath_hal*) ;
 int AH_FALSE ;
 int AH_NULL ;
 int AH_TRUE ;
 int HAL_PM_AWAKE ;
 int HAL_RESET_COLD ;
 int ar5416SetPowerMode (struct ath_hal*,int ,int ) ;
 int ar5416SetResetReg (struct ath_hal*,int ) ;
 int stub1 (struct ath_hal*,int ) ;

HAL_BOOL
ar5416Disable(struct ath_hal *ah)
{

 if (!ar5416SetPowerMode(ah, HAL_PM_AWAKE, AH_TRUE))
  return AH_FALSE;
 if (! ar5416SetResetReg(ah, HAL_RESET_COLD))
  return AH_FALSE;

 AH5416(ah)->ah_initPLL(ah, AH_NULL);
 return (AH_TRUE);
}
