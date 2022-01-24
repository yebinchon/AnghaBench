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
typedef  scalar_t__ u16 ;
struct TYPE_5__ {int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;int /*<<< orphan*/  (* write_reg_page ) (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ rar_entry_count; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int E1000_RAH_AV ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*,scalar_t__*) ; 
 scalar_t__ FUNC9 (struct e1000_hw*,scalar_t__*) ; 
 scalar_t__ FUNC10 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct e1000_hw*) ; 

void FUNC16(struct e1000_hw *hw)
{
	u32 mac_reg;
	u16 i, phy_reg = 0;
	s32 ret_val;

	FUNC4("e1000_copy_rx_addrs_to_phy_ich8lan");

	ret_val = hw->phy.ops.acquire(hw);
	if (ret_val)
		return;
	ret_val = FUNC9(hw, &phy_reg);
	if (ret_val)
		goto release;

	/* Copy both RAL/H (rar_entry_count) and SHRAL/H to PHY */
	for (i = 0; i < (hw->mac.rar_entry_count); i++) {
		mac_reg = FUNC7(hw, FUNC6(i));
		hw->phy.ops.write_reg_page(hw, FUNC2(i),
					   (u16)(mac_reg & 0xFFFF));
		hw->phy.ops.write_reg_page(hw, FUNC3(i),
					   (u16)((mac_reg >> 16) & 0xFFFF));

		mac_reg = FUNC7(hw, FUNC5(i));
		hw->phy.ops.write_reg_page(hw, FUNC1(i),
					   (u16)(mac_reg & 0xFFFF));
		hw->phy.ops.write_reg_page(hw, FUNC0(i),
					   (u16)((mac_reg & E1000_RAH_AV)
						 >> 16));
	}

	FUNC8(hw, &phy_reg);

release:
	hw->phy.ops.release(hw);
}