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
typedef  int u32 ;
struct TYPE_3__ {int (* enter_lplu ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  reset_disable; TYPE_1__ ops; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_2__ phy; int /*<<< orphan*/  wol_enabled; } ;
struct adapter {int wufc; struct ixgbe_hw hw; } ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ IXGBE_DEV_ID_X550EM_X_10G_T ; 
 int /*<<< orphan*/  IXGBE_GRC ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IXGBE_WUC ; 
 int IXGBE_WUC_PME_EN ; 
 int IXGBE_WUC_WKEN ; 
 int /*<<< orphan*/  IXGBE_WUFC ; 
 int /*<<< orphan*/  IXGBE_WUS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ixgbe_hw*) ; 

__attribute__((used)) static int
FUNC8(if_ctx_t ctx)
{
	struct adapter  *adapter = FUNC4(ctx);
	struct ixgbe_hw *hw = &adapter->hw;
	device_t        dev = FUNC3(ctx);
	s32             error = 0;

	if (!hw->wol_enabled)
		FUNC6(hw, FALSE);

	/* Limit power management flow to X550EM baseT */
	if (hw->device_id == IXGBE_DEV_ID_X550EM_X_10G_T &&
	    hw->phy.ops.enter_lplu) {
		/* Turn off support for APM wakeup. (Using ACPI instead) */
		FUNC1(hw, IXGBE_GRC,
		    FUNC0(hw, IXGBE_GRC) & ~(u32)2);

		/*
		 * Clear Wake Up Status register to prevent any previous wakeup
		 * events from waking us up immediately after we suspend.
		 */
		FUNC1(hw, IXGBE_WUS, 0xffffffff);

		/*
		 * Program the Wakeup Filter Control register with user filter
		 * settings
		 */
		FUNC1(hw, IXGBE_WUFC, adapter->wufc);

		/* Enable wakeups and power management in Wakeup Control */
		FUNC1(hw, IXGBE_WUC,
		    IXGBE_WUC_WKEN | IXGBE_WUC_PME_EN);

		/* X550EM baseT adapters need a special LPLU flow */
		hw->phy.reset_disable = TRUE;
		FUNC5(ctx);
		error = hw->phy.ops.enter_lplu(hw);
		if (error)
			FUNC2(dev, "Error entering LPLU: %d\n", error);
		hw->phy.reset_disable = FALSE;
	} else {
		/* Just stop for other adapters */
		FUNC5(ctx);
	}

	return error;
}