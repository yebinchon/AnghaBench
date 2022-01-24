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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_vmdq ) (struct ixgbe_hw*,scalar_t__,scalar_t__) ;} ;
struct TYPE_4__ {scalar_t__ num_rar_entries; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  IXGBE_ERROR_ARGUMENT ; 
 int /*<<< orphan*/  IXGBE_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int IXGBE_RAH_AV ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,scalar_t__,scalar_t__) ; 

s32 FUNC7(struct ixgbe_hw *hw, u32 index, u8 *addr, u32 vmdq,
			  u32 enable_addr)
{
	u32 rar_low, rar_high;
	u32 rar_entries = hw->mac.num_rar_entries;

	FUNC0("ixgbe_set_rar_generic");

	/* Make sure we are using a valid rar index range */
	if (index >= rar_entries) {
		FUNC1(IXGBE_ERROR_ARGUMENT,
			     "RAR index %d is out of range.\n", index);
		return IXGBE_ERR_INVALID_ARGUMENT;
	}

	/* setup VMDq pool selection before this RAR gets enabled */
	hw->mac.ops.set_vmdq(hw, index, vmdq);

	/*
	 * HW expects these in little endian so we reverse the byte
	 * order from network order (big endian) to little endian
	 */
	rar_low = ((u32)addr[0] |
		   ((u32)addr[1] << 8) |
		   ((u32)addr[2] << 16) |
		   ((u32)addr[3] << 24));
	/*
	 * Some parts put the VMDq setting in the extra RAH bits,
	 * so save everything except the lower 16 bits that hold part
	 * of the address and the address valid bit.
	 */
	rar_high = FUNC4(hw, FUNC2(index));
	rar_high &= ~(0x0000FFFF | IXGBE_RAH_AV);
	rar_high |= ((u32)addr[4] | ((u32)addr[5] << 8));

	if (enable_addr != 0)
		rar_high |= IXGBE_RAH_AV;

	FUNC5(hw, FUNC3(index), rar_low);
	FUNC5(hw, FUNC2(index), rar_high);

	return IXGBE_SUCCESS;
}