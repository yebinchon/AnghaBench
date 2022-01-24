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
struct ath_hal_5212 {int /*<<< orphan*/  ah_procPhyErr; int /*<<< orphan*/  ah_aniParams24; scalar_t__ ah_hasHwPhyCounters; int /*<<< orphan*/  ah_ani; int /*<<< orphan*/  ah_aniParams5; } ;
struct ath_hal {int dummy; } ;
struct ar5212AniParams {int dummy; } ;
struct TYPE_3__ {scalar_t__ halHwPhyCounterSupport; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef  scalar_t__ HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 struct ar5212AniParams const* AH_NULL ; 
 TYPE_2__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  HAL_ANI_ENA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ar5212AniParams const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ *) ; 

void
FUNC7(struct ath_hal *ah, const struct ar5212AniParams *params24,
	const struct ar5212AniParams *params5, HAL_BOOL enable)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);

	ahp->ah_hasHwPhyCounters =
		FUNC1(ah)->ah_caps.halHwPhyCounterSupport;

	if (params24 != AH_NULL) {
		FUNC3(&ahp->ah_aniParams24, params24, sizeof(*params24));
		FUNC6(ah, &ahp->ah_aniParams24);
	}
	if (params5 != AH_NULL) {
		FUNC3(&ahp->ah_aniParams5, params5, sizeof(*params5));
		FUNC6(ah, &ahp->ah_aniParams5);
	}

	FUNC4(ahp->ah_ani, sizeof(ahp->ah_ani));
	if (ahp->ah_hasHwPhyCounters) {
		/* Enable MIB Counters */
		FUNC5(ah, &ahp->ah_aniParams24 /*XXX*/);
	}
	if (enable) {		/* Enable ani now */
		FUNC2(params24 != AH_NULL && params5 != AH_NULL);
		ahp->ah_procPhyErr |= HAL_ANI_ENA;
	} else {
		ahp->ah_procPhyErr &= ~HAL_ANI_ENA;
	}
}