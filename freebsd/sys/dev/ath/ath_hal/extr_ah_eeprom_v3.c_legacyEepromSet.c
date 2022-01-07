
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ah_eeprom; } ;
struct TYPE_3__ {int ee_Amode; int ee_Bmode; int ee_Gmode; int ee_turbo5Disable; int ee_turbo2Disable; int ee_opCap; } ;
typedef int HAL_STATUS ;
typedef TYPE_1__ HAL_EEPROM ;


 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR_EEPROM_EEPCAP_AES_DIS ;
 int AR_EEPROM_EEPCAP_BURST_DIS ;
 int AR_EEPROM_EEPCAP_COMPRESS_DIS ;
 int AR_EEPROM_EEPCAP_FASTFRAME_DIS ;
 int HAL_EINVAL ;
 int HAL_OK ;

__attribute__((used)) static HAL_STATUS
legacyEepromSet(struct ath_hal *ah, int param, int v)
{
 HAL_EEPROM *ee = AH_PRIVATE(ah)->ah_eeprom;

 switch (param) {
 case 135:
  ee->ee_Amode = v;
  return HAL_OK;
 case 134:
  ee->ee_Bmode = v;
  return HAL_OK;
 case 130:
  ee->ee_Gmode = v;
  return HAL_OK;
 case 128:
  ee->ee_turbo5Disable = v;
  return HAL_OK;
 case 129:
  ee->ee_turbo2Disable = v;
  return HAL_OK;
 case 132:
  if (v)
   ee->ee_opCap &= ~AR_EEPROM_EEPCAP_COMPRESS_DIS;
  else
   ee->ee_opCap |= AR_EEPROM_EEPCAP_COMPRESS_DIS;
  return HAL_OK;
 case 131:
  if (v)
   ee->ee_opCap &= ~AR_EEPROM_EEPCAP_FASTFRAME_DIS;
  else
   ee->ee_opCap |= AR_EEPROM_EEPCAP_FASTFRAME_DIS;
  return HAL_OK;
 case 136:
  if (v)
   ee->ee_opCap &= ~AR_EEPROM_EEPCAP_AES_DIS;
  else
   ee->ee_opCap |= AR_EEPROM_EEPCAP_AES_DIS;
  return HAL_OK;
 case 133:
  if (v)
   ee->ee_opCap &= ~AR_EEPROM_EEPCAP_BURST_DIS;
  else
   ee->ee_opCap |= AR_EEPROM_EEPCAP_BURST_DIS;
  return HAL_OK;
 }
 return HAL_EINVAL;
}
