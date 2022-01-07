
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AR_RC_BB ;
 int ar5211SetResetReg (struct ath_hal*,int ) ;

HAL_BOOL
ar5211PhyDisable(struct ath_hal *ah)
{
 return ar5211SetResetReg(ah, AR_RC_BB);
}
