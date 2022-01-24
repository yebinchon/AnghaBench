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
typedef  int /*<<< orphan*/  HAL_OPMODE ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PCICFG ; 
 int /*<<< orphan*/  AR_PCICFG_SCLK_RATE_IND ; 
 int /*<<< orphan*/  AR_PCICFG_SCLK_SEL ; 
 int /*<<< orphan*/  AR_PHY_M_SLEEP ; 
 int /*<<< orphan*/  AR_PHY_REFCLKDLY ; 
 int /*<<< orphan*/  AR_PHY_REFCLKPD ; 
 int /*<<< orphan*/  AR_PHY_SLEEP_CTR_CONTROL ; 
 int /*<<< orphan*/  AR_PHY_SLEEP_CTR_LIMIT ; 
 int /*<<< orphan*/  AR_PHY_SLEEP_SCAL ; 
 int /*<<< orphan*/  AR_TSF_PARM ; 
 int /*<<< orphan*/  AR_USEC ; 
 int /*<<< orphan*/  AR_USEC_USEC32 ; 
 scalar_t__ FUNC0 (struct ath_hal*) ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct ath_hal*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct ath_hal *ah, HAL_OPMODE opmode)
{
	if (FUNC4(ah, opmode)) {
		/* # Set sleep clock rate back to 32 MHz. */
		FUNC2(ah, AR_PCICFG, AR_PCICFG_SCLK_RATE_IND, 0);
		FUNC2(ah, AR_PCICFG, AR_PCICFG_SCLK_SEL, 0);

		FUNC3(ah, AR_TSF_PARM, 1);	/* 32 MHz TSF incr */
		FUNC2(ah, AR_USEC, AR_USEC_USEC32,
		    FUNC1(ah) || FUNC0(ah) ? 39 : 31);

		/*
		 * Restore BB registers to power-on defaults
		 */
		FUNC3(ah, AR_PHY_SLEEP_CTR_CONTROL, 0x1f);
		FUNC3(ah, AR_PHY_SLEEP_CTR_LIMIT,   0x7f);
		FUNC3(ah, AR_PHY_SLEEP_SCAL,        0x0e);
		FUNC3(ah, AR_PHY_M_SLEEP,           0x0c);
		FUNC3(ah, AR_PHY_REFCLKDLY,         0xff);
		FUNC3(ah, AR_PHY_REFCLKPD,
		    FUNC1(ah) || FUNC0(ah) ?  0x14 : 0x18);
	}
}