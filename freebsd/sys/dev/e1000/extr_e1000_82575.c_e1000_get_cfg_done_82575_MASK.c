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
typedef  int u32 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ func; } ;
struct e1000_hw {TYPE_1__ phy; TYPE_2__ bus; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_EECD ; 
 int E1000_EECD_PRES ; 
 int /*<<< orphan*/  E1000_EEMNGCTL ; 
 scalar_t__ E1000_FUNC_1 ; 
 scalar_t__ E1000_FUNC_2 ; 
 scalar_t__ E1000_FUNC_3 ; 
 int E1000_NVM_CFG_DONE_PORT_0 ; 
 int E1000_NVM_CFG_DONE_PORT_1 ; 
 int E1000_NVM_CFG_DONE_PORT_2 ; 
 int E1000_NVM_CFG_DONE_PORT_3 ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 scalar_t__ PHY_CFG_TIMEOUT ; 
 scalar_t__ e1000_phy_igp_3 ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static s32 FUNC5(struct e1000_hw *hw)
{
	s32 timeout = PHY_CFG_TIMEOUT;
	u32 mask = E1000_NVM_CFG_DONE_PORT_0;

	FUNC0("e1000_get_cfg_done_82575");

	if (hw->bus.func == E1000_FUNC_1)
		mask = E1000_NVM_CFG_DONE_PORT_1;
	else if (hw->bus.func == E1000_FUNC_2)
		mask = E1000_NVM_CFG_DONE_PORT_2;
	else if (hw->bus.func == E1000_FUNC_3)
		mask = E1000_NVM_CFG_DONE_PORT_3;
	while (timeout) {
		if (FUNC2(hw, E1000_EEMNGCTL) & mask)
			break;
		FUNC4(1);
		timeout--;
	}
	if (!timeout)
		FUNC1("MNG configuration cycle has not completed.\n");

	/* If EEPROM is not marked present, init the PHY manually */
	if (!(FUNC2(hw, E1000_EECD) & E1000_EECD_PRES) &&
	    (hw->phy.type == e1000_phy_igp_3))
		FUNC3(hw);

	return E1000_SUCCESS;
}