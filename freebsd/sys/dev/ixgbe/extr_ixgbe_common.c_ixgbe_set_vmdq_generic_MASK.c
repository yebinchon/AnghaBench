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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ num_rar_entries; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  IXGBE_ERROR_ARGUMENT ; 
 int /*<<< orphan*/  IXGBE_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 

s32 FUNC6(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
{
	u32 mpsar;
	u32 rar_entries = hw->mac.num_rar_entries;

	FUNC0("ixgbe_set_vmdq_generic");

	/* Make sure we are using a valid rar index range */
	if (rar >= rar_entries) {
		FUNC1(IXGBE_ERROR_ARGUMENT,
			     "RAR index %d is out of range.\n", rar);
		return IXGBE_ERR_INVALID_ARGUMENT;
	}

	if (vmdq < 32) {
		mpsar = FUNC4(hw, FUNC3(rar));
		mpsar |= 1 << vmdq;
		FUNC5(hw, FUNC3(rar), mpsar);
	} else {
		mpsar = FUNC4(hw, FUNC2(rar));
		mpsar |= 1 << (vmdq - 32);
		FUNC5(hw, FUNC2(rar), mpsar);
	}
	return IXGBE_SUCCESS;
}