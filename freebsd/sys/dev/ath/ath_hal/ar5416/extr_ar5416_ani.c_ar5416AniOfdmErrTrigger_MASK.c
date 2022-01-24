#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_channel {int dummy; } ;
struct ath_hal_5212 {struct ar5212AniState* ah_curani; } ;
struct ath_hal {int dummy; } ;
struct ar5212AniState {scalar_t__ noiseImmunityLevel; scalar_t__ spurImmunityLevel; scalar_t__ firstepLevel; scalar_t__ ofdmWeakSigDetectOff; struct ar5212AniParams* params; } ;
struct ar5212AniParams {scalar_t__ maxNoiseImmunityLevel; scalar_t__ maxSpurImmunityLevel; scalar_t__ maxFirstepLevel; scalar_t__ rssiThrHigh; scalar_t__ rssiThrLow; } ;
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ ah_opmode; struct ieee80211_channel* ah_curchan; } ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 scalar_t__ AH_FALSE ; 
 struct ieee80211_channel const* AH_NULL ; 
 TYPE_1__* FUNC1 (struct ath_hal*) ; 
 scalar_t__ AH_TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 scalar_t__ FUNC4 (struct ath_hal_5212*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  HAL_ANI_FIRSTEP_LEVEL ; 
 int /*<<< orphan*/  HAL_ANI_NOISE_IMMUNITY_LEVEL ; 
 int /*<<< orphan*/  HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION ; 
 int /*<<< orphan*/  HAL_ANI_SPUR_IMMUNITY_LEVEL ; 
 scalar_t__ HAL_M_HOSTAP ; 
 scalar_t__ FUNC6 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC7 (struct ath_hal*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC8(struct ath_hal *ah)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);
	const struct ieee80211_channel *chan = FUNC1(ah)->ah_curchan;
	struct ar5212AniState *aniState;
	const struct ar5212AniParams *params;

	FUNC5(chan != AH_NULL);

	if (!FUNC2(ah))
		return;

	aniState = ahp->ah_curani;
	params = aniState->params;
	/* First, raise noise immunity level, up to max */
	if (aniState->noiseImmunityLevel+1 < params->maxNoiseImmunityLevel) {
		if (FUNC7(ah, HAL_ANI_NOISE_IMMUNITY_LEVEL, 
				 aniState->noiseImmunityLevel + 1))
			return;
	}
	/* then, raise spur immunity level, up to max */
	if (aniState->spurImmunityLevel+1 < params->maxSpurImmunityLevel) {
		if (FUNC7(ah, HAL_ANI_SPUR_IMMUNITY_LEVEL,
				 aniState->spurImmunityLevel + 1))
			return;
	}

	/*
	 * In the case of AP mode operation, we cannot bucketize beacons
	 * according to RSSI.  Instead, raise Firstep level, up to max, and
	 * simply return.
	 */
	if (FUNC1(ah)->ah_opmode == HAL_M_HOSTAP) {
		if (aniState->firstepLevel < params->maxFirstepLevel) {
			if (FUNC7(ah, HAL_ANI_FIRSTEP_LEVEL,
			    aniState->firstepLevel + 1))
				return;
		}
	}
	if (FUNC3(ah)) {
		int32_t rssi = FUNC4(ahp);
		if (rssi > params->rssiThrHigh) {
			/*
			 * Beacon rssi is high, can turn off ofdm
			 * weak sig detect.
			 */
			if (!aniState->ofdmWeakSigDetectOff) {
				FUNC7(ah,
				    HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION,
				    AH_FALSE);
				FUNC7(ah,
				    HAL_ANI_SPUR_IMMUNITY_LEVEL, 0);
				return;
			}
			/* 
			 * If weak sig detect is already off, as last resort,
			 * raise firstep level 
			 */
			if (aniState->firstepLevel < params->maxFirstepLevel) {
				if (FUNC7(ah, HAL_ANI_FIRSTEP_LEVEL,
						 aniState->firstepLevel + 1))
					return;
			}
		} else if (rssi > params->rssiThrLow) {
			/* 
			 * Beacon rssi in mid range, need ofdm weak signal
			 * detect, but we can raise firststepLevel.
			 */
			if (aniState->ofdmWeakSigDetectOff)
				FUNC7(ah,
				    HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION,
				    AH_TRUE);
			if (aniState->firstepLevel < params->maxFirstepLevel)
				if (FUNC7(ah, HAL_ANI_FIRSTEP_LEVEL,
				     aniState->firstepLevel + 1))
				return;
		} else {
			/* 
			 * Beacon rssi is low, if in 11b/g mode, turn off ofdm
			 * weak signal detection and zero firstepLevel to
			 * maximize CCK sensitivity 
			 */
			if (FUNC6(chan)) {
				if (!aniState->ofdmWeakSigDetectOff)
					FUNC7(ah,
					    HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION,
					    AH_FALSE);
				if (aniState->firstepLevel > 0)
					if (FUNC7(ah,
					     HAL_ANI_FIRSTEP_LEVEL, 0))
						return;
			}
		}
	}
}