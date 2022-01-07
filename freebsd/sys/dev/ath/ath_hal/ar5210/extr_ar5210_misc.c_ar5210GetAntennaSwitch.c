
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_ANT_SETTING ;


 int HAL_ANT_VARIABLE ;

HAL_ANT_SETTING
ar5210GetAntennaSwitch(struct ath_hal *ah)
{
 return HAL_ANT_VARIABLE;
}
