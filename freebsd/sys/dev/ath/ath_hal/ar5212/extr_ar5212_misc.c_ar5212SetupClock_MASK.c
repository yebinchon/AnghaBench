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
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 scalar_t__ FUNC4 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct ath_hal*,int /*<<< orphan*/ ) ; 

void
FUNC8(struct ath_hal *ah, HAL_OPMODE opmode)
{
	if (FUNC7(ah, opmode)) {
		/*
		 * Enable clocks to be turned OFF in BB during sleep
		 * and also enable turning OFF 32MHz/40MHz Refclk
		 * from A2.
		 */
		FUNC6(ah, AR_PHY_SLEEP_CTR_CONTROL, 0x1f);
		FUNC6(ah, AR_PHY_REFCLKPD,
		    FUNC4(ah) || FUNC2(ah) ? 0x14 : 0x18);
		FUNC5(ah, AR_USEC, AR_USEC_USEC32, 1);
		FUNC6(ah, AR_TSF_PARM, 61);  /* 32 KHz TSF incr */
		FUNC5(ah, AR_PCICFG, AR_PCICFG_SCLK_SEL, 1);

		if (FUNC0(ah) || FUNC2(ah) || FUNC1(ah)) {
			FUNC6(ah, AR_PHY_SLEEP_CTR_LIMIT,   0x26);
			FUNC6(ah, AR_PHY_SLEEP_SCAL,        0x0d);
			FUNC6(ah, AR_PHY_M_SLEEP,           0x07);
			FUNC6(ah, AR_PHY_REFCLKDLY,         0x3f);
			/* # Set sleep clock rate to 32 KHz. */
			FUNC5(ah, AR_PCICFG, AR_PCICFG_SCLK_RATE_IND, 0x2);
		} else {
			FUNC6(ah, AR_PHY_SLEEP_CTR_LIMIT,   0x0a);
			FUNC6(ah, AR_PHY_SLEEP_SCAL,        0x0c);
			FUNC6(ah, AR_PHY_M_SLEEP,           0x03);
			FUNC6(ah, AR_PHY_REFCLKDLY,         0x20);
			FUNC5(ah, AR_PCICFG, AR_PCICFG_SCLK_RATE_IND, 0x3);
		}
	} else {
		FUNC5(ah, AR_PCICFG, AR_PCICFG_SCLK_RATE_IND, 0x0);
		FUNC5(ah, AR_PCICFG, AR_PCICFG_SCLK_SEL, 0);

		FUNC6(ah, AR_TSF_PARM, 1);	/* 32MHz TSF inc */

		FUNC6(ah, AR_PHY_SLEEP_CTR_CONTROL, 0x1f);
		FUNC6(ah, AR_PHY_SLEEP_CTR_LIMIT,   0x7f);

		if (FUNC1(ah))
			FUNC6(ah, AR_PHY_SLEEP_SCAL, 0x0a);
		else if (FUNC3(ah))
			FUNC6(ah, AR_PHY_SLEEP_SCAL, 0x32);
		else
			FUNC6(ah, AR_PHY_SLEEP_SCAL, 0x0e);
		FUNC6(ah, AR_PHY_M_SLEEP,           0x0c);
		FUNC6(ah, AR_PHY_REFCLKDLY,         0xff);
		FUNC6(ah, AR_PHY_REFCLKPD,
		    FUNC4(ah) || FUNC2(ah) || FUNC1(ah) ? 0x14 : 0x18);
		FUNC5(ah, AR_USEC, AR_USEC_USEC32,
		    FUNC4(ah) || FUNC2(ah) ? 39 : 31);
	}
}