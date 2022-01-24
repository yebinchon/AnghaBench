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
typedef  scalar_t__ uint32_t ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN ; 
 scalar_t__ AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT ; 
 scalar_t__ FUNC0 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*) ; 

void
FUNC3(struct ath_hal *ah, uint32_t restoreval)
{
	uint32_t curval;

	FUNC2(ah);

	curval = FUNC0(ah, AR_PHY_SPECTRAL_SCAN);

	if (restoreval != curval) {
		restoreval |= AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT;
		FUNC1(ah, AR_PHY_SPECTRAL_SCAN, restoreval);
	}
	return;
}