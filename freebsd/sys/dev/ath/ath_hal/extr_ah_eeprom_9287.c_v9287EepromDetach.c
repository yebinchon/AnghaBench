
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int * ah_eeprom; } ;
typedef int HAL_EEPROM_9287 ;


 int * AH_NULL ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int ath_hal_free (int *) ;

__attribute__((used)) static void
v9287EepromDetach(struct ath_hal *ah)
{
 HAL_EEPROM_9287 *ee = AH_PRIVATE(ah)->ah_eeprom;

 ath_hal_free(ee);
 AH_PRIVATE(ah)->ah_eeprom = AH_NULL;
}
