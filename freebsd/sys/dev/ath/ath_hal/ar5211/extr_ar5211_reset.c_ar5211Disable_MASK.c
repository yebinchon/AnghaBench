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
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int AR_RC_BB ; 
 int AR_RC_MAC ; 
 int AR_RC_PCI ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int) ; 

HAL_BOOL
FUNC3(struct ath_hal *ah)
{
	if (!FUNC1(ah, HAL_PM_AWAKE, AH_TRUE))
		return AH_FALSE;
	/*
	 * Reset the HW - PCI must be reset after the rest of the
	 * device has been reset.
	 */
	if (!FUNC2(ah, AR_RC_MAC | AR_RC_BB | AR_RC_PCI))
		return AH_FALSE;
	FUNC0(2100);	   /* 8245 @ 96Mhz hangs with 2000us. */

	return AH_TRUE;
}