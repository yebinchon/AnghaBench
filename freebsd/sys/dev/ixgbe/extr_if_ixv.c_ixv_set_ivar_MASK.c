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
typedef  int u8 ;
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;
struct adapter {struct ixgbe_hw hw; } ;
typedef  int s8 ;

/* Variables and functions */
 int IXGBE_IVAR_ALLOC_VAL ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  IXGBE_VTIVAR_MISC ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct adapter *adapter, u8 entry, u8 vector, s8 type)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u32             ivar, index;

	vector |= IXGBE_IVAR_ALLOC_VAL;

	if (type == -1) { /* MISC IVAR */
		ivar = FUNC0(hw, IXGBE_VTIVAR_MISC);
		ivar &= ~0xFF;
		ivar |= vector;
		FUNC2(hw, IXGBE_VTIVAR_MISC, ivar);
	} else {          /* RX/TX IVARS */
		index = (16 * (entry & 1)) + (8 * type);
		ivar = FUNC0(hw, FUNC1(entry >> 1));
		ivar &= ~(0xFF << index);
		ivar |= (vector << index);
		FUNC2(hw, FUNC1(entry >> 1), ivar);
	}
}