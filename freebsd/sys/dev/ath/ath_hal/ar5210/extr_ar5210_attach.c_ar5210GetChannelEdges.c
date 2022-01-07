
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int IEEE80211_CHAN_5GHZ ;

__attribute__((used)) static HAL_BOOL
ar5210GetChannelEdges(struct ath_hal *ah,
 uint16_t flags, uint16_t *low, uint16_t *high)
{
 if (flags & IEEE80211_CHAN_5GHZ) {
  *low = 5120;
  *high = 5430;
  return AH_TRUE;
 } else {
  return AH_FALSE;
 }
}
