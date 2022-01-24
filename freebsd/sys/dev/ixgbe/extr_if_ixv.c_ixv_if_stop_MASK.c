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
struct TYPE_4__ {int /*<<< orphan*/  (* set_rar ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* stop_adapter ) (struct ixgbe_hw*) ;int /*<<< orphan*/  (* reset_hw ) (struct ixgbe_hw*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  addr; TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_1__ mac; void* adapter_stopped; } ;
struct adapter {void* link_up; struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_RAH_AV ; 
 struct adapter* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(if_ctx_t ctx)
{
	struct adapter  *adapter = FUNC1(ctx);
	struct ixgbe_hw *hw = &adapter->hw;

	FUNC0("ixv_stop: begin\n");

	FUNC2(ctx);

	hw->mac.ops.reset_hw(hw);
	adapter->hw.adapter_stopped = FALSE;
	hw->mac.ops.stop_adapter(hw);

	/* Update the stack */
	adapter->link_up = FALSE;
	FUNC3(ctx);

	/* reprogram the RAR[0] in case user changed it. */
	hw->mac.ops.set_rar(hw, 0, hw->mac.addr, 0, IXGBE_RAH_AV);
}