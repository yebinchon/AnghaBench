
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int const* AH_NULL ;
 int AH_TRUE ;
 int AR_KEYTABLE_MAC0 (scalar_t__) ;
 int AR_KEYTABLE_MAC1 (scalar_t__) ;
 scalar_t__ AR_KEYTABLE_SIZE ;
 int AR_KEYTABLE_VALID ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

HAL_BOOL
ar5210SetKeyCacheEntryMac(struct ath_hal *ah, uint16_t entry, const uint8_t *mac)
{
 uint32_t macHi, macLo;

 if (entry < AR_KEYTABLE_SIZE) {




  if (mac != AH_NULL) {
   macHi = (mac[5] << 8) | mac[4];
   macLo = (mac[3] << 24)| (mac[2] << 16)
         | (mac[1] << 8) | mac[0];
   macLo >>= 1;
   macLo |= (macHi & 1) << 31;
   macHi >>= 1;
  } else {
   macLo = macHi = 0;
  }

  OS_REG_WRITE(ah, AR_KEYTABLE_MAC0(entry), macLo);
  OS_REG_WRITE(ah, AR_KEYTABLE_MAC1(entry),
   macHi | AR_KEYTABLE_VALID);
  return AH_TRUE;
 }
 return AH_FALSE;
}
