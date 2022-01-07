
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ath_hal_5212 {scalar_t__ ah_bssidmask; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_BSSMSKL ;
 int AR_BSSMSKU ;
 int IEEE80211_ADDR_LEN ;
 int LE_READ_2 (scalar_t__) ;
 int LE_READ_4 (scalar_t__) ;
 int OS_MEMCPY (scalar_t__,int const*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

HAL_BOOL
ar5212SetBssIdMask(struct ath_hal *ah, const uint8_t *mask)
{
 struct ath_hal_5212 *ahp = AH5212(ah);


 OS_MEMCPY(ahp->ah_bssidmask, mask, IEEE80211_ADDR_LEN);

 OS_REG_WRITE(ah, AR_BSSMSKL, LE_READ_4(ahp->ah_bssidmask));
 OS_REG_WRITE(ah, AR_BSSMSKU, LE_READ_2(ahp->ah_bssidmask + 4));
 return AH_TRUE;
}
