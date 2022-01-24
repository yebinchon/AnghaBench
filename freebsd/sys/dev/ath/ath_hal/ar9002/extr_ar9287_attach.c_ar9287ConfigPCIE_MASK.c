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
struct ath_hal {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ah_ini_pcieserdes; } ;
struct TYPE_3__ {scalar_t__ ah_ispcie; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 TYPE_1__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR9285_WA_DEFAULT ; 
 int /*<<< orphan*/  AR_PCIE_PM_CTRL ; 
 int /*<<< orphan*/  AR_PCIE_PM_CTRL_ENA ; 
 int /*<<< orphan*/  AR_WA ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ath_hal *ah, HAL_BOOL restore, HAL_BOOL power_off)
{
	if (FUNC1(ah)->ah_ispcie && !restore) {
		FUNC5(ah, &FUNC0(ah)->ah_ini_pcieserdes, 1, 0);
		FUNC2(1000);
		FUNC3(ah, AR_PCIE_PM_CTRL, AR_PCIE_PM_CTRL_ENA);
		/* Yes, Kiwi uses the Kite PCIe PHY WA */
		FUNC4(ah, AR_WA, AR9285_WA_DEFAULT);
	}
}