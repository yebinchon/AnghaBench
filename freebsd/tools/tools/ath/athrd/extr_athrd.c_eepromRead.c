
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int AR_EEPROM_EEREGCAP_EN_KK_NEW_11A ;
 int AR_EEPROM_EEREGCAP_EN_KK_NEW_11A_PRE4_0 ;



 int eeversion ;

__attribute__((used)) static HAL_BOOL
eepromRead(struct ath_hal *ah, u_int off, u_int16_t *data)
{

 switch (off) {
 case 128:
  *data = eeversion;
  return AH_TRUE;
 case 130:
  *data = AR_EEPROM_EEREGCAP_EN_KK_NEW_11A;
  return AH_TRUE;
 case 129:
  *data = AR_EEPROM_EEREGCAP_EN_KK_NEW_11A_PRE4_0;
  return AH_TRUE;
 }
 return AH_FALSE;
}
