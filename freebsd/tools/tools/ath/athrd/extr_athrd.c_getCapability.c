
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_currentRD; int ah_caps; } ;
typedef int HAL_STATUS ;
typedef int HAL_CAPABILITY_TYPE ;
typedef int HAL_CAPABILITIES ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;

 int HAL_EINVAL ;
 int HAL_OK ;

HAL_STATUS
getCapability(struct ath_hal *ah, HAL_CAPABILITY_TYPE type,
 uint32_t capability, uint32_t *result)
{
 const HAL_CAPABILITIES *pCap = &AH_PRIVATE(ah)->ah_caps;

 switch (type) {
 case 128:
  *result = AH_PRIVATE(ah)->ah_currentRD;
  return HAL_OK;
 default:
  return HAL_EINVAL;
 }
}
