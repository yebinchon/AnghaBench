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
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IXGBE_GSSR_I2C_MASK ; 
 scalar_t__ IXGBE_SUCCESS ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int) ; 

s32 FUNC3(struct ixgbe_hw *hw, u32 mask)
{
	s32 status;

	FUNC0("ixgbe_acquire_swfw_sync_X550em");

	status = FUNC1(hw, mask);
	if (status)
		return status;

	if (mask & IXGBE_GSSR_I2C_MASK)
		FUNC2(hw, 1);

	return IXGBE_SUCCESS;
}