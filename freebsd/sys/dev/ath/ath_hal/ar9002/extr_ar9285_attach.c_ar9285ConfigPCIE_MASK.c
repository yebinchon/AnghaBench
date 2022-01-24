#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ah_ini_pcieserdes; } ;
struct TYPE_4__ {int ath_hal_war70c; } ;
struct TYPE_5__ {scalar_t__ ah_ispcie; TYPE_1__ ah_config; } ;
typedef  scalar_t__ HAL_BOOL ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct ath_hal*) ; 
 TYPE_2__* FUNC1 (struct ath_hal*) ; 
 int AR9285_WA_DEFAULT ; 
 int /*<<< orphan*/  AR_PCIE_PM_CTRL ; 
 int /*<<< orphan*/  AR_PCIE_PM_CTRL_ENA ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 int AR_WA ; 
 int AR_WA_BIT23 ; 
 int AR_WA_BIT6 ; 
 int AR_WA_BIT7 ; 
 int AR_WA_D3_L1_DISABLE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ath_hal*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct ath_hal *ah, HAL_BOOL restore, HAL_BOOL power_off)
{
	uint32_t val;

	/*
	 * This workaround needs some integration work with the HAL
	 * config parameters and the if_ath_pci.c glue.
	 * Specifically, read the value of the PCI register 0x70c
	 * (4 byte PCI config space register) and store it in ath_hal_war70c.
	 * Then if it's non-zero, the below WAR would override register
	 * 0x570c upon suspend/resume.
	 */
#if 0
	if (AR_SREV_9285E_20(ah)) {
		val = AH_PRIVATE(ah)->ah_config.ath_hal_war70c;
		if (val) {
			val &= 0xffff00ff;
			val |= 0x6f00;
			OS_REG_WRITE(ah, 0x570c, val);
		}
	}
#endif

	if (FUNC1(ah)->ah_ispcie && !restore) {
		FUNC8(ah, &FUNC0(ah)->ah_ini_pcieserdes, 1, 0);
		FUNC3(1000);
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
	if (power_off) {                /* Power-off */
		FUNC4(ah, AR_PCIE_PM_CTRL, AR_PCIE_PM_CTRL_ENA);

		val = FUNC5(ah, AR_WA);

		/*
		 * Disable bit 6 and 7 before entering D3 to prevent
		 * system hang.
		 */
		val &= ~(AR_WA_BIT6 | AR_WA_BIT7);

		/*
		 * See above: set AR_WA_D3_L1_DISABLE when entering D3 state.
		 *
		 * XXX The reference HAL does it this way - it only sets
		 * AR_WA_D3_L1_DISABLE if it's set in AR9280_WA_DEFAULT,
		 * which it (currently) isn't.  So the following statement
		 * is currently a NOP.
		 */
		if (AR9285_WA_DEFAULT & AR_WA_D3_L1_DISABLE)
			val |= AR_WA_D3_L1_DISABLE;

		if (FUNC2(ah))
			val |= AR_WA_BIT23;

		FUNC7(ah, AR_WA, val);
	} else {			/* Power-on */
		val = AR9285_WA_DEFAULT;
		/*
		 * See note above: make sure L1_DISABLE is not set.
		 */
		val &= (~AR_WA_D3_L1_DISABLE);

		/* Software workaroud for ASPM system hang. */
		val |= (AR_WA_BIT6 | AR_WA_BIT7);

		if (FUNC2(ah))
			val |= AR_WA_BIT23;

		FUNC7(ah, AR_WA, val);

		/* set bit 19 to allow forcing of pcie core into L1 state */
		FUNC6(ah, AR_PCIE_PM_CTRL, AR_PCIE_PM_CTRL_ENA);
	}
}