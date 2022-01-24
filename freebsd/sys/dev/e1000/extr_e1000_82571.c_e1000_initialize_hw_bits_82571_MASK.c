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
typedef  int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int /*<<< orphan*/  E1000_CTRL_EXT ; 
 int E1000_CTRL_EXT_DMA_DYN_CLK_EN ; 
 int /*<<< orphan*/  E1000_GCR ; 
 int /*<<< orphan*/  E1000_GCR2 ; 
 int /*<<< orphan*/  E1000_PBA_ECC ; 
 int E1000_PBA_ECC_CORR_EN ; 
 int FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_RFCTL ; 
 int E1000_RFCTL_IPV6_EX_DIS ; 
 int E1000_RFCTL_NEW_IPV6_EXT_DIS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  E1000_TCTL ; 
 int E1000_TCTL_MULR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
#define  e1000_82571 132 
#define  e1000_82572 131 
#define  e1000_82573 130 
#define  e1000_82574 129 
#define  e1000_82583 128 

__attribute__((used)) static void FUNC5(struct e1000_hw *hw)
{
	u32 reg;

	FUNC0("e1000_initialize_hw_bits_82571");

	/* Transmit Descriptor Control 0 */
	reg = FUNC1(hw, FUNC3(0));
	reg |= (1 << 22);
	FUNC4(hw, FUNC3(0), reg);

	/* Transmit Descriptor Control 1 */
	reg = FUNC1(hw, FUNC3(1));
	reg |= (1 << 22);
	FUNC4(hw, FUNC3(1), reg);

	/* Transmit Arbitration Control 0 */
	reg = FUNC1(hw, FUNC2(0));
	reg &= ~(0xF << 27); /* 30:27 */
	switch (hw->mac.type) {
	case e1000_82571:
	case e1000_82572:
		reg |= (1 << 23) | (1 << 24) | (1 << 25) | (1 << 26);
		break;
	case e1000_82574:
	case e1000_82583:
		reg |= (1 << 26);
		break;
	default:
		break;
	}
	FUNC4(hw, FUNC2(0), reg);

	/* Transmit Arbitration Control 1 */
	reg = FUNC1(hw, FUNC2(1));
	switch (hw->mac.type) {
	case e1000_82571:
	case e1000_82572:
		reg &= ~((1 << 29) | (1 << 30));
		reg |= (1 << 22) | (1 << 24) | (1 << 25) | (1 << 26);
		if (FUNC1(hw, E1000_TCTL) & E1000_TCTL_MULR)
			reg &= ~(1 << 28);
		else
			reg |= (1 << 28);
		FUNC4(hw, FUNC2(1), reg);
		break;
	default:
		break;
	}

	/* Device Control */
	switch (hw->mac.type) {
	case e1000_82573:
	case e1000_82574:
	case e1000_82583:
		reg = FUNC1(hw, E1000_CTRL);
		reg &= ~(1 << 29);
		FUNC4(hw, E1000_CTRL, reg);
		break;
	default:
		break;
	}

	/* Extended Device Control */
	switch (hw->mac.type) {
	case e1000_82573:
	case e1000_82574:
	case e1000_82583:
		reg = FUNC1(hw, E1000_CTRL_EXT);
		reg &= ~(1 << 23);
		reg |= (1 << 22);
		FUNC4(hw, E1000_CTRL_EXT, reg);
		break;
	default:
		break;
	}

	if (hw->mac.type == e1000_82571) {
		reg = FUNC1(hw, E1000_PBA_ECC);
		reg |= E1000_PBA_ECC_CORR_EN;
		FUNC4(hw, E1000_PBA_ECC, reg);
	}

	/* Workaround for hardware errata.
	 * Ensure that DMA Dynamic Clock gating is disabled on 82571 and 82572
	 */
	if ((hw->mac.type == e1000_82571) ||
	   (hw->mac.type == e1000_82572)) {
		reg = FUNC1(hw, E1000_CTRL_EXT);
		reg &= ~E1000_CTRL_EXT_DMA_DYN_CLK_EN;
		FUNC4(hw, E1000_CTRL_EXT, reg);
	}

	/* Disable IPv6 extension header parsing because some malformed
	 * IPv6 headers can hang the Rx.
	 */
	if (hw->mac.type <= e1000_82573) {
		reg = FUNC1(hw, E1000_RFCTL);
		reg |= (E1000_RFCTL_IPV6_EX_DIS | E1000_RFCTL_NEW_IPV6_EXT_DIS);
		FUNC4(hw, E1000_RFCTL, reg);
	}

	/* PCI-Ex Control Registers */
	switch (hw->mac.type) {
	case e1000_82574:
	case e1000_82583:
		reg = FUNC1(hw, E1000_GCR);
		reg |= (1 << 22);
		FUNC4(hw, E1000_GCR, reg);

		/* Workaround for hardware errata.
		 * apply workaround for hardware errata documented in errata
		 * docs Fixes issue where some error prone or unreliable PCIe
		 * completions are occurring, particularly with ASPM enabled.
		 * Without fix, issue can cause Tx timeouts.
		 */
		reg = FUNC1(hw, E1000_GCR2);
		reg |= 1;
		FUNC4(hw, E1000_GCR2, reg);
		break;
	default:
		break;
	}

	return;
}