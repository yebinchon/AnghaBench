
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
typedef int int8_t ;
struct TYPE_4__ {TYPE_1__* ah_eeprom; } ;
struct TYPE_3__ {int ee_antennaGainMax; } ;
typedef int HAL_STATUS ;
typedef TYPE_1__ HAL_EEPROM_v4k ;


 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;

 int HAL_EINVAL ;
 int HAL_OK ;

__attribute__((used)) static HAL_STATUS
v4kEepromSet(struct ath_hal *ah, int param, int v)
{
 HAL_EEPROM_v4k *ee = AH_PRIVATE(ah)->ah_eeprom;

 switch (param) {
 case 128:
  ee->ee_antennaGainMax = (int8_t) v;
  return HAL_OK;
 }
 return HAL_EINVAL;
}
