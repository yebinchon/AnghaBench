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
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  addr; } ;
struct ixgbe_hw {TYPE_1__ mac; void* adapter_stopped; } ;
struct adapter {struct ixgbe_hw hw; void* link_up; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_RAH_AV ; 
 struct adapter* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_82599EB ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*) ; 

__attribute__((used)) static void
FUNC8(if_ctx_t ctx)
{
	struct adapter  *adapter = FUNC1(ctx);
	struct ixgbe_hw *hw = &adapter->hw;

	FUNC0("ixgbe_if_stop: begin\n");

	FUNC4(hw);
	hw->adapter_stopped = FALSE;
	FUNC6(hw);
	if (hw->mac.type == ixgbe_mac_82599EB)
		FUNC7(hw);
	/* Turn off the laser - noop with no optics */
	FUNC2(hw);

	/* Update the stack */
	adapter->link_up = FALSE;
	FUNC3(ctx);

	/* reprogram the RAR[0] in case user changed it. */
	FUNC5(&adapter->hw, 0, adapter->hw.mac.addr, 0, IXGBE_RAH_AV);

	return;
}