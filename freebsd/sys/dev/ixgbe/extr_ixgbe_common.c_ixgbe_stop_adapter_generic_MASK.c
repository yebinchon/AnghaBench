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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_EICR ; 
 int /*<<< orphan*/  IXGBE_EIMC ; 
 int /*<<< orphan*/  IXGBE_IRQ_CLEAR_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  IXGBE_RXDCTL_ENABLE ; 
 int /*<<< orphan*/  IXGBE_RXDCTL_SWFLSH ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  IXGBE_TXDCTL_SWFLSH ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

s32 FUNC9(struct ixgbe_hw *hw)
{
	u32 reg_val;
	u16 i;

	FUNC0("ixgbe_stop_adapter_generic");

	/*
	 * Set the adapter_stopped flag so other driver functions stop touching
	 * the hardware
	 */
	hw->adapter_stopped = TRUE;

	/* Disable the receive unit */
	FUNC7(hw);

	/* Clear interrupt mask to stop interrupts from being generated */
	FUNC5(hw, IXGBE_EIMC, IXGBE_IRQ_CLEAR_MASK);

	/* Clear any pending interrupts, flush previous writes */
	FUNC1(hw, IXGBE_EICR);

	/* Disable the transmit unit.  Each queue must be disabled. */
	for (i = 0; i < hw->mac.max_tx_queues; i++)
		FUNC5(hw, FUNC3(i), IXGBE_TXDCTL_SWFLSH);

	/* Disable the receive unit by stopping each queue */
	for (i = 0; i < hw->mac.max_rx_queues; i++) {
		reg_val = FUNC1(hw, FUNC2(i));
		reg_val &= ~IXGBE_RXDCTL_ENABLE;
		reg_val |= IXGBE_RXDCTL_SWFLSH;
		FUNC5(hw, FUNC2(i), reg_val);
	}

	/* flush all queues disables */
	FUNC4(hw);
	FUNC8(2);

	/*
	 * Prevent the PCI-E bus from hanging by disabling PCI-E master
	 * access and verify no pending requests
	 */
	return FUNC6(hw);
}