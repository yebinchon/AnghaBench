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
struct TYPE_2__ {int* low_water; int* high_water; int pause_time; } ;
struct ixgbe_hw {TYPE_1__ fc; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int IXGBE_DCB_MAX_TRAFFIC_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IXGBE_FCRTH_FCEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IXGBE_FCRTL_XONE ; 
 int /*<<< orphan*/  IXGBE_FCRTV ; 
 int /*<<< orphan*/  IXGBE_FCTRL ; 
 int IXGBE_FCTRL_RFCE ; 
 int IXGBE_FCTRL_RPFCE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_RMCS ; 
 int IXGBE_RMCS_TFCE_802_3X ; 
 int IXGBE_RMCS_TFCE_PRIORITY ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

s32 FUNC5(struct ixgbe_hw *hw, u8 pfc_en)
{
	u32 fcrtl, reg;
	u8 i;

	/* Enable Transmit Priority Flow Control */
	reg = FUNC3(hw, IXGBE_RMCS);
	reg &= ~IXGBE_RMCS_TFCE_802_3X;
	reg |= IXGBE_RMCS_TFCE_PRIORITY;
	FUNC4(hw, IXGBE_RMCS, reg);

	/* Enable Receive Priority Flow Control */
	reg = FUNC3(hw, IXGBE_FCTRL);
	reg &= ~(IXGBE_FCTRL_RPFCE | IXGBE_FCTRL_RFCE);

	if (pfc_en)
		reg |= IXGBE_FCTRL_RPFCE;

	FUNC4(hw, IXGBE_FCTRL, reg);

	/* Configure PFC Tx thresholds per TC */
	for (i = 0; i < IXGBE_DCB_MAX_TRAFFIC_CLASS; i++) {
		if (!(pfc_en & (1 << i))) {
			FUNC4(hw, FUNC1(i), 0);
			FUNC4(hw, FUNC0(i), 0);
			continue;
		}

		fcrtl = (hw->fc.low_water[i] << 10) | IXGBE_FCRTL_XONE;
		reg = (hw->fc.high_water[i] << 10) | IXGBE_FCRTH_FCEN;
		FUNC4(hw, FUNC1(i), fcrtl);
		FUNC4(hw, FUNC0(i), reg);
	}

	/* Configure pause time */
	reg = hw->fc.pause_time | (hw->fc.pause_time << 16);
	for (i = 0; i < (IXGBE_DCB_MAX_TRAFFIC_CLASS / 2); i++)
		FUNC4(hw, FUNC2(i), reg);

	/* Configure flow control refresh threshold value */
	FUNC4(hw, IXGBE_FCRTV, hw->fc.pause_time / 2);

	return IXGBE_SUCCESS;
}