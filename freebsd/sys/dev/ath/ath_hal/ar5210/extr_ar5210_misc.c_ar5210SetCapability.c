
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_diagreg; } ;
typedef int HAL_STATUS ;
typedef int HAL_CAPABILITY_TYPE ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;


 int ar5210UpdateDiagReg (struct ath_hal*,int) ;
 int ath_hal_setcapability (struct ath_hal*,int,int,int,int *) ;

HAL_BOOL
ar5210SetCapability(struct ath_hal *ah, HAL_CAPABILITY_TYPE type,
 uint32_t capability, uint32_t setting, HAL_STATUS *status)
{

 switch (type) {
 case 129:
  AH_PRIVATE(ah)->ah_diagreg = setting & 0x6;

  ar5210UpdateDiagReg(ah, AH_PRIVATE(ah)->ah_diagreg);
  return AH_TRUE;
 case 128:
  return AH_FALSE;
 default:
  return ath_hal_setcapability(ah, type, capability,
   setting, status);
 }
}
