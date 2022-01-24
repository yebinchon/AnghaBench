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
typedef  int u16 ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA ; 
 int E1000_KMRNCTRLSTA_OFFSET ; 
 int E1000_KMRNCTRLSTA_OFFSET_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static s32 FUNC6(struct e1000_hw *hw, u32 offset,
					    u16 data)
{
	u32 kmrnctrlsta;
	s32 ret_val;

	FUNC0("e1000_write_kmrn_reg_80003es2lan");

	ret_val = FUNC3(hw);
	if (ret_val)
		return ret_val;

	kmrnctrlsta = ((offset << E1000_KMRNCTRLSTA_OFFSET_SHIFT) &
		       E1000_KMRNCTRLSTA_OFFSET) | data;
	FUNC2(hw, E1000_KMRNCTRLSTA, kmrnctrlsta);
	FUNC1(hw);

	FUNC5(2);

	FUNC4(hw);

	return ret_val;
}