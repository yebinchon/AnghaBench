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
struct ixgbe_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IXGBE_SUCCESS ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*) ; 

s32 FUNC3(struct ixgbe_hw *hw)
{
	s32 ret_val = IXGBE_SUCCESS;

	FUNC0("ixgbe_start_hw_X540");

	ret_val = FUNC2(hw);
	if (ret_val != IXGBE_SUCCESS)
		goto out;

	ret_val = FUNC1(hw);

out:
	return ret_val;
}