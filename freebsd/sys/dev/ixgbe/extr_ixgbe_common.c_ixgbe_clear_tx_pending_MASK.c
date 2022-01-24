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
typedef  int u16 ;
struct TYPE_2__ {int flags; } ;
struct ixgbe_hw {int /*<<< orphan*/  hw_addr; TYPE_1__ mac; } ;

/* Variables and functions */
 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ; 
 int /*<<< orphan*/  IXGBE_GCR_EXT ; 
 scalar_t__ IXGBE_GCR_EXT_BUFFERS_CLEAR ; 
 int /*<<< orphan*/  IXGBE_HLREG0 ; 
 scalar_t__ IXGBE_HLREG0_LPBK ; 
 int /*<<< orphan*/  IXGBE_PCI_DEVICE_STATUS ; 
 int IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(struct ixgbe_hw *hw)
{
	u32 gcr_ext, hlreg0, i, poll;
	u16 value;

	/*
	 * If double reset is not requested then all transactions should
	 * already be clear and as such there is no work to do
	 */
	if (!(hw->mac.flags & IXGBE_FLAGS_DOUBLE_RESET_REQUIRED))
		return;

	/*
	 * Set loopback enable to prevent any transmits from being sent
	 * should the link come up.  This assumes that the RXCTRL.RXEN bit
	 * has already been cleared.
	 */
	hlreg0 = FUNC1(hw, IXGBE_HLREG0);
	FUNC4(hw, IXGBE_HLREG0, hlreg0 | IXGBE_HLREG0_LPBK);

	/* Wait for a last completion before clearing buffers */
	FUNC3(hw);
	FUNC6(3);

	/*
	 * Before proceeding, make sure that the PCIe block does not have
	 * transactions pending.
	 */
	poll = FUNC5(hw);
	for (i = 0; i < poll; i++) {
		FUNC7(100);
		value = FUNC0(hw, IXGBE_PCI_DEVICE_STATUS);
		if (FUNC2(hw->hw_addr))
			goto out;
		if (!(value & IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING))
			goto out;
	}

out:
	/* initiate cleaning flow for buffers in the PCIe transaction layer */
	gcr_ext = FUNC1(hw, IXGBE_GCR_EXT);
	FUNC4(hw, IXGBE_GCR_EXT,
			gcr_ext | IXGBE_GCR_EXT_BUFFERS_CLEAR);

	/* Flush all writes and allow 20usec for all transactions to clear */
	FUNC3(hw);
	FUNC7(20);

	/* restore previous register values */
	FUNC4(hw, IXGBE_GCR_EXT, gcr_ext);
	FUNC4(hw, IXGBE_HLREG0, hlreg0);
}