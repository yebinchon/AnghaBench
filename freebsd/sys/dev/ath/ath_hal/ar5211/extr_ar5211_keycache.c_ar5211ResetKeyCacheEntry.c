
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int AR_KEYTABLE_KEY0 (scalar_t__) ;
 int AR_KEYTABLE_KEY1 (scalar_t__) ;
 int AR_KEYTABLE_KEY2 (scalar_t__) ;
 int AR_KEYTABLE_KEY3 (scalar_t__) ;
 int AR_KEYTABLE_KEY4 (scalar_t__) ;
 int AR_KEYTABLE_MAC0 (scalar_t__) ;
 int AR_KEYTABLE_MAC1 (scalar_t__) ;
 scalar_t__ AR_KEYTABLE_SIZE ;
 int AR_KEYTABLE_TYPE (scalar_t__) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

HAL_BOOL
ar5211ResetKeyCacheEntry(struct ath_hal *ah, uint16_t entry)
{
 if (entry < AR_KEYTABLE_SIZE) {
  OS_REG_WRITE(ah, AR_KEYTABLE_KEY0(entry), 0);
  OS_REG_WRITE(ah, AR_KEYTABLE_KEY1(entry), 0);
  OS_REG_WRITE(ah, AR_KEYTABLE_KEY2(entry), 0);
  OS_REG_WRITE(ah, AR_KEYTABLE_KEY3(entry), 0);
  OS_REG_WRITE(ah, AR_KEYTABLE_KEY4(entry), 0);
  OS_REG_WRITE(ah, AR_KEYTABLE_TYPE(entry), 0);
  OS_REG_WRITE(ah, AR_KEYTABLE_MAC0(entry), 0);
  OS_REG_WRITE(ah, AR_KEYTABLE_MAC1(entry), 0);
  return AH_TRUE;
 }
 return AH_FALSE;
}
