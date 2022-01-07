
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_STATUS ;
typedef int HAL_CAPABILITY_TYPE ;






 int HAL_ENOTSUPP ;
 int HAL_OK ;
 int ath_hal_getcapability (struct ath_hal*,int,int ,int *) ;

HAL_STATUS
ar5211GetCapability(struct ath_hal *ah, HAL_CAPABILITY_TYPE type,
 uint32_t capability, uint32_t *result)
{

 switch (type) {
 case 131:
  switch (capability) {
  case 130:
  case 128:
  case 129:
   return HAL_OK;
  default:
   return HAL_ENOTSUPP;
  }
 default:
  return ath_hal_getcapability(ah, type, capability, result);
 }
}
