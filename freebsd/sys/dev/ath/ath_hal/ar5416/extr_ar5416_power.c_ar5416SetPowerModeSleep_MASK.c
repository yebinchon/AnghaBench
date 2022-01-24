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

/* Variables and functions */
 int /*<<< orphan*/  AR_RC ; 
 int AR_RC_AHB ; 
 int AR_RC_HOSTIF ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE_EN ; 
 int /*<<< orphan*/  AR_RTC_RESET ; 
 int /*<<< orphan*/  AR_RTC_RESET_EN ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int /*<<< orphan*/  AR_STA_ID1_PWR_SAV ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct ath_hal *ah, int setChip)
{
	FUNC3(ah, AR_STA_ID1, AR_STA_ID1_PWR_SAV);
	if (setChip) {
		/* Clear the RTC force wake bit to allow the mac to sleep */
		FUNC2(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_EN);
		if (! FUNC0(ah))
			FUNC4(ah, AR_RC, AR_RC_AHB|AR_RC_HOSTIF);
		/* Shutdown chip. Active low */
		if (! FUNC1(ah))
			FUNC2(ah, AR_RTC_RESET, AR_RTC_RESET_EN);
	}
}