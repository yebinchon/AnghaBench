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
typedef  int uint32_t ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE ; 
 int AR_RTC_FORCE_WAKE_EN ; 
 int AR_RTC_FORCE_WAKE_ON_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  HAL_RESET_COLD 130 
#define  HAL_RESET_POWER_ON 129 
#define  HAL_RESET_WARM 128 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*) ; 

HAL_BOOL
FUNC4(struct ath_hal *ah, uint32_t type)
{
	/*
	 * Set force wake
	 */
	FUNC1(ah, AR_RTC_FORCE_WAKE,
	    AR_RTC_FORCE_WAKE_EN | AR_RTC_FORCE_WAKE_ON_INT);

	switch (type) {
	case HAL_RESET_POWER_ON:
		return FUNC3(ah);
	case HAL_RESET_WARM:
	case HAL_RESET_COLD:
		return FUNC2(ah, type);
	default:
		FUNC0(AH_FALSE);
		return AH_FALSE;
	}
}