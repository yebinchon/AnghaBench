#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_4__ {int* high_water; int* low_water; int pause_time; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_2__ fc; TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int IXGBE_DCB_MAX_TRAFFIC_CLASS ; 
 int IXGBE_DCB_MAX_USER_PRIORITY ; 
 int /*<<< orphan*/  IXGBE_FCCFG ; 
 int IXGBE_FCCFG_TFCE_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IXGBE_FCRTH_FCEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IXGBE_FCRTL_XONE ; 
 int /*<<< orphan*/  IXGBE_FCRTV ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  IXGBE_MFLCN ; 
 int IXGBE_MFLCN_DPF ; 
 int IXGBE_MFLCN_RFCE ; 
 int IXGBE_MFLCN_RPFCE ; 
 int IXGBE_MFLCN_RPFCE_MASK ; 
 int IXGBE_MFLCN_RPFCE_SHIFT ; 
 int FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ixgbe_mac_X540 ; 

s32 FUNC6(struct ixgbe_hw *hw, u8 pfc_en, u8 *map)
{
	u32 i, j, fcrtl, reg;
	u8 max_tc = 0;

	/* Enable Transmit Priority Flow Control */
	FUNC5(hw, IXGBE_FCCFG, IXGBE_FCCFG_TFCE_PRIORITY);

	/* Enable Receive Priority Flow Control */
	reg = FUNC3(hw, IXGBE_MFLCN);
	reg |= IXGBE_MFLCN_DPF;

	/*
	 * X540 supports per TC Rx priority flow control.  So
	 * clear all TCs and only enable those that should be
	 * enabled.
	 */
	reg &= ~(IXGBE_MFLCN_RPFCE_MASK | IXGBE_MFLCN_RFCE);

	if (hw->mac.type >= ixgbe_mac_X540)
		reg |= pfc_en << IXGBE_MFLCN_RPFCE_SHIFT;

	if (pfc_en)
		reg |= IXGBE_MFLCN_RPFCE;

	FUNC5(hw, IXGBE_MFLCN, reg);

	for (i = 0; i < IXGBE_DCB_MAX_USER_PRIORITY; i++) {
		if (map[i] > max_tc)
			max_tc = map[i];
	}


	/* Configure PFC Tx thresholds per TC */
	for (i = 0; i <= max_tc; i++) {
		int enabled = 0;

		for (j = 0; j < IXGBE_DCB_MAX_USER_PRIORITY; j++) {
			if ((map[j] == i) && (pfc_en & (1 << j))) {
				enabled = 1;
				break;
			}
		}

		if (enabled) {
			reg = (hw->fc.high_water[i] << 10) | IXGBE_FCRTH_FCEN;
			fcrtl = (hw->fc.low_water[i] << 10) | IXGBE_FCRTL_XONE;
			FUNC5(hw, FUNC1(i), fcrtl);
		} else {
			/*
			 * In order to prevent Tx hangs when the internal Tx
			 * switch is enabled we must set the high water mark
			 * to the Rx packet buffer size - 24KB.  This allows
			 * the Tx switch to function even under heavy Rx
			 * workloads.
			 */
			reg = FUNC3(hw, FUNC4(i)) - 24576;
			FUNC5(hw, FUNC1(i), 0);
		}

		FUNC5(hw, FUNC0(i), reg);
	}

	for (; i < IXGBE_DCB_MAX_TRAFFIC_CLASS; i++) {
		FUNC5(hw, FUNC1(i), 0);
		FUNC5(hw, FUNC0(i), 0);
	}

	/* Configure pause time (2 TCs per register) */
	reg = hw->fc.pause_time | (hw->fc.pause_time << 16);
	for (i = 0; i < (IXGBE_DCB_MAX_TRAFFIC_CLASS / 2); i++)
		FUNC5(hw, FUNC2(i), reg);

	/* Configure flow control refresh threshold value */
	FUNC5(hw, IXGBE_FCRTV, hw->fc.pause_time / 2);

	return IXGBE_SUCCESS;
}