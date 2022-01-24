#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_channel {int dummy; } ;
struct ath_hal_5212 {struct ar5212AniState* ah_curani; } ;
struct ath_hal {int dummy; } ;
struct ar5212AniState {scalar_t__ noiseImmunityLevel; scalar_t__ firstepLevel; struct ar5212AniParams* params; } ;
struct ar5212AniParams {scalar_t__ maxNoiseImmunityLevel; scalar_t__ rssiThrLow; scalar_t__ maxFirstepLevel; } ;
typedef  scalar_t__ int32_t ;
struct TYPE_4__ {int ah_ani_function; } ;
struct TYPE_3__ {struct ieee80211_channel* ah_curchan; } ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 TYPE_2__* FUNC1 (struct ath_hal*) ; 
 struct ieee80211_channel const* AH_NULL ; 
 TYPE_1__* FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*) ; 
 scalar_t__ FUNC4 (struct ath_hal*) ; 
 scalar_t__ FUNC5 (struct ath_hal_5212*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int HAL_ANI_FIRSTEP_LEVEL ; 
 int HAL_ANI_NOISE_IMMUNITY_LEVEL ; 
 scalar_t__ FUNC7 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*,int,scalar_t__) ; 

__attribute__((used)) static void
FUNC9(struct ath_hal *ah)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);
	const struct ieee80211_channel *chan = FUNC2(ah)->ah_curchan;
	struct ar5212AniState *aniState;
	const struct ar5212AniParams *params;

	FUNC6(chan != AH_NULL);

	if (!FUNC3(ah))
		return;

	/* first, raise noise immunity level, up to max */
	aniState = ahp->ah_curani;
	params = aniState->params;
	if ((FUNC1(ah)->ah_ani_function & (1 << HAL_ANI_NOISE_IMMUNITY_LEVEL) &&
	    aniState->noiseImmunityLevel+1 < params->maxNoiseImmunityLevel)) {
		FUNC8(ah, HAL_ANI_NOISE_IMMUNITY_LEVEL,
				 aniState->noiseImmunityLevel + 1);
		return;
	}

	if (FUNC4(ah)) {
		int32_t rssi = FUNC5(ahp);
		if (rssi >  params->rssiThrLow) {
			/*
			 * Beacon signal in mid and high range,
			 * raise firstep level.
			 */
			if (aniState->firstepLevel < params->maxFirstepLevel)
				FUNC8(ah, HAL_ANI_FIRSTEP_LEVEL,
						 aniState->firstepLevel + 1);
		} else {
			/*
			 * Beacon rssi is low, zero firstep level to maximize
			 * CCK sensitivity in 11b/g mode.
			 */
			if (FUNC7(chan)) {
				if (aniState->firstepLevel > 0)
					FUNC8(ah,
					    HAL_ANI_FIRSTEP_LEVEL, 0);
			}
		}
	}
}