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
struct TYPE_3__ {int /*<<< orphan*/ * reset; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int*) ; 

s32 FUNC3(struct ixgbe_hw *hw)
{
	s32 status;
	bool linear;

	FUNC0("ixgbe_setup_sfp_modules_X550em");

	/* Check if SFP module is supported */
	status = FUNC2(hw, &linear);

	if (status != IXGBE_SUCCESS)
		return status;

	FUNC1(hw);
	hw->phy.ops.reset = NULL;

	return IXGBE_SUCCESS;
}