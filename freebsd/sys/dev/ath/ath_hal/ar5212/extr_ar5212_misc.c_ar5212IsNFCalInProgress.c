
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int AR_PHY_AGC_CONTROL ;
 int AR_PHY_AGC_CONTROL_NF ;
 int OS_REG_READ (struct ath_hal*,int ) ;

HAL_BOOL
ar5212IsNFCalInProgress(struct ath_hal *ah)
{
 if (OS_REG_READ(ah, AR_PHY_AGC_CONTROL) & AR_PHY_AGC_CONTROL_NF)
  return AH_TRUE;
 return AH_FALSE;
}
