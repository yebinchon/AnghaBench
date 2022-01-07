
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_channel {int dummy; } ;
struct ath_hal_5212 {TYPE_1__* ah_rfHal; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int (* setChannel ) (struct ath_hal*,struct ieee80211_channel const*) ;} ;
typedef int HAL_BOOL ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AH_FALSE ;
 int AH_TRUE ;
 int stub1 (struct ath_hal*,struct ieee80211_channel const*) ;

HAL_BOOL
ar5212SetChannel(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 struct ath_hal_5212 *ahp = AH5212(ah);


 if (!ahp->ah_rfHal->setChannel(ah, chan))
  return AH_FALSE;
 return AH_TRUE;
}
