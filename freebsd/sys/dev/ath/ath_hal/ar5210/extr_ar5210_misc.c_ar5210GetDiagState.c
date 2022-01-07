
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AR_PCICFG ;
 int AR_PCICFG_EEPROMSEL ;


 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int ath_hal_eepromRead (struct ath_hal*,int const,void*) ;
 int ath_hal_getdiagstate (struct ath_hal*,int,void const*,int,void**,int*) ;

HAL_BOOL
ar5210GetDiagState(struct ath_hal *ah, int request,
 const void *args, uint32_t argsize,
 void **result, uint32_t *resultsize)
{
 return ath_hal_getdiagstate(ah, request,
  args, argsize, result, resultsize);
}
