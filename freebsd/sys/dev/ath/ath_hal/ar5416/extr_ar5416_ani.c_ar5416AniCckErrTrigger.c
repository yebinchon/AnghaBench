
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_channel {int dummy; } ;
struct ath_hal_5212 {struct ar5212AniState* ah_curani; } ;
struct ath_hal {int dummy; } ;
struct ar5212AniState {scalar_t__ noiseImmunityLevel; scalar_t__ firstepLevel; struct ar5212AniParams* params; } ;
struct ar5212AniParams {scalar_t__ maxNoiseImmunityLevel; scalar_t__ rssiThrLow; scalar_t__ maxFirstepLevel; } ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {int ah_ani_function; } ;
struct TYPE_3__ {struct ieee80211_channel* ah_curchan; } ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 TYPE_2__* AH5416 (struct ath_hal*) ;
 struct ieee80211_channel const* AH_NULL ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int ANI_ENA (struct ath_hal*) ;
 scalar_t__ ANI_ENA_RSSI (struct ath_hal*) ;
 scalar_t__ BEACON_RSSI (struct ath_hal_5212*) ;
 int HALASSERT (int) ;
 int HAL_ANI_FIRSTEP_LEVEL ;
 int HAL_ANI_NOISE_IMMUNITY_LEVEL ;
 scalar_t__ IEEE80211_IS_CHAN_CCK (struct ieee80211_channel const*) ;
 int ar5416AniControl (struct ath_hal*,int,scalar_t__) ;

__attribute__((used)) static void
ar5416AniCckErrTrigger(struct ath_hal *ah)
{
 struct ath_hal_5212 *ahp = AH5212(ah);
 const struct ieee80211_channel *chan = AH_PRIVATE(ah)->ah_curchan;
 struct ar5212AniState *aniState;
 const struct ar5212AniParams *params;

 HALASSERT(chan != AH_NULL);

 if (!ANI_ENA(ah))
  return;


 aniState = ahp->ah_curani;
 params = aniState->params;
 if ((AH5416(ah)->ah_ani_function & (1 << HAL_ANI_NOISE_IMMUNITY_LEVEL) &&
     aniState->noiseImmunityLevel+1 < params->maxNoiseImmunityLevel)) {
  ar5416AniControl(ah, HAL_ANI_NOISE_IMMUNITY_LEVEL,
     aniState->noiseImmunityLevel + 1);
  return;
 }

 if (ANI_ENA_RSSI(ah)) {
  int32_t rssi = BEACON_RSSI(ahp);
  if (rssi > params->rssiThrLow) {




   if (aniState->firstepLevel < params->maxFirstepLevel)
    ar5416AniControl(ah, HAL_ANI_FIRSTEP_LEVEL,
       aniState->firstepLevel + 1);
  } else {




   if (IEEE80211_IS_CHAN_CCK(chan)) {
    if (aniState->firstepLevel > 0)
     ar5416AniControl(ah,
         HAL_ANI_FIRSTEP_LEVEL, 0);
   }
  }
 }
}
