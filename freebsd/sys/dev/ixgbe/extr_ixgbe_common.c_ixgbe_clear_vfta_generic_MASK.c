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
typedef  int u32 ;
struct TYPE_2__ {int vft_size; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int IXGBE_VLVF_ENTRIES ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

s32 FUNC5(struct ixgbe_hw *hw)
{
	u32 offset;

	FUNC0("ixgbe_clear_vfta_generic");

	for (offset = 0; offset < hw->mac.vft_size; offset++)
		FUNC4(hw, FUNC1(offset), 0);

	for (offset = 0; offset < IXGBE_VLVF_ENTRIES; offset++) {
		FUNC4(hw, FUNC2(offset), 0);
		FUNC4(hw, FUNC3(offset * 2), 0);
		FUNC4(hw, FUNC3((offset * 2) + 1), 0);
	}

	return IXGBE_SUCCESS;
}