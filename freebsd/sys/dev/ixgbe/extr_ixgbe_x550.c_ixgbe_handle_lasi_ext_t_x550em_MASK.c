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
typedef  scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ IXGBE_SUCCESS ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int*) ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*) ; 

s32 FUNC2(struct ixgbe_hw *hw)
{
	bool lsc;
	u32 status;

	status = FUNC0(hw, &lsc);

	if (status != IXGBE_SUCCESS)
		return status;

	if (lsc)
		return FUNC1(hw);

	return IXGBE_SUCCESS;
}