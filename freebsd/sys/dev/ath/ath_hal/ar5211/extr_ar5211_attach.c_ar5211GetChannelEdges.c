
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int AR_EEP_BMODE ;
 int IEEE80211_CHAN_2GHZ ;
 int IEEE80211_CHAN_5GHZ ;
 scalar_t__ ath_hal_eepromGetFlag (struct ath_hal*,int ) ;

__attribute__((used)) static HAL_BOOL
ar5211GetChannelEdges(struct ath_hal *ah,
 uint16_t flags, uint16_t *low, uint16_t *high)
{
 if (flags & IEEE80211_CHAN_5GHZ) {
  *low = 4920;
  *high = 6100;
  return AH_TRUE;
 }
 if (flags & IEEE80211_CHAN_2GHZ &&
     ath_hal_eepromGetFlag(ah, AR_EEP_BMODE)) {
  *low = 2312;
  *high = 2732;
  return AH_TRUE;
 }
 return AH_FALSE;
}
