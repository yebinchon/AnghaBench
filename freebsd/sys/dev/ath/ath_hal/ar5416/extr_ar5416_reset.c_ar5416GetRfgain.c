
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_RFGAIN ;


 int HAL_RFGAIN_INACTIVE ;

HAL_RFGAIN
ar5416GetRfgain(struct ath_hal *ah)
{

 return (HAL_RFGAIN_INACTIVE);
}
