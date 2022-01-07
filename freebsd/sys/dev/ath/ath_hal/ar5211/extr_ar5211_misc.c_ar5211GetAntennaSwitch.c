
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_diversityControl; } ;
typedef int HAL_ANT_SETTING ;


 TYPE_1__* AH5211 (struct ath_hal*) ;

HAL_ANT_SETTING
ar5211GetAntennaSwitch(struct ath_hal *ah)
{
 return AH5211(ah)->ah_diversityControl;
}
