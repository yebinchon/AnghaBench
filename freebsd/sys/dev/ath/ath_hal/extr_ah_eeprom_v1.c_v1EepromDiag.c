
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int * ah_eeprom; } ;
typedef int HAL_EEPROM_v1 ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;


__attribute__((used)) static HAL_BOOL
v1EepromDiag(struct ath_hal *ah, int request,
     const void *args, uint32_t argsize, void **result, uint32_t *resultsize)
{
 HAL_EEPROM_v1 *ee = AH_PRIVATE(ah)->ah_eeprom;

 switch (request) {
 case 128:
  *result = ee;
  *resultsize = sizeof(*ee);
  return AH_TRUE;
 }
 return AH_FALSE;
}
