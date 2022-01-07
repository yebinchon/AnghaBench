
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ halKeyCacheSize; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_KEYTABLE_MAC1 (scalar_t__) ;
 int AR_KEYTABLE_VALID ;
 int OS_REG_READ (struct ath_hal*,int ) ;

HAL_BOOL
ar5212IsKeyCacheEntryValid(struct ath_hal *ah, uint16_t entry)
{
 if (entry < AH_PRIVATE(ah)->ah_caps.halKeyCacheSize) {
  uint32_t val = OS_REG_READ(ah, AR_KEYTABLE_MAC1(entry));
  if (val & AR_KEYTABLE_VALID)
   return AH_TRUE;
 }
 return AH_FALSE;
}
