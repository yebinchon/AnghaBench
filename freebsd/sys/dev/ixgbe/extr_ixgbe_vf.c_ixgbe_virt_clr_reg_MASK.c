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
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int IXGBE_DCA_RXCTRL_DATA_WRO_EN ; 
 int IXGBE_DCA_RXCTRL_DESC_RRO_EN ; 
 int IXGBE_DCA_RXCTRL_HEAD_WRO_EN ; 
 int IXGBE_DCA_TXCTRL_DATA_RRO_EN ; 
 int IXGBE_DCA_TXCTRL_DESC_RRO_EN ; 
 int IXGBE_DCA_TXCTRL_DESC_WRO_EN ; 
 int IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT ; 
 int IXGBE_SRRCTL_BSIZEPKT_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  IXGBE_VFPSRTYPE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(struct ixgbe_hw *hw)
{
	int i;
	u32 vfsrrctl;
	u32 vfdca_rxctrl;
	u32 vfdca_txctrl;

	/* VRSRRCTL default values (BSIZEPACKET = 2048, BSIZEHEADER = 256) */
	vfsrrctl = 0x100 << IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT;
	vfsrrctl |= 0x800 >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;

	/* DCA_RXCTRL default value */
	vfdca_rxctrl = IXGBE_DCA_RXCTRL_DESC_RRO_EN |
		       IXGBE_DCA_RXCTRL_DATA_WRO_EN |
		       IXGBE_DCA_RXCTRL_HEAD_WRO_EN;

	/* DCA_TXCTRL default value */
	vfdca_txctrl = IXGBE_DCA_TXCTRL_DESC_RRO_EN |
		       IXGBE_DCA_TXCTRL_DESC_WRO_EN |
		       IXGBE_DCA_TXCTRL_DATA_RRO_EN;

	FUNC12(hw, IXGBE_VFPSRTYPE, 0);

	for (i = 0; i < 7; i++) {
		FUNC12(hw, FUNC2(i), 0);
		FUNC12(hw, FUNC3(i), 0);
		FUNC12(hw, FUNC4(i), 0);
		FUNC12(hw, FUNC5(i), vfsrrctl);
		FUNC12(hw, FUNC6(i), 0);
		FUNC12(hw, FUNC7(i), 0);
		FUNC12(hw, FUNC10(i), 0);
		FUNC12(hw, FUNC8(i), 0);
		FUNC12(hw, FUNC9(i), 0);
		FUNC12(hw, FUNC0(i), vfdca_rxctrl);
		FUNC12(hw, FUNC1(i), vfdca_txctrl);
	}

	FUNC11(hw);
}