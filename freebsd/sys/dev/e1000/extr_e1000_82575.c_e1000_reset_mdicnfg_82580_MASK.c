#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_5__ {int /*<<< orphan*/  func; } ;
struct TYPE_8__ {scalar_t__ (* read ) (struct e1000_hw*,scalar_t__,int,int*) ;} ;
struct TYPE_7__ {TYPE_4__ ops; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ bus; TYPE_3__ nvm; TYPE_2__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_MDICNFG ; 
 int /*<<< orphan*/  E1000_MDICNFG_COM_MDIO ; 
 int /*<<< orphan*/  E1000_MDICNFG_EXT_MDIO ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ NVM_INIT_CONTROL3_PORT_A ; 
 int NVM_WORD24_COM_MDIO ; 
 int NVM_WORD24_EXT_MDIO ; 
 scalar_t__ e1000_82580 ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*,scalar_t__,int,int*) ; 

__attribute__((used)) static s32 FUNC7(struct e1000_hw *hw)
{
	s32 ret_val = E1000_SUCCESS;
	u32 mdicnfg;
	u16 nvm_data = 0;

	FUNC0("e1000_reset_mdicnfg_82580");

	if (hw->mac.type != e1000_82580)
		goto out;
	if (!FUNC5(hw))
		goto out;

	ret_val = hw->nvm.ops.read(hw, NVM_INIT_CONTROL3_PORT_A +
				   FUNC4(hw->bus.func), 1,
				   &nvm_data);
	if (ret_val) {
		FUNC1("NVM Read Error\n");
		goto out;
	}

	mdicnfg = FUNC2(hw, E1000_MDICNFG);
	if (nvm_data & NVM_WORD24_EXT_MDIO)
		mdicnfg |= E1000_MDICNFG_EXT_MDIO;
	if (nvm_data & NVM_WORD24_COM_MDIO)
		mdicnfg |= E1000_MDICNFG_COM_MDIO;
	FUNC3(hw, E1000_MDICNFG, mdicnfg);
out:
	return ret_val;
}