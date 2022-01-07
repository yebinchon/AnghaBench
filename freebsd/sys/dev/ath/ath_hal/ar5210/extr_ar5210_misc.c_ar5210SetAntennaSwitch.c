
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;
typedef scalar_t__ HAL_ANT_SETTING ;


 scalar_t__ HAL_ANT_VARIABLE ;

HAL_BOOL
ar5210SetAntennaSwitch(struct ath_hal *ah, HAL_ANT_SETTING settings)
{

 return (settings == HAL_ANT_VARIABLE);
}
