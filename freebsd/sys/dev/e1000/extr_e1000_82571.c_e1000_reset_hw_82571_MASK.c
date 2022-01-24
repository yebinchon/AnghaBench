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
struct TYPE_6__ {int type; int /*<<< orphan*/  serdes_link_state; } ;
struct TYPE_5__ {scalar_t__ media_type; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ mac; TYPE_2__ phy; TYPE_1__ nvm; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int /*<<< orphan*/  E1000_CTRL_EXT ; 
 int E1000_CTRL_EXT_EE_RST ; 
 int E1000_CTRL_RST ; 
 int /*<<< orphan*/  E1000_EECD ; 
 int E1000_EECD_GNT ; 
 int E1000_EECD_REQ ; 
 int /*<<< orphan*/  E1000_ICR ; 
 int /*<<< orphan*/  E1000_IMC ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  E1000_TCTL ; 
 int E1000_TCTL_EN ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
#define  e1000_82571 132 
#define  e1000_82572 131 
#define  e1000_82573 130 
#define  e1000_82574 129 
#define  e1000_82583 128 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*) ; 
 scalar_t__ FUNC8 (struct e1000_hw*) ; 
 scalar_t__ e1000_media_type_internal_serdes ; 
 scalar_t__ e1000_nvm_flash_hw ; 
 int /*<<< orphan*/  FUNC9 (struct e1000_hw*) ; 
 int /*<<< orphan*/  e1000_serdes_link_down ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static s32 FUNC13(struct e1000_hw *hw)
{
	u32 ctrl, ctrl_ext, eecd, tctl;
	s32 ret_val;

	FUNC0("e1000_reset_hw_82571");

	/* Prevent the PCI-E bus from sticking if there is no TLP connection
	 * on the last TLP read/write transaction when MAC is reset.
	 */
	ret_val = FUNC6(hw);
	if (ret_val)
		FUNC1("PCI-E Master disable polling has failed.\n");

	FUNC1("Masking off all interrupts\n");
	FUNC4(hw, E1000_IMC, 0xffffffff);

	FUNC4(hw, E1000_RCTL, 0);
	tctl = FUNC2(hw, E1000_TCTL);
	tctl &= ~E1000_TCTL_EN;
	FUNC4(hw, E1000_TCTL, tctl);
	FUNC3(hw);

	FUNC11(10);

	/* Must acquire the MDIO ownership before MAC reset.
	 * Ownership defaults to firmware after a reset.
	 */
	switch (hw->mac.type) {
	case e1000_82573:
	case e1000_82574:
	case e1000_82583:
		ret_val = FUNC8(hw);
		break;
	default:
		break;
	}

	ctrl = FUNC2(hw, E1000_CTRL);

	FUNC1("Issuing a global reset to MAC\n");
	FUNC4(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);

	/* Must release MDIO ownership and mutex after MAC reset. */
	switch (hw->mac.type) {
	case e1000_82573:
	case e1000_82574:
	case e1000_82583:
		/* Release mutex only if the hw semaphore is acquired */
		if (!ret_val)
			FUNC9(hw);
		break;
	default:
		/* we didn't get the semaphore no need to put it */
		break;
	}

	if (hw->nvm.type == e1000_nvm_flash_hw) {
		FUNC12(10);
		ctrl_ext = FUNC2(hw, E1000_CTRL_EXT);
		ctrl_ext |= E1000_CTRL_EXT_EE_RST;
		FUNC4(hw, E1000_CTRL_EXT, ctrl_ext);
		FUNC3(hw);
	}

	ret_val = FUNC7(hw);
	if (ret_val)
		/* We don't want to continue accessing MAC registers. */
		return ret_val;

	/* Phy configuration from NVM just starts after EECD_AUTO_RD is set.
	 * Need to wait for Phy configuration completion before accessing
	 * NVM and Phy.
	 */

	switch (hw->mac.type) {
	case e1000_82571:
	case e1000_82572:
		/* REQ and GNT bits need to be cleared when using AUTO_RD
		 * to access the EEPROM.
		 */
		eecd = FUNC2(hw, E1000_EECD);
		eecd &= ~(E1000_EECD_REQ | E1000_EECD_GNT);
		FUNC4(hw, E1000_EECD, eecd);
		break;
	case e1000_82573:
	case e1000_82574:
	case e1000_82583:
		FUNC11(25);
		break;
	default:
		break;
	}

	/* Clear any pending interrupt events. */
	FUNC4(hw, E1000_IMC, 0xffffffff);
	FUNC2(hw, E1000_ICR);

	if (hw->mac.type == e1000_82571) {
		/* Install any alternate MAC address into RAR0 */
		ret_val = FUNC5(hw);
		if (ret_val)
			return ret_val;

		FUNC10(hw, TRUE);
	}

	/* Reinitialize the 82571 serdes link state machine */
	if (hw->phy.media_type == e1000_media_type_internal_serdes)
		hw->mac.serdes_link_state = e1000_serdes_link_down;

	return E1000_SUCCESS;
}