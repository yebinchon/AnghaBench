
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {int ah_diversityControl; } ;
struct TYPE_3__ {struct ieee80211_channel* ah_curchan; } ;
typedef int HAL_BOOL ;
typedef int HAL_ANT_SETTING ;


 TYPE_2__* AH5211 (struct ath_hal*) ;
 struct ieee80211_channel const* AH_NULL ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int ar5211SetAntennaSwitchInternal (struct ath_hal*,int ,struct ieee80211_channel const*) ;

HAL_BOOL
ar5211SetAntennaSwitch(struct ath_hal *ah, HAL_ANT_SETTING settings)
{
 const struct ieee80211_channel *chan = AH_PRIVATE(ah)->ah_curchan;

 if (chan == AH_NULL) {
  AH5211(ah)->ah_diversityControl = settings;
  return AH_TRUE;
 }
 return ar5211SetAntennaSwitchInternal(ah, settings, chan);
}
