
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_POWER_MODE ;


 int AR_SCR ;
 int AR_SCR_SLE ;
 int MS (int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;

HAL_POWER_MODE
ar5211GetPowerMode(struct ath_hal *ah)
{

 return MS(OS_REG_READ(ah, AR_SCR), AR_SCR_SLE);
}
