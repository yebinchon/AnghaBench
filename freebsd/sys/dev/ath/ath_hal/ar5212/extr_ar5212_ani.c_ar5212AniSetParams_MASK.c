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
struct ath_hal_5212 {int ah_procPhyErr; int /*<<< orphan*/  ah_ani; int /*<<< orphan*/  ah_aniParams5; int /*<<< orphan*/  ah_aniParams24; } ;
struct ath_hal {int dummy; } ;
struct ar5212AniParams {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ah_opmode; int /*<<< orphan*/  ah_curchan; } ;
typedef  int HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 int AH_FALSE ; 
 TYPE_1__* FUNC1 (struct ath_hal*) ; 
 int AH_TRUE ; 
 int HAL_ANI_ENA ; 
 int /*<<< orphan*/  HAL_ANI_MODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ar5212AniParams const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ *) ; 

HAL_BOOL
FUNC7(struct ath_hal *ah, const struct ar5212AniParams *params24,
	const struct ar5212AniParams *params5)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);
	HAL_BOOL ena = (ahp->ah_procPhyErr & HAL_ANI_ENA) != 0;

	FUNC4(ah, HAL_ANI_MODE, AH_FALSE);

	FUNC2(&ahp->ah_aniParams24, params24, sizeof(*params24));
	FUNC6(ah, &ahp->ah_aniParams24);
	FUNC2(&ahp->ah_aniParams5, params5, sizeof(*params5));
	FUNC6(ah, &ahp->ah_aniParams5);

	FUNC3(ahp->ah_ani, sizeof(ahp->ah_ani));
	FUNC5(ah, FUNC1(ah)->ah_curchan,
	    FUNC1(ah)->ah_opmode, AH_FALSE);

	FUNC4(ah, HAL_ANI_MODE, ena);

	return AH_TRUE;
}