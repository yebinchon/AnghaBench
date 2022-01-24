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
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  set_lben; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IXGBE_PFDTXGSWC ; 
 int IXGBE_PFDTXGSWC_VT_LBEN ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_RXCTRL ; 
 int IXGBE_RXCTRL_RXEN ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ ixgbe_mac_82598EB ; 

void FUNC2(struct ixgbe_hw *hw)
{
	u32 pfdtxgswc;
	u32 rxctrl;

	rxctrl = FUNC0(hw, IXGBE_RXCTRL);
	if (rxctrl & IXGBE_RXCTRL_RXEN) {
		if (hw->mac.type != ixgbe_mac_82598EB) {
			pfdtxgswc = FUNC0(hw, IXGBE_PFDTXGSWC);
			if (pfdtxgswc & IXGBE_PFDTXGSWC_VT_LBEN) {
				pfdtxgswc &= ~IXGBE_PFDTXGSWC_VT_LBEN;
				FUNC1(hw, IXGBE_PFDTXGSWC, pfdtxgswc);
				hw->mac.set_lben = TRUE;
			} else {
				hw->mac.set_lben = FALSE;
			}
		}
		rxctrl &= ~IXGBE_RXCTRL_RXEN;
		FUNC1(hw, IXGBE_RXCTRL, rxctrl);
	}
}