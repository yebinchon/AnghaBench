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
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_FDIRCMD ; 
 int IXGBE_FDIRCMD_CLEARHT ; 
 int /*<<< orphan*/  IXGBE_FDIRCTRL ; 
 int IXGBE_FDIRCTRL_DROP_NO_MATCH ; 
 int IXGBE_FDIRCTRL_DROP_Q_MASK ; 
 int IXGBE_FDIRCTRL_DROP_Q_SHIFT ; 
 int IXGBE_FDIRCTRL_INIT_DONE ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int) ; 
 scalar_t__ ixgbe_mac_X550 ; 
 scalar_t__ ixgbe_mac_X550EM_a ; 
 scalar_t__ ixgbe_mac_X550EM_x ; 

void FUNC5(struct ixgbe_hw *hw, u8 dropqueue)
{
	u32 fdirctrl;

	FUNC0("ixgbe_set_fdir_drop_queue_82599");
	/* Clear init done bit and drop queue field */
	fdirctrl = FUNC1(hw, IXGBE_FDIRCTRL);
	fdirctrl &= ~(IXGBE_FDIRCTRL_DROP_Q_MASK | IXGBE_FDIRCTRL_INIT_DONE);

	/* Set drop queue */
	fdirctrl |= (dropqueue << IXGBE_FDIRCTRL_DROP_Q_SHIFT);
	if ((hw->mac.type == ixgbe_mac_X550) ||
	    (hw->mac.type == ixgbe_mac_X550EM_x) ||
	    (hw->mac.type == ixgbe_mac_X550EM_a))
		fdirctrl |= IXGBE_FDIRCTRL_DROP_NO_MATCH;

	FUNC3(hw, IXGBE_FDIRCMD,
			(FUNC1(hw, IXGBE_FDIRCMD) |
			 IXGBE_FDIRCMD_CLEARHT));
	FUNC2(hw);
	FUNC3(hw, IXGBE_FDIRCMD,
			(FUNC1(hw, IXGBE_FDIRCMD) &
			 ~IXGBE_FDIRCMD_CLEARHT));
	FUNC2(hw);

	/* write hashes and fdirctrl register, poll for completion */
	FUNC4(hw, fdirctrl);
}