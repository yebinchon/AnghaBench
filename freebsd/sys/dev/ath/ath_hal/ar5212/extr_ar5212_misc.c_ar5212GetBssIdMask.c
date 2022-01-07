
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ath_hal_5212 {int ah_bssidmask; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int IEEE80211_ADDR_LEN ;
 int OS_MEMCPY (int *,int ,int ) ;

void
ar5212GetBssIdMask(struct ath_hal *ah, uint8_t *mask)
{
 struct ath_hal_5212 *ahp = AH5212(ah);

 OS_MEMCPY(mask, ahp->ah_bssidmask, IEEE80211_ADDR_LEN);
}
