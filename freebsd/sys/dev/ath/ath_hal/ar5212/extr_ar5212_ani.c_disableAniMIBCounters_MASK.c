#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ath_hal_5212 {int /*<<< orphan*/  ah_mibStats; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHYCNTMASK1 ; 
 int /*<<< orphan*/  AR_PHYCNTMASK2 ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  HAL_DEBUG_ANI ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void 
FUNC5(struct ath_hal *ah)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);

	FUNC1(ah, HAL_DEBUG_ANI, "Disable MIB counters\n");

	FUNC4(ah, &ahp->ah_mibStats);	/* save stats */
	FUNC3(ah);			/* disable everything */

	FUNC2(ah, AR_PHYCNTMASK1, 0);
	FUNC2(ah, AR_PHYCNTMASK2, 0);
}