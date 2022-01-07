
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_powerLimit; } ;
typedef int HAL_BOOL ;


 int AH_MIN (int ,int ) ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR5210_MAX_RATE_POWER ;

HAL_BOOL
ar5210SetTxPowerLimit(struct ath_hal *ah, uint32_t limit)
{
 AH_PRIVATE(ah)->ah_powerLimit = AH_MIN(limit, AR5210_MAX_RATE_POWER);

 return AH_TRUE;
}
