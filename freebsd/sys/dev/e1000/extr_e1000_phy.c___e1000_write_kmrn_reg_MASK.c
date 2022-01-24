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
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA ; 
 int E1000_KMRNCTRLSTA_OFFSET ; 
 int E1000_KMRNCTRLSTA_OFFSET_SHIFT ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static s32 FUNC6(struct e1000_hw *hw, u32 offset, u16 data,
				  bool locked)
{
	u32 kmrnctrlsta;

	FUNC0("e1000_write_kmrn_reg_generic");

	if (!locked) {
		s32 ret_val = E1000_SUCCESS;

		if (!hw->phy.ops.acquire)
			return E1000_SUCCESS;

		ret_val = hw->phy.ops.acquire(hw);
		if (ret_val)
			return ret_val;
	}

	kmrnctrlsta = ((offset << E1000_KMRNCTRLSTA_OFFSET_SHIFT) &
		       E1000_KMRNCTRLSTA_OFFSET) | data;
	FUNC2(hw, E1000_KMRNCTRLSTA, kmrnctrlsta);
	FUNC1(hw);

	FUNC5(2);

	if (!locked)
		hw->phy.ops.release(hw);

	return E1000_SUCCESS;
}