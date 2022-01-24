#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ ah_ispcie; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PCIE_SERDES ; 
 int /*<<< orphan*/  AR_PCIE_SERDES2 ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*) ; 

__attribute__((used)) static void
FUNC7(struct ath_hal *ah)
{

	/* PCIe? Don't */
	if (FUNC0(ah)->ah_ispcie)
		return;

	/* .. Only applicable for AR5416v2 or later */
	if (! (FUNC1(ah) && FUNC2(ah)))
		return;

	FUNC5(ah);

	/*
	 * Disable the PCIe PHY.
	 */
	FUNC3(ah, AR_PCIE_SERDES, 0x9248fc00);
	FUNC3(ah, AR_PCIE_SERDES, 0x24924924);
	FUNC3(ah, AR_PCIE_SERDES, 0x28000029);
	FUNC3(ah, AR_PCIE_SERDES, 0x57160824);
	FUNC3(ah, AR_PCIE_SERDES, 0x25980579);
	FUNC3(ah, AR_PCIE_SERDES, 0x00000000);
	FUNC3(ah, AR_PCIE_SERDES, 0x1aaabe40);
	FUNC3(ah, AR_PCIE_SERDES, 0xbe105554);
	FUNC3(ah, AR_PCIE_SERDES, 0x000e1007);

	/* Load the new settings */
	FUNC3(ah, AR_PCIE_SERDES2, 0x00000000);

	FUNC6(ah);
	FUNC4(ah);
}