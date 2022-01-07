
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ath_hal_5211 {scalar_t__ ah_bssid; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_5211* AH5211 (struct ath_hal*) ;
 int AR_BSS_ID0 ;
 int AR_BSS_ID1 ;
 int AR_BSS_ID1_AID_S ;
 int IEEE80211_ADDR_LEN ;
 int LE_READ_2 (scalar_t__) ;
 int LE_READ_4 (scalar_t__) ;
 int OS_MEMCPY (scalar_t__,int const*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar5211WriteAssocid(struct ath_hal *ah, const uint8_t *bssid, uint16_t assocId)
{
 struct ath_hal_5211 *ahp = AH5211(ah);


 OS_MEMCPY(ahp->ah_bssid, bssid, IEEE80211_ADDR_LEN);
 OS_REG_WRITE(ah, AR_BSS_ID0, LE_READ_4(ahp->ah_bssid));
 OS_REG_WRITE(ah, AR_BSS_ID1, LE_READ_2(ahp->ah_bssid+4) |
         ((assocId & 0x3fff)<<AR_BSS_ID1_AID_S));
}
