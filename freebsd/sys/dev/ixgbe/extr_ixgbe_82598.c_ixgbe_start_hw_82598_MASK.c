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
struct TYPE_2__ {scalar_t__ max_tx_queues; scalar_t__ max_rx_queues; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IXGBE_DCA_MAX_QUEUES_82598 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ IXGBE_DCA_RXCTRL_DATA_WRO_EN ; 
 scalar_t__ IXGBE_DCA_RXCTRL_HEAD_WRO_EN ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ IXGBE_DCA_TXCTRL_DESC_WRO_EN ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC6 (struct ixgbe_hw*) ; 

s32 FUNC7(struct ixgbe_hw *hw)
{
	u32 regval;
	u32 i;
	s32 ret_val = IXGBE_SUCCESS;

	FUNC0("ixgbe_start_hw_82598");

	ret_val = FUNC6(hw);
	if (ret_val)
		return ret_val;

	/* Disable relaxed ordering */
	for (i = 0; ((i < hw->mac.max_tx_queues) &&
	     (i < IXGBE_DCA_MAX_QUEUES_82598)); i++) {
		regval = FUNC3(hw, FUNC2(i));
		regval &= ~IXGBE_DCA_TXCTRL_DESC_WRO_EN;
		FUNC4(hw, FUNC2(i), regval);
	}

	for (i = 0; ((i < hw->mac.max_rx_queues) &&
	     (i < IXGBE_DCA_MAX_QUEUES_82598)); i++) {
		regval = FUNC3(hw, FUNC1(i));
		regval &= ~(IXGBE_DCA_RXCTRL_DATA_WRO_EN |
			    IXGBE_DCA_RXCTRL_HEAD_WRO_EN);
		FUNC4(hw, FUNC1(i), regval);
	}

	/* set the completion timeout for interface */
	FUNC5(hw);

	return ret_val;
}