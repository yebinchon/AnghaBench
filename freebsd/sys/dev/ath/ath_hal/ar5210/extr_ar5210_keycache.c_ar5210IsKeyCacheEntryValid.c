
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int AR_KEYTABLE_MAC1 (scalar_t__) ;
 scalar_t__ AR_KEYTABLE_SIZE ;
 int AR_KEYTABLE_VALID ;
 int OS_REG_READ (struct ath_hal*,int ) ;

HAL_BOOL
ar5210IsKeyCacheEntryValid(struct ath_hal *ah, uint16_t entry)
{
 if (entry < AR_KEYTABLE_SIZE) {
  uint32_t val = OS_REG_READ(ah, AR_KEYTABLE_MAC1(entry));
  if (val & AR_KEYTABLE_VALID)
   return AH_TRUE;
 }
 return AH_FALSE;
}
