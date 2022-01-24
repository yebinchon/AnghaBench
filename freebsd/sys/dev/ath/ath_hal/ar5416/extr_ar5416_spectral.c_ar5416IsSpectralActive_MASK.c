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
typedef  int /*<<< orphan*/  uint32_t ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 

HAL_BOOL
FUNC2(struct ath_hal *ah)
{
	uint32_t val;

	val = FUNC1(ah, AR_PHY_SPECTRAL_SCAN);
	return FUNC0(val, AR_PHY_SPECTRAL_SCAN_ACTIVE);
}