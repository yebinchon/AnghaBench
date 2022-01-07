
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_powerLimit; struct ieee80211_channel* ah_curchan; } ;
typedef int HAL_BOOL ;


 int AH_MIN (int ,int ) ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int MAX_RATE_POWER ;
 int SAVE_CCK (struct ath_hal*,struct ieee80211_channel*,int ) ;
 int ar5212SetTransmitPower (struct ath_hal*,struct ieee80211_channel*,int *) ;

HAL_BOOL
ar5212SetTxPowerLimit(struct ath_hal *ah, uint32_t limit)
{

 struct ieee80211_channel dummy = *AH_PRIVATE(ah)->ah_curchan;
 uint16_t dummyXpdGains[2];
 HAL_BOOL isBmode;

 SAVE_CCK(ah, &dummy, isBmode);
 AH_PRIVATE(ah)->ah_powerLimit = AH_MIN(limit, MAX_RATE_POWER);
 return ar5212SetTransmitPower(ah, &dummy, dummyXpdGains);
}
