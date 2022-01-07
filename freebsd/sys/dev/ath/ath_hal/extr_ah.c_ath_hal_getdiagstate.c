
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct ath_hal {int (* ah_resetKeyCacheEntry ) (struct ath_hal*,int const) ;int (* ah_setKeyCacheEntry ) (struct ath_hal*,int ,int *,int ,int ) ;} ;
struct TYPE_6__ {int ah_11nCompat; int ah_chansurvey; int * ah_fatalState; int ah_devid; } ;
struct TYPE_5__ {int ee_data; int ee_off; } ;
struct TYPE_4__ {int dk_xor; int dk_mac; int dk_keyval; int dk_keyix; } ;
typedef int HAL_REVS ;
typedef TYPE_1__ HAL_DIAG_KEYVAL ;
typedef TYPE_2__ HAL_DIAG_EEVAL ;
typedef int HAL_CHANNEL_SURVEY ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 TYPE_3__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int ath_hal_eepromRead (struct ath_hal*,int const,void*) ;
 int ath_hal_eepromWrite (struct ath_hal*,int ,int ) ;
 int ath_hal_getregdump (struct ath_hal*,void const*,void*,int) ;
 int ath_hal_setregs (struct ath_hal*,void const*,int) ;
 int stub1 (struct ath_hal*,int ,int *,int ,int ) ;
 int stub2 (struct ath_hal*,int const) ;

HAL_BOOL
ath_hal_getdiagstate(struct ath_hal *ah, int request,
 const void *args, uint32_t argsize,
 void **result, uint32_t *resultsize)
{

 switch (request) {
 case 130:
  *result = &AH_PRIVATE(ah)->ah_devid;
  *resultsize = sizeof(HAL_REVS);
  return AH_TRUE;
 case 132:
  *resultsize = ath_hal_getregdump(ah, args, *result,*resultsize);
  return AH_TRUE;
 case 128:
  ath_hal_setregs(ah, args, argsize);
  *resultsize = 0;
  return AH_TRUE;
 case 133:
  *result = &AH_PRIVATE(ah)->ah_fatalState[0];
  *resultsize = sizeof(AH_PRIVATE(ah)->ah_fatalState);
  return AH_TRUE;
 case 135:
  if (argsize != sizeof(uint16_t))
   return AH_FALSE;
  if (!ath_hal_eepromRead(ah, *(const uint16_t *)args, *result))
   return AH_FALSE;
  *resultsize = sizeof(uint16_t);
  return AH_TRUE;
 case 137:
  if (argsize == 0) {
   *resultsize = sizeof(uint32_t);
   *((uint32_t *)(*result)) =
    AH_PRIVATE(ah)->ah_11nCompat;
  } else if (argsize == sizeof(uint32_t)) {
   AH_PRIVATE(ah)->ah_11nCompat = *(const uint32_t *)args;
  } else
   return AH_FALSE;
  return AH_TRUE;
 case 136:
  *result = &AH_PRIVATE(ah)->ah_chansurvey;
  *resultsize = sizeof(HAL_CHANNEL_SURVEY);
  return AH_TRUE;
 }
 return AH_FALSE;
}
