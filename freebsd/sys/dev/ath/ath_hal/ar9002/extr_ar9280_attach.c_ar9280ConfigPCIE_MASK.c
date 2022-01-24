#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ah_ini_pcieserdes; } ;
struct TYPE_3__ {scalar_t__ ah_ispcie; } ;
typedef  scalar_t__ HAL_BOOL ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 TYPE_1__* FUNC1 (struct ath_hal*) ; 
 int AR9280_WA_DEFAULT ; 
 int /*<<< orphan*/  AR_PCIE_PM_CTRL ; 
 int /*<<< orphan*/  AR_PCIE_PM_CTRL_ENA ; 
 int /*<<< orphan*/  AR_WA ; 
 int AR_WA_BIT22 ; 
 int AR_WA_BIT6 ; 
 int AR_WA_BIT7 ; 
 int AR_WA_D3_L1_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct ath_hal *ah, HAL_BOOL restore, HAL_BOOL power_off)
{
	uint32_t val;

	if (FUNC1(ah)->ah_ispcie && !restore) {
		FUNC7(ah, &FUNC0(ah)->ah_ini_pcieserdes, 1, 0);
		FUNC2(1000);
	}


	/*
	 * Set PCIe workaround bits
	 *
	 * NOTE:
	 *
	 * In Merlin and Kite, bit 14 in WA register (disable L1) should only
	 * be set when device enters D3 and be cleared when device comes back
	 * to D0.
	 */
	if (power_off) {		/* Power-off */
		FUNC3(ah, AR_PCIE_PM_CTRL, AR_PCIE_PM_CTRL_ENA);

		val = FUNC4(ah, AR_WA);

		/*
		 * Disable bit 6 and 7 before entering D3 to prevent
		 * system hang.
		 */
		val &= ~(AR_WA_BIT6 | AR_WA_BIT7);

		/*
		 * XXX Not sure, is specified in the reference HAL.
		 */
		val |= AR_WA_BIT22;

		/*
		 * See above: set AR_WA_D3_L1_DISABLE when entering D3 state.
		 *
		 * XXX The reference HAL does it this way - it only sets
		 * AR_WA_D3_L1_DISABLE if it's set in AR9280_WA_DEFAULT,
		 * which it (currently) isn't.  So the following statement
		 * is currently a NOP.
		 */
		if (AR9280_WA_DEFAULT & AR_WA_D3_L1_DISABLE)
			val |= AR_WA_D3_L1_DISABLE;

		FUNC6(ah, AR_WA, val);
	} else {			/* Power-on */
		val = AR9280_WA_DEFAULT;

		/*
		 * See note above: make sure L1_DISABLE is not set.
		 */
		val &= (~AR_WA_D3_L1_DISABLE);
		FUNC6(ah, AR_WA, val);

		/* set bit 19 to allow forcing of pcie core into L1 state */
		FUNC5(ah, AR_PCIE_PM_CTRL, AR_PCIE_PM_CTRL_ENA);
	}
}