#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_6__ {int pause_time; int current_mode; int* high_water; int* low_water; int requested_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* check_link ) (struct ixgbe_hw*,scalar_t__*,int*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_3__ fc; TYPE_2__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int IXGBE_DCB_MAX_TRAFFIC_CLASS ; 
 int /*<<< orphan*/  IXGBE_ERR_CONFIG ; 
 int /*<<< orphan*/  IXGBE_ERR_INVALID_LINK_SETTINGS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int IXGBE_FCRTH_FCEN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int IXGBE_FCRTL_XONE ; 
 int /*<<< orphan*/  IXGBE_FCRTV ; 
 int /*<<< orphan*/  IXGBE_FCTRL ; 
 scalar_t__ IXGBE_FCTRL_DPF ; 
 scalar_t__ IXGBE_FCTRL_RFCE ; 
 scalar_t__ IXGBE_FCTRL_RPFCE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ IXGBE_LINK_SPEED_1GB_FULL ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_RMCS ; 
 scalar_t__ IXGBE_RMCS_TFCE_802_3X ; 
 scalar_t__ IXGBE_RMCS_TFCE_PRIORITY ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*) ; 
#define  ixgbe_fc_full 131 
#define  ixgbe_fc_none 130 
#define  ixgbe_fc_rx_pause 129 
#define  ixgbe_fc_tx_pause 128 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,scalar_t__*,int*,int /*<<< orphan*/ ) ; 

s32 FUNC9(struct ixgbe_hw *hw)
{
	s32 ret_val = IXGBE_SUCCESS;
	u32 fctrl_reg;
	u32 rmcs_reg;
	u32 reg;
	u32 fcrtl, fcrth;
	u32 link_speed = 0;
	int i;
	bool link_up;

	FUNC0("ixgbe_fc_enable_82598");

	/* Validate the water mark configuration */
	if (!hw->fc.pause_time) {
		ret_val = IXGBE_ERR_INVALID_LINK_SETTINGS;
		goto out;
	}

	/* Low water mark of zero causes XOFF floods */
	for (i = 0; i < IXGBE_DCB_MAX_TRAFFIC_CLASS; i++) {
		if ((hw->fc.current_mode & ixgbe_fc_tx_pause) &&
		    hw->fc.high_water[i]) {
			if (!hw->fc.low_water[i] ||
			    hw->fc.low_water[i] >= hw->fc.high_water[i]) {
				FUNC1("Invalid water mark configuration\n");
				ret_val = IXGBE_ERR_INVALID_LINK_SETTINGS;
				goto out;
			}
		}
	}

	/*
	 * On 82598 having Rx FC on causes resets while doing 1G
	 * so if it's on turn it off once we know link_speed. For
	 * more details see 82598 Specification update.
	 */
	hw->mac.ops.check_link(hw, &link_speed, &link_up, FALSE);
	if (link_up && link_speed == IXGBE_LINK_SPEED_1GB_FULL) {
		switch (hw->fc.requested_mode) {
		case ixgbe_fc_full:
			hw->fc.requested_mode = ixgbe_fc_tx_pause;
			break;
		case ixgbe_fc_rx_pause:
			hw->fc.requested_mode = ixgbe_fc_none;
			break;
		default:
			/* no change */
			break;
		}
	}

	/* Negotiate the fc mode to use */
	FUNC7(hw);

	/* Disable any previous flow control settings */
	fctrl_reg = FUNC5(hw, IXGBE_FCTRL);
	fctrl_reg &= ~(IXGBE_FCTRL_RFCE | IXGBE_FCTRL_RPFCE);

	rmcs_reg = FUNC5(hw, IXGBE_RMCS);
	rmcs_reg &= ~(IXGBE_RMCS_TFCE_PRIORITY | IXGBE_RMCS_TFCE_802_3X);

	/*
	 * The possible values of fc.current_mode are:
	 * 0: Flow control is completely disabled
	 * 1: Rx flow control is enabled (we can receive pause frames,
	 *    but not send pause frames).
	 * 2: Tx flow control is enabled (we can send pause frames but
	 *     we do not support receiving pause frames).
	 * 3: Both Rx and Tx flow control (symmetric) are enabled.
	 * other: Invalid.
	 */
	switch (hw->fc.current_mode) {
	case ixgbe_fc_none:
		/*
		 * Flow control is disabled by software override or autoneg.
		 * The code below will actually disable it in the HW.
		 */
		break;
	case ixgbe_fc_rx_pause:
		/*
		 * Rx Flow control is enabled and Tx Flow control is
		 * disabled by software override. Since there really
		 * isn't a way to advertise that we are capable of RX
		 * Pause ONLY, we will advertise that we support both
		 * symmetric and asymmetric Rx PAUSE.  Later, we will
		 * disable the adapter's ability to send PAUSE frames.
		 */
		fctrl_reg |= IXGBE_FCTRL_RFCE;
		break;
	case ixgbe_fc_tx_pause:
		/*
		 * Tx Flow control is enabled, and Rx Flow control is
		 * disabled by software override.
		 */
		rmcs_reg |= IXGBE_RMCS_TFCE_802_3X;
		break;
	case ixgbe_fc_full:
		/* Flow control (both Rx and Tx) is enabled by SW override. */
		fctrl_reg |= IXGBE_FCTRL_RFCE;
		rmcs_reg |= IXGBE_RMCS_TFCE_802_3X;
		break;
	default:
		FUNC1("Flow control param set incorrectly\n");
		ret_val = IXGBE_ERR_CONFIG;
		goto out;
		break;
	}

	/* Set 802.3x based flow control settings. */
	fctrl_reg |= IXGBE_FCTRL_DPF;
	FUNC6(hw, IXGBE_FCTRL, fctrl_reg);
	FUNC6(hw, IXGBE_RMCS, rmcs_reg);

	/* Set up and enable Rx high/low water mark thresholds, enable XON. */
	for (i = 0; i < IXGBE_DCB_MAX_TRAFFIC_CLASS; i++) {
		if ((hw->fc.current_mode & ixgbe_fc_tx_pause) &&
		    hw->fc.high_water[i]) {
			fcrtl = (hw->fc.low_water[i] << 10) | IXGBE_FCRTL_XONE;
			fcrth = (hw->fc.high_water[i] << 10) | IXGBE_FCRTH_FCEN;
			FUNC6(hw, FUNC3(i), fcrtl);
			FUNC6(hw, FUNC2(i), fcrth);
		} else {
			FUNC6(hw, FUNC3(i), 0);
			FUNC6(hw, FUNC2(i), 0);
		}

	}

	/* Configure pause time (2 TCs per register) */
	reg = hw->fc.pause_time * 0x00010001;
	for (i = 0; i < (IXGBE_DCB_MAX_TRAFFIC_CLASS / 2); i++)
		FUNC6(hw, FUNC4(i), reg);

	/* Configure flow control refresh threshold value */
	FUNC6(hw, IXGBE_FCRTV, hw->fc.pause_time / 2);

out:
	return ret_val;
}