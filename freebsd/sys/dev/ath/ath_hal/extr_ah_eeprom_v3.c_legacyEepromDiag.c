
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {TYPE_1__* ah_eeprom; } ;
struct TYPE_5__ {int numChannels; void* pChannels; } ;
struct TYPE_4__ {TYPE_2__* ee_modePowerArray5112; } ;
typedef TYPE_1__ HAL_EEPROM ;
typedef int HAL_BOOL ;
typedef int EXPN_DATA_PER_CHANNEL_5112 ;
typedef TYPE_2__ EEPROM_POWER_EXPN_5112 ;


 int AH_FALSE ;
 void* AH_NULL ;
 TYPE_3__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;




 int roundup (int,int) ;

__attribute__((used)) static HAL_BOOL
legacyEepromDiag(struct ath_hal *ah, int request,
     const void *args, uint32_t argsize, void **result, uint32_t *resultsize)
{
 HAL_EEPROM *ee = AH_PRIVATE(ah)->ah_eeprom;
 const EEPROM_POWER_EXPN_5112 *pe;

 switch (request) {
 case 131:
  *result = ee;
  *resultsize = sizeof(*ee);
  return AH_TRUE;
 case 130:
 case 129:
 case 128:
  pe = &ee->ee_modePowerArray5112[
      request - 130];
  *result = pe->pChannels;
  *resultsize = (*result == AH_NULL) ? 0 :
   roundup(sizeof(uint16_t) * pe->numChannels,
    sizeof(uint32_t)) +
   sizeof(EXPN_DATA_PER_CHANNEL_5112) * pe->numChannels;
  return AH_TRUE;
 }
 return AH_FALSE;
}
