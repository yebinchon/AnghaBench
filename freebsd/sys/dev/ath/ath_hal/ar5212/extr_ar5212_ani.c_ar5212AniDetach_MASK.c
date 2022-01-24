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
struct ath_hal_5212 {scalar_t__ ah_hasHwPhyCounters; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_5212* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  HAL_DEBUG_ANI ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*) ; 

void
FUNC3(struct ath_hal *ah)
{
	struct ath_hal_5212 *ahp = FUNC0(ah);

	FUNC1(ah, HAL_DEBUG_ANI, "Detaching Ani\n");
	if (ahp->ah_hasHwPhyCounters)
		FUNC2(ah);
}