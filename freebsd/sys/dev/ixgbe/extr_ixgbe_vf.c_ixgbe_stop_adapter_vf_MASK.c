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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ max_tx_queues; scalar_t__ max_rx_queues; } ;
struct ixgbe_hw {TYPE_1__ mac; int /*<<< orphan*/  adapter_stopped; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_RXDCTL_ENABLE ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  IXGBE_TXDCTL_SWFLSH ; 
 int /*<<< orphan*/  IXGBE_VFPSRTYPE ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_VF_IRQ_CLEAR_MASK ; 
 int /*<<< orphan*/  IXGBE_VTEICR ; 
 int /*<<< orphan*/  IXGBE_VTEIMC ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

s32 FUNC7(struct ixgbe_hw *hw)
{
	u32 reg_val;
	u16 i;

	/*
	 * Set the adapter_stopped flag so other driver functions stop touching
	 * the hardware
	 */
	hw->adapter_stopped = TRUE;

	/* Clear interrupt mask to stop from interrupts being generated */
	FUNC3(hw, IXGBE_VTEIMC, IXGBE_VF_IRQ_CLEAR_MASK);

	/* Clear any pending interrupts, flush previous writes */
	FUNC0(hw, IXGBE_VTEICR);

	/* Disable the transmit unit.  Each queue must be disabled. */
	for (i = 0; i < hw->mac.max_tx_queues; i++)
		FUNC3(hw, FUNC2(i), IXGBE_TXDCTL_SWFLSH);

	/* Disable the receive unit by stopping each queue */
	for (i = 0; i < hw->mac.max_rx_queues; i++) {
		reg_val = FUNC0(hw, FUNC1(i));
		reg_val &= ~IXGBE_RXDCTL_ENABLE;
		FUNC3(hw, FUNC1(i), reg_val);
	}
	/* Clear packet split and pool config */
	FUNC5(hw, IXGBE_VFPSRTYPE, 0);

	/* flush all queues disables */
	FUNC4(hw);
	FUNC6(2);

	return IXGBE_SUCCESS;
}