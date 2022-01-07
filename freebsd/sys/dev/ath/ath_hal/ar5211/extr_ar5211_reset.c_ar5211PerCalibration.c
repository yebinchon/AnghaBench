
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_TRUE ;
 int ar5211PerCalibrationN (struct ath_hal*,struct ieee80211_channel*,int,int ,int *) ;

HAL_BOOL
ar5211PerCalibration(struct ath_hal *ah, struct ieee80211_channel *chan,
 HAL_BOOL *isIQdone)
{
 return ar5211PerCalibrationN(ah, chan, 0x1, AH_TRUE, isIQdone);
}
