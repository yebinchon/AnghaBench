
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_TRUE ;

HAL_BOOL
ar5210ResetCalValid(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 return AH_TRUE;
}
