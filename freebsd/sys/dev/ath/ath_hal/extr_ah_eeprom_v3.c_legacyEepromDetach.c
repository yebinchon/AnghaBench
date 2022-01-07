
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_7__ {TYPE_1__* ah_eeprom; } ;
struct TYPE_6__ {scalar_t__ ee_version; int ee_eepMap; } ;
typedef TYPE_1__ HAL_EEPROM ;


 TYPE_1__* AH_NULL ;
 TYPE_4__* AH_PRIVATE (struct ath_hal*) ;
 scalar_t__ AR_EEPROM_VER4_0 ;
 int ath_hal_free (TYPE_1__*) ;
 int freeEepromRawPowerCalInfo5112 (struct ath_hal*,TYPE_1__*) ;

__attribute__((used)) static void
legacyEepromDetach(struct ath_hal *ah)
{
 HAL_EEPROM *ee = AH_PRIVATE(ah)->ah_eeprom;

        if (ee->ee_version >= AR_EEPROM_VER4_0 && ee->ee_eepMap == 1)
  freeEepromRawPowerCalInfo5112(ah, ee);
 ath_hal_free(ee);
 AH_PRIVATE(ah)->ah_eeprom = AH_NULL;
}
