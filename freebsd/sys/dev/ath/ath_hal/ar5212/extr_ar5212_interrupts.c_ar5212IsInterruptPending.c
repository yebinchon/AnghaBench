
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AR_INTPEND ;
 scalar_t__ AR_INTPEND_TRUE ;
 scalar_t__ OS_REG_READ (struct ath_hal*,int ) ;

HAL_BOOL
ar5212IsInterruptPending(struct ath_hal *ah)
{




 return (OS_REG_READ(ah, AR_INTPEND) == AR_INTPEND_TRUE);
}
