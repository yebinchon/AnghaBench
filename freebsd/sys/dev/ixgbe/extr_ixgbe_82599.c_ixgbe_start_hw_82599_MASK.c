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
struct TYPE_2__ {int /*<<< orphan*/  autotry_restart; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*) ; 

s32 FUNC4(struct ixgbe_hw *hw)
{
	s32 ret_val = IXGBE_SUCCESS;

	FUNC0("ixgbe_start_hw_82599");

	ret_val = FUNC2(hw);
	if (ret_val != IXGBE_SUCCESS)
		goto out;

	ret_val = FUNC1(hw);
	if (ret_val != IXGBE_SUCCESS)
		goto out;

	/* We need to run link autotry after the driver loads */
	hw->mac.autotry_restart = TRUE;

	if (ret_val == IXGBE_SUCCESS)
		ret_val = FUNC3(hw);
out:
	return ret_val;
}