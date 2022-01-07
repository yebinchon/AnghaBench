
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ath_hal_5210 {int ah_macaddr; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5210* AH5210 (struct ath_hal*) ;
 int IEEE80211_ADDR_LEN ;
 int OS_MEMCPY (int *,int ,int ) ;

void
ar5210GetMacAddress(struct ath_hal *ah, uint8_t *mac)
{
 struct ath_hal_5210 *ahp = AH5210(ah);

 OS_MEMCPY(mac, ahp->ah_macaddr, IEEE80211_ADDR_LEN);
}
