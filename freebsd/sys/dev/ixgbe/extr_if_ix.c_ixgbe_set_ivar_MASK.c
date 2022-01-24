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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct adapter {struct ixgbe_hw hw; } ;
typedef  int s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IXGBE_IVAR_ALLOC_VAL ; 
 int /*<<< orphan*/  IXGBE_IVAR_MISC ; 
 int IXGBE_IVAR_OTHER_CAUSES_INDEX ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
#define  ixgbe_mac_82598EB 133 
#define  ixgbe_mac_82599EB 132 
#define  ixgbe_mac_X540 131 
#define  ixgbe_mac_X550 130 
#define  ixgbe_mac_X550EM_a 129 
#define  ixgbe_mac_X550EM_x 128 

__attribute__((used)) static void
FUNC3(struct adapter *adapter, u8 entry, u8 vector, s8 type)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u32 ivar, index;

	vector |= IXGBE_IVAR_ALLOC_VAL;

	switch (hw->mac.type) {
	case ixgbe_mac_82598EB:
		if (type == -1)
			entry = IXGBE_IVAR_OTHER_CAUSES_INDEX;
		else
			entry += (type * 64);
		index = (entry >> 2) & 0x1F;
		ivar = FUNC1(hw, FUNC0(index));
		ivar &= ~(0xFF << (8 * (entry & 0x3)));
		ivar |= (vector << (8 * (entry & 0x3)));
		FUNC2(&adapter->hw, FUNC0(index), ivar);
		break;
	case ixgbe_mac_82599EB:
	case ixgbe_mac_X540:
	case ixgbe_mac_X550:
	case ixgbe_mac_X550EM_x:
	case ixgbe_mac_X550EM_a:
		if (type == -1) { /* MISC IVAR */
			index = (entry & 1) * 8;
			ivar = FUNC1(hw, IXGBE_IVAR_MISC);
			ivar &= ~(0xFF << index);
			ivar |= (vector << index);
			FUNC2(hw, IXGBE_IVAR_MISC, ivar);
		} else {          /* RX/TX IVARS */
			index = (16 * (entry & 1)) + (8 * type);
			ivar = FUNC1(hw, FUNC0(entry >> 1));
			ivar &= ~(0xFF << index);
			ivar |= (vector << index);
			FUNC2(hw, FUNC0(entry >> 1), ivar);
		}
	default:
		break;
	}
}