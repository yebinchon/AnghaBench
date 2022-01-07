
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AR_RC_BB ;
 int ar5212SetResetReg (struct ath_hal*,int ) ;

HAL_BOOL
ar5212PhyDisable(struct ath_hal *ah)
{
 return ar5212SetResetReg(ah, AR_RC_BB);
}
