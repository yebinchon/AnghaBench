
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct ath_hal_5416 {int * ah_keytype; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 struct ath_hal_5416* AH5416 (struct ath_hal*) ;
 int AH_FALSE ;
 int AH_TRUE ;
 size_t HAL_CIPHER_CLR ;
 scalar_t__ ar5212ResetKeyCacheEntry (struct ath_hal*,size_t) ;
 int * keyType ;

HAL_BOOL
ar5416ResetKeyCacheEntry(struct ath_hal *ah, uint16_t entry)
{
 struct ath_hal_5416 *ahp = AH5416(ah);

 if (ar5212ResetKeyCacheEntry(ah, entry)) {
  ahp->ah_keytype[entry] = keyType[HAL_CIPHER_CLR];
  return AH_TRUE;
 } else
  return AH_FALSE;
}
