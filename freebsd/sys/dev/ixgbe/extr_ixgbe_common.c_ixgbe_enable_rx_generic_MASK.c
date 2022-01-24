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
struct TYPE_2__ {scalar_t__ type; scalar_t__ set_lben; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  IXGBE_PFDTXGSWC ; 
 int IXGBE_PFDTXGSWC_VT_LBEN ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_RXCTRL ; 
 int IXGBE_RXCTRL_RXEN ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ixgbe_mac_82598EB ; 

void FUNC2(struct ixgbe_hw *hw)
{
	u32 pfdtxgswc;
	u32 rxctrl;

	rxctrl = FUNC0(hw, IXGBE_RXCTRL);
	FUNC1(hw, IXGBE_RXCTRL, (rxctrl | IXGBE_RXCTRL_RXEN));

	if (hw->mac.type != ixgbe_mac_82598EB) {
		if (hw->mac.set_lben) {
			pfdtxgswc = FUNC0(hw, IXGBE_PFDTXGSWC);
			pfdtxgswc |= IXGBE_PFDTXGSWC_VT_LBEN;
			FUNC1(hw, IXGBE_PFDTXGSWC, pfdtxgswc);
			hw->mac.set_lben = FALSE;
		}
	}
}