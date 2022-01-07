
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct ath_hal_5416 {int * ah_keytype; } ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {size_t kv_type; } ;
typedef TYPE_1__ HAL_KEYVAL ;
typedef int HAL_BOOL ;


 struct ath_hal_5416* AH5416 (struct ath_hal*) ;
 int AH_FALSE ;
 int AH_TRUE ;
 scalar_t__ ar5212SetKeyCacheEntry (struct ath_hal*,size_t,TYPE_1__ const*,int const*,int) ;
 int * keyType ;

HAL_BOOL
ar5416SetKeyCacheEntry(struct ath_hal *ah, uint16_t entry,
                       const HAL_KEYVAL *k, const uint8_t *mac,
                       int xorKey)
{
 struct ath_hal_5416 *ahp = AH5416(ah);

 if (ar5212SetKeyCacheEntry(ah, entry, k, mac, xorKey)) {
  ahp->ah_keytype[entry] = keyType[k->kv_type];
  return AH_TRUE;
 } else
  return AH_FALSE;
}
