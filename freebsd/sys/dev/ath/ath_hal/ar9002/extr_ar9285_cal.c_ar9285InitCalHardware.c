
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 scalar_t__ AR_SREV_KITE (struct ath_hal*) ;
 scalar_t__ AR_SREV_KITE_10_OR_LATER (struct ath_hal*) ;
 int ar9285_hw_clc (struct ath_hal*,struct ieee80211_channel const*) ;

HAL_BOOL
ar9285InitCalHardware(struct ath_hal *ah,
    const struct ieee80211_channel *chan)
{
 if (AR_SREV_KITE(ah) && AR_SREV_KITE_10_OR_LATER(ah) &&
     (! ar9285_hw_clc(ah, chan)))
  return AH_FALSE;

 return AH_TRUE;
}
