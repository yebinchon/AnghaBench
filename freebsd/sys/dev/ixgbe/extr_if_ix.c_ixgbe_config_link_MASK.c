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
typedef  scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ (* setup_link ) (struct ixgbe_hw*,scalar_t__,int /*<<< orphan*/ ) ;scalar_t__ (* get_link_capabilities ) (struct ixgbe_hw*,scalar_t__*,int*) ;scalar_t__ check_link; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ autoneg_advertised; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
struct adapter {int /*<<< orphan*/  link_up; int /*<<< orphan*/  link_speed; int /*<<< orphan*/  task_requests; struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IXGBE_REQUEST_TASK_MOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,scalar_t__*,int*) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(if_ctx_t ctx)
{
	struct adapter  *adapter = FUNC1(ctx);
	struct ixgbe_hw *hw = &adapter->hw;
	u32             autoneg, err = 0;
	bool            sfp, negotiate;

	sfp = FUNC3(hw);

	if (sfp) {
		adapter->task_requests |= IXGBE_REQUEST_TASK_MOD;
		FUNC0(ctx);
	} else {
		if (hw->mac.ops.check_link)
			err = FUNC2(hw, &adapter->link_speed,
			    &adapter->link_up, FALSE);
		if (err)
			return;
		autoneg = hw->phy.autoneg_advertised;
		if ((!autoneg) && (hw->mac.ops.get_link_capabilities))
			err = hw->mac.ops.get_link_capabilities(hw, &autoneg,
			    &negotiate);
		if (err)
			return;
		if (hw->mac.ops.setup_link)
			err = hw->mac.ops.setup_link(hw, autoneg,
			    adapter->link_up);
	}
}