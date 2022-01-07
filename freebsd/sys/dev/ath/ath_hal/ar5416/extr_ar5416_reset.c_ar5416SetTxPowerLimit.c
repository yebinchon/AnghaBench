
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct ath_hal {int (* ah_setTxPower ) (struct ath_hal*,int ,int *) ;} ;
struct TYPE_2__ {int ah_curchan; int ah_powerLimit; } ;
typedef int HAL_BOOL ;


 int AH_MIN (int ,int ) ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int MAX_RATE_POWER ;
 int stub1 (struct ath_hal*,int ,int *) ;

HAL_BOOL
ar5416SetTxPowerLimit(struct ath_hal *ah, uint32_t limit)
{
 uint16_t dummyXpdGains[2];

 AH_PRIVATE(ah)->ah_powerLimit = AH_MIN(limit, MAX_RATE_POWER);
 return ah->ah_setTxPower(ah, AH_PRIVATE(ah)->ah_curchan,
   dummyXpdGains);
}
