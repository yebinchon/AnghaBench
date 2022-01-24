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
typedef  int u64 ;
typedef  unsigned long long u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_EIMC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IXGBE_EIMS_RTX_QUEUE ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,unsigned long long) ; 
 scalar_t__ ixgbe_mac_82598EB ; 

__attribute__((used)) static void
FUNC2(struct adapter *adapter, u32 vector)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u64             queue = 1ULL << vector;
	u32             mask;

	if (hw->mac.type == ixgbe_mac_82598EB) {
		mask = (IXGBE_EIMS_RTX_QUEUE & queue);
		FUNC1(hw, IXGBE_EIMC, mask);
	} else {
		mask = (queue & 0xFFFFFFFF);
		if (mask)
			FUNC1(hw, FUNC0(0), mask);
		mask = (queue >> 32);
		if (mask)
			FUNC1(hw, FUNC0(1), mask);
	}
}