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
struct ath_hal_5212 {struct ar5212AniState* ah_curani; } ;
struct ath_hal {int dummy; } ;
struct ar5212AniState {scalar_t__ firstepLevel; scalar_t__ spurImmunityLevel; scalar_t__ noiseImmunityLevel; scalar_t__ ofdmWeakSigDetectOff; struct ar5212AniParams* params; } ;
struct ar5212AniParams {scalar_t__ rssiThrHigh; scalar_t__ rssiThrLow; } ;
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ ah_opmode; } ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 TYPE_1__* FUNC1 (struct ath_hal*) ; 
 scalar_t__ AH_TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 scalar_t__ FUNC4 (struct ath_hal_5212*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HAL_ANI_FIRSTEP_LEVEL ; 
 int /*<<< orphan*/  HAL_ANI_NOISE_IMMUNITY_LEVEL ; 
 int /*<<< orphan*/  HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION ; 
 int /*<<< orphan*/  HAL_ANI_SPUR_IMMUNITY_LEVEL ; 
 scalar_t__ HAL_M_HOSTAP ; 
 scalar_t__ FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct ath_hal *ah)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);
	struct ar5212AniState *aniState;
	const struct ar5212AniParams *params;
	
	FUNC5(FUNC2(ah));

	aniState = ahp->ah_curani;
	params = aniState->params;

	/*
	 * In the case of AP mode operation, we cannot bucketize beacons
	 * according to RSSI.  Instead, lower Firstep level, down to min, and
	 * simply return.
	 */
	if (FUNC1(ah)->ah_opmode == HAL_M_HOSTAP) {
		if (aniState->firstepLevel > 0) {
			if (FUNC6(ah, HAL_ANI_FIRSTEP_LEVEL,
			    aniState->firstepLevel - 1))
				return;
		}
	}
	if (FUNC3(ah)) {
		int32_t rssi = FUNC4(ahp);
		if (rssi > params->rssiThrHigh) {
			/* 
			 * Beacon signal is high, leave ofdm weak signal
			 * detection off or it may oscillate.  Let it fall
			 * through.
			 */
		} else if (rssi > params->rssiThrLow) {
			/*
			 * Beacon rssi in mid range, turn on ofdm weak signal
			 * detection or lower firstep level.
			 */
			if (aniState->ofdmWeakSigDetectOff) {
				if (FUNC6(ah,
				    HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION,
				    AH_TRUE))
					return;
			}
			if (aniState->firstepLevel > 0) {
				if (FUNC6(ah, HAL_ANI_FIRSTEP_LEVEL,
						 aniState->firstepLevel - 1))
					return;
			}
		} else {
			/*
			 * Beacon rssi is low, reduce firstep level.
			 */
			if (aniState->firstepLevel > 0) {
				if (FUNC6(ah, HAL_ANI_FIRSTEP_LEVEL,
						 aniState->firstepLevel - 1))
					return;
			}
		}
	}
	/* then lower spur immunity level, down to zero */
	if (aniState->spurImmunityLevel > 0) {
		if (FUNC6(ah, HAL_ANI_SPUR_IMMUNITY_LEVEL,
				 aniState->spurImmunityLevel - 1))
			return;
	}
	/* 
	 * if all else fails, lower noise immunity level down to a min value
	 * zero for now
	 */
	if (aniState->noiseImmunityLevel > 0) {
		if (FUNC6(ah, HAL_ANI_NOISE_IMMUNITY_LEVEL,
				 aniState->noiseImmunityLevel - 1))
			return;
	}
}