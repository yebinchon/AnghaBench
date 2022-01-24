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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {scalar_t__ (* setup_link ) (struct e1000_hw*) ;scalar_t__ (* id_led_init ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {scalar_t__ type; TYPE_3__ ops; int /*<<< orphan*/  mta_reg_count; int /*<<< orphan*/  rar_entry_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* write_reg ) (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* read_reg ) (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; struct e1000_mac_info mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BM_PORT_GEN_CFG ; 
 int /*<<< orphan*/  BM_WUC_HOST_WU_BIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL_EXT ; 
 int E1000_CTRL_EXT_RO_DIS ; 
 int /*<<< orphan*/  E1000_MTA ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int E1000_TXDCTL_FULL_TX_DESC_WB ; 
 int E1000_TXDCTL_MAX_TX_DESC_PREFETCH ; 
 int E1000_TXDCTL_PTHRESH ; 
 int E1000_TXDCTL_WTHRESH ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PCIE_ICH8_SNOOP_ALL ; 
 scalar_t__ PCIE_NO_SNOOP_ALL ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 scalar_t__ e1000_ich8lan ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*) ; 
 scalar_t__ e1000_phy_82578 ; 
 scalar_t__ FUNC9 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_hw*,int) ; 
 scalar_t__ FUNC11 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC15(struct e1000_hw *hw)
{
	struct e1000_mac_info *mac = &hw->mac;
	u32 ctrl_ext, txdctl, snoop;
	s32 ret_val;
	u16 i;

	FUNC0("e1000_init_hw_ich8lan");

	FUNC8(hw);

	/* Initialize identification LED */
	ret_val = mac->ops.id_led_init(hw);
	/* An error is not fatal and we should not stop init due to this */
	if (ret_val)
		FUNC1("Error initializing identification LED\n");

	/* Setup the receive address. */
	FUNC7(hw, mac->rar_entry_count);

	/* Zero out the Multicast HASH table */
	FUNC1("Zeroing the MTA\n");
	for (i = 0; i < mac->mta_reg_count; i++)
		FUNC5(hw, E1000_MTA, i, 0);

	/* The 82578 Rx buffer will stall if wakeup is enabled in host and
	 * the ME.  Disable wakeup by clearing the host wakeup bit.
	 * Reset the phy after disabling host wakeup to reset the Rx buffer.
	 */
	if (hw->phy.type == e1000_phy_82578) {
		hw->phy.ops.read_reg(hw, BM_PORT_GEN_CFG, &i);
		i &= ~BM_WUC_HOST_WU_BIT;
		hw->phy.ops.write_reg(hw, BM_PORT_GEN_CFG, i);
		ret_val = FUNC9(hw);
		if (ret_val)
			return ret_val;
	}

	/* Setup link and flow control */
	ret_val = mac->ops.setup_link(hw);

	/* Set the transmit descriptor write-back policy for both queues */
	txdctl = FUNC2(hw, FUNC3(0));
	txdctl = ((txdctl & ~E1000_TXDCTL_WTHRESH) |
		  E1000_TXDCTL_FULL_TX_DESC_WB);
	txdctl = ((txdctl & ~E1000_TXDCTL_PTHRESH) |
		  E1000_TXDCTL_MAX_TX_DESC_PREFETCH);
	FUNC4(hw, FUNC3(0), txdctl);
	txdctl = FUNC2(hw, FUNC3(1));
	txdctl = ((txdctl & ~E1000_TXDCTL_WTHRESH) |
		  E1000_TXDCTL_FULL_TX_DESC_WB);
	txdctl = ((txdctl & ~E1000_TXDCTL_PTHRESH) |
		  E1000_TXDCTL_MAX_TX_DESC_PREFETCH);
	FUNC4(hw, FUNC3(1), txdctl);

	/* ICH8 has opposite polarity of no_snoop bits.
	 * By default, we should use snoop behavior.
	 */
	if (mac->type == e1000_ich8lan)
		snoop = PCIE_ICH8_SNOOP_ALL;
	else
		snoop = (u32) ~(PCIE_NO_SNOOP_ALL);
	FUNC10(hw, snoop);

	ctrl_ext = FUNC2(hw, E1000_CTRL_EXT);
	ctrl_ext |= E1000_CTRL_EXT_RO_DIS;
	FUNC4(hw, E1000_CTRL_EXT, ctrl_ext);

	/* Clear all of the statistics registers (clear on read).  It is
	 * important that we do this after we have tried to establish link
	 * because the symbol error count will increment wildly if there
	 * is no link.
	 */
	FUNC6(hw);

	return ret_val;
}