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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_ERR_MBX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC3(struct ixgbe_hw *hw, u32 mask, s32 index)
{
	u32 mbvficr = FUNC1(hw, FUNC0(index));
	s32 ret_val = IXGBE_ERR_MBX;

	if (mbvficr & mask) {
		ret_val = IXGBE_SUCCESS;
		FUNC2(hw, FUNC0(index), mask);
	}

	return ret_val;
}