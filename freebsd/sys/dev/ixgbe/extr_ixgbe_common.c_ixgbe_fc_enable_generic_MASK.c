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
typedef  int u32 ;
struct TYPE_6__ {int pause_time; int current_mode; int* high_water; int* low_water; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* fc_autoneg ) (struct ixgbe_hw*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_3__ fc; TYPE_2__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int IXGBE_DCB_MAX_TRAFFIC_CLASS ; 
 int /*<<< orphan*/  IXGBE_ERROR_ARGUMENT ; 
 int /*<<< orphan*/  IXGBE_ERR_CONFIG ; 
 int /*<<< orphan*/  IXGBE_ERR_INVALID_LINK_SETTINGS ; 
 int /*<<< orphan*/  IXGBE_FCCFG ; 
 int IXGBE_FCCFG_TFCE_802_3X ; 
 int IXGBE_FCCFG_TFCE_PRIORITY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int IXGBE_FCRTH_FCEN ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int IXGBE_FCRTL_XONE ; 
 int /*<<< orphan*/  IXGBE_FCRTV ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  IXGBE_MFLCN ; 
 int IXGBE_MFLCN_DPF ; 
 int IXGBE_MFLCN_RFCE ; 
 int IXGBE_MFLCN_RPFCE_MASK ; 
 int FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
#define  ixgbe_fc_full 131 
#define  ixgbe_fc_none 130 
#define  ixgbe_fc_rx_pause 129 
#define  ixgbe_fc_tx_pause 128 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_hw*) ; 

s32 FUNC10(struct ixgbe_hw *hw)
{
	s32 ret_val = IXGBE_SUCCESS;
	u32 mflcn_reg, fccfg_reg;
	u32 reg;
	u32 fcrtl, fcrth;
	int i;

	FUNC0("ixgbe_fc_enable_generic");

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

	/* Negotiate the fc mode to use */
	hw->mac.ops.fc_autoneg(hw);

	/* Disable any previous flow control settings */
	mflcn_reg = FUNC6(hw, IXGBE_MFLCN);
	mflcn_reg &= ~(IXGBE_MFLCN_RPFCE_MASK | IXGBE_MFLCN_RFCE);

	fccfg_reg = FUNC6(hw, IXGBE_FCCFG);
	fccfg_reg &= ~(IXGBE_FCCFG_TFCE_802_3X | IXGBE_FCCFG_TFCE_PRIORITY);

	/*
	 * The possible values of fc.current_mode are:
	 * 0: Flow control is completely disabled
	 * 1: Rx flow control is enabled (we can receive pause frames,
	 *    but not send pause frames).
	 * 2: Tx flow control is enabled (we can send pause frames but
	 *    we do not support receiving pause frames).
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
		mflcn_reg |= IXGBE_MFLCN_RFCE;
		break;
	case ixgbe_fc_tx_pause:
		/*
		 * Tx Flow control is enabled, and Rx Flow control is
		 * disabled by software override.
		 */
		fccfg_reg |= IXGBE_FCCFG_TFCE_802_3X;
		break;
	case ixgbe_fc_full:
		/* Flow control (both Rx and Tx) is enabled by SW override. */
		mflcn_reg |= IXGBE_MFLCN_RFCE;
		fccfg_reg |= IXGBE_FCCFG_TFCE_802_3X;
		break;
	default:
		FUNC2(IXGBE_ERROR_ARGUMENT,
			     "Flow control param set incorrectly\n");
		ret_val = IXGBE_ERR_CONFIG;
		goto out;
		break;
	}

	/* Set 802.3x based flow control settings. */
	mflcn_reg |= IXGBE_MFLCN_DPF;
	FUNC8(hw, IXGBE_MFLCN, mflcn_reg);
	FUNC8(hw, IXGBE_FCCFG, fccfg_reg);


	/* Set up and enable Rx high/low water mark thresholds, enable XON. */
	for (i = 0; i < IXGBE_DCB_MAX_TRAFFIC_CLASS; i++) {
		if ((hw->fc.current_mode & ixgbe_fc_tx_pause) &&
		    hw->fc.high_water[i]) {
			fcrtl = (hw->fc.low_water[i] << 10) | IXGBE_FCRTL_XONE;
			FUNC8(hw, FUNC4(i), fcrtl);
			fcrth = (hw->fc.high_water[i] << 10) | IXGBE_FCRTH_FCEN;
		} else {
			FUNC8(hw, FUNC4(i), 0);
			/*
			 * In order to prevent Tx hangs when the internal Tx
			 * switch is enabled we must set the high water mark
			 * to the Rx packet buffer size - 24KB.  This allows
			 * the Tx switch to function even under heavy Rx
			 * workloads.
			 */
			fcrth = FUNC6(hw, FUNC7(i)) - 24576;
		}

		FUNC8(hw, FUNC3(i), fcrth);
	}

	/* Configure pause time (2 TCs per register) */
	reg = hw->fc.pause_time * 0x00010001;
	for (i = 0; i < (IXGBE_DCB_MAX_TRAFFIC_CLASS / 2); i++)
		FUNC8(hw, FUNC5(i), reg);

	/* Configure flow control refresh threshold value */
	FUNC8(hw, IXGBE_FCRTV, hw->fc.pause_time / 2);

out:
	return ret_val;
}