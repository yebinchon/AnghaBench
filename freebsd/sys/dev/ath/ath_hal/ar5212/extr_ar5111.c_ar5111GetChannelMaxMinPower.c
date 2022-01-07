
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef int int16_t ;
typedef int HAL_BOOL ;


 int AH_FALSE ;

__attribute__((used)) static HAL_BOOL
ar5111GetChannelMaxMinPower(struct ath_hal *ah,
 const struct ieee80211_channel *chan,
 int16_t *maxPow, int16_t *minPow)
{


 return AH_FALSE;
}
