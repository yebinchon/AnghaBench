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
typedef  int u16 ;
struct TYPE_4__ {scalar_t__ (* setup_link ) (struct e1000_hw*) ;int /*<<< orphan*/  (* clear_vfta ) (struct e1000_hw*) ;scalar_t__ (* id_led_init ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {int mta_reg_count; TYPE_1__ ops; int /*<<< orphan*/  rar_entry_count; } ;
struct TYPE_5__ {int /*<<< orphan*/  mdic_wa_enable; } ;
struct TYPE_6__ {TYPE_2__ _80003es2lan; } ;
struct e1000_hw {TYPE_3__ dev_spec; struct e1000_mac_info mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DEFAULT_TCTL_EXT_GCEX_80003ES2LAN ; 
 int DEFAULT_TIPG_IPGT_1000_80003ES2LAN ; 
 int /*<<< orphan*/  E1000_FFLT ; 
 int E1000_KMRNCTRLSTA_IBIST_DISABLE ; 
 int E1000_KMRNCTRLSTA_INBAND_PARAM ; 
 int E1000_KMRNCTRLSTA_OFFSET ; 
 int E1000_KMRNCTRLSTA_OFFSET_SHIFT ; 
 int E1000_KMRNCTRLSTA_OPMODE_INBAND_MDIO ; 
 int E1000_KMRNCTRLSTA_OPMODE_MASK ; 
 int /*<<< orphan*/  E1000_MTA ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  E1000_TCTL ; 
 int /*<<< orphan*/  E1000_TCTL_EXT ; 
 int E1000_TCTL_EXT_GCEX_MASK ; 
 int E1000_TCTL_RTLC ; 
 int /*<<< orphan*/  E1000_TIPG ; 
 int E1000_TIPG_IPGT_MASK ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int E1000_TXDCTL_COUNT_DESC ; 
 int E1000_TXDCTL_FULL_TX_DESC_WB ; 
 int E1000_TXDCTL_WTHRESH ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct e1000_hw*) ; 
 scalar_t__ FUNC10 (struct e1000_hw*,int,int*) ; 
 scalar_t__ FUNC11 (struct e1000_hw*,int,int) ; 
 scalar_t__ FUNC12 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct e1000_hw*) ; 
 scalar_t__ FUNC14 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC15(struct e1000_hw *hw)
{
	struct e1000_mac_info *mac = &hw->mac;
	u32 reg_data;
	s32 ret_val;
	u16 kum_reg_data;
	u16 i;

	FUNC0("e1000_init_hw_80003es2lan");

	FUNC9(hw);

	/* Initialize identification LED */
	ret_val = mac->ops.id_led_init(hw);
	/* An error is not fatal and we should not stop init due to this */
	if (ret_val)
		FUNC1("Error initializing identification LED\n");

	/* Disabling VLAN filtering */
	FUNC1("Initializing the IEEE VLAN\n");
	mac->ops.clear_vfta(hw);

	/* Setup the receive address. */
	FUNC8(hw, mac->rar_entry_count);

	/* Zero out the Multicast HASH table */
	FUNC1("Zeroing the MTA\n");
	for (i = 0; i < mac->mta_reg_count; i++)
		FUNC6(hw, E1000_MTA, i, 0);

	/* Setup link and flow control */
	ret_val = mac->ops.setup_link(hw);
	if (ret_val)
		return ret_val;

	/* Disable IBIST slave mode (far-end loopback) */
	ret_val =
	    FUNC10(hw, E1000_KMRNCTRLSTA_INBAND_PARAM,
					    &kum_reg_data);
	if (!ret_val) {
		kum_reg_data |= E1000_KMRNCTRLSTA_IBIST_DISABLE;
		ret_val = FUNC11(hw,
						 E1000_KMRNCTRLSTA_INBAND_PARAM,
						 kum_reg_data);
		if (ret_val)
			FUNC1("Error disabling far-end loopback\n");
	} else
		FUNC1("Error disabling far-end loopback\n");

	/* Set the transmit descriptor write-back policy */
	reg_data = FUNC2(hw, FUNC4(0));
	reg_data = ((reg_data & ~E1000_TXDCTL_WTHRESH) |
		    E1000_TXDCTL_FULL_TX_DESC_WB | E1000_TXDCTL_COUNT_DESC);
	FUNC5(hw, FUNC4(0), reg_data);

	/* ...for both queues. */
	reg_data = FUNC2(hw, FUNC4(1));
	reg_data = ((reg_data & ~E1000_TXDCTL_WTHRESH) |
		    E1000_TXDCTL_FULL_TX_DESC_WB | E1000_TXDCTL_COUNT_DESC);
	FUNC5(hw, FUNC4(1), reg_data);

	/* Enable retransmit on late collisions */
	reg_data = FUNC2(hw, E1000_TCTL);
	reg_data |= E1000_TCTL_RTLC;
	FUNC5(hw, E1000_TCTL, reg_data);

	/* Configure Gigabit Carry Extend Padding */
	reg_data = FUNC2(hw, E1000_TCTL_EXT);
	reg_data &= ~E1000_TCTL_EXT_GCEX_MASK;
	reg_data |= DEFAULT_TCTL_EXT_GCEX_80003ES2LAN;
	FUNC5(hw, E1000_TCTL_EXT, reg_data);

	/* Configure Transmit Inter-Packet Gap */
	reg_data = FUNC2(hw, E1000_TIPG);
	reg_data &= ~E1000_TIPG_IPGT_MASK;
	reg_data |= DEFAULT_TIPG_IPGT_1000_80003ES2LAN;
	FUNC5(hw, E1000_TIPG, reg_data);

	reg_data = FUNC3(hw, E1000_FFLT, 0x0001);
	reg_data &= ~0x00100000;
	FUNC6(hw, E1000_FFLT, 0x0001, reg_data);

	/* default to TRUE to enable the MDIC W/A */
	hw->dev_spec._80003es2lan.mdic_wa_enable = TRUE;

	ret_val =
	    FUNC10(hw, E1000_KMRNCTRLSTA_OFFSET >>
					    E1000_KMRNCTRLSTA_OFFSET_SHIFT, &i);
	if (!ret_val) {
		if ((i & E1000_KMRNCTRLSTA_OPMODE_MASK) ==
		     E1000_KMRNCTRLSTA_OPMODE_INBAND_MDIO)
			hw->dev_spec._80003es2lan.mdic_wa_enable = FALSE;
	}

	/* Clear all of the statistics registers (clear on read).  It is
	 * important that we do this after we have tried to establish link
	 * because the symbol error count will increment wildly if there
	 * is no link.
	 */
	FUNC7(hw);

	return ret_val;
}