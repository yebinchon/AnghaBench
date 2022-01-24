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
typedef  scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ (* setup_link ) (struct e1000_hw*) ;int /*<<< orphan*/  (* clear_vfta ) (struct e1000_hw*) ;scalar_t__ (* id_led_init ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {scalar_t__ rar_entry_count; scalar_t__ mta_reg_count; scalar_t__ uta_reg_count; TYPE_1__ ops; } ;
struct TYPE_5__ {int mtu; } ;
struct TYPE_6__ {TYPE_2__ _82575; } ;
struct e1000_hw {TYPE_3__ dev_spec; struct e1000_mac_info mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_MTA ; 
 int /*<<< orphan*/  E1000_UTA ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*) ; 

s32 FUNC8(struct e1000_hw *hw)
{
	struct e1000_mac_info *mac = &hw->mac;
	s32 ret_val;
	u16 i, rar_count = mac->rar_entry_count;

	FUNC0("e1000_init_hw_82575");

	/* Initialize identification LED */
	ret_val = mac->ops.id_led_init(hw);
	if (ret_val) {
		FUNC1("Error initializing identification LED\n");
		/* This is not fatal and we should not stop init due to this */
	}

	/* Disabling VLAN filtering */
	FUNC1("Initializing the IEEE VLAN\n");
	mac->ops.clear_vfta(hw);

	/* Setup the receive address */
	FUNC4(hw, rar_count);

	/* Zero out the Multicast HASH table */
	FUNC1("Zeroing the MTA\n");
	for (i = 0; i < mac->mta_reg_count; i++)
		FUNC2(hw, E1000_MTA, i, 0);

	/* Zero out the Unicast HASH table */
	FUNC1("Zeroing the UTA\n");
	for (i = 0; i < mac->uta_reg_count; i++)
		FUNC2(hw, E1000_UTA, i, 0);

	/* Setup link and flow control */
	ret_val = mac->ops.setup_link(hw);

	/* Set the default MTU size */
	hw->dev_spec._82575.mtu = 1500;

	/*
	 * Clear all of the statistics registers (clear on read).  It is
	 * important that we do this after we have tried to establish link
	 * because the symbol error count will increment wildly if there
	 * is no link.
	 */
	FUNC3(hw);

	return ret_val;
}