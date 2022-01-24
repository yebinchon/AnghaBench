#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ rar_highwater; scalar_t__ num_rar_entries; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IXGBE_ERR_INVALID_MAC_ADDR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ IXGBE_RAH_AV ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,scalar_t__,int*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,scalar_t__,scalar_t__) ; 

s32 FUNC7(struct ixgbe_hw *hw, u8 *addr, u32 vmdq)
{
	static const u32 NO_EMPTY_RAR_FOUND = 0xFFFFFFFF;
	u32 first_empty_rar = NO_EMPTY_RAR_FOUND;
	u32 rar;
	u32 rar_low, rar_high;
	u32 addr_low, addr_high;

	FUNC0("ixgbe_insert_mac_addr_generic");

	/* swap bytes for HW little endian */
	addr_low  = addr[0] | (addr[1] << 8)
			    | (addr[2] << 16)
			    | (addr[3] << 24);
	addr_high = addr[4] | (addr[5] << 8);

	/*
	 * Either find the mac_id in rar or find the first empty space.
	 * rar_highwater points to just after the highest currently used
	 * rar in order to shorten the search.  It grows when we add a new
	 * rar to the top.
	 */
	for (rar = 0; rar < hw->mac.rar_highwater; rar++) {
		rar_high = FUNC3(hw, FUNC1(rar));

		if (((IXGBE_RAH_AV & rar_high) == 0)
		    && first_empty_rar == NO_EMPTY_RAR_FOUND) {
			first_empty_rar = rar;
		} else if ((rar_high & 0xFFFF) == addr_high) {
			rar_low = FUNC3(hw, FUNC2(rar));
			if (rar_low == addr_low)
				break;    /* found it already in the rars */
		}
	}

	if (rar < hw->mac.rar_highwater) {
		/* already there so just add to the pool bits */
		FUNC6(hw, rar, vmdq);
	} else if (first_empty_rar != NO_EMPTY_RAR_FOUND) {
		/* stick it into first empty RAR slot we found */
		rar = first_empty_rar;
		FUNC5(hw, rar, addr, vmdq, IXGBE_RAH_AV);
	} else if (rar == hw->mac.rar_highwater) {
		/* add it to the top of the list and inc the highwater mark */
		FUNC5(hw, rar, addr, vmdq, IXGBE_RAH_AV);
		hw->mac.rar_highwater++;
	} else if (rar >= hw->mac.num_rar_entries) {
		return IXGBE_ERR_INVALID_MAC_ADDR;
	}

	/*
	 * If we found rar[0], make sure the default pool bit (we use pool 0)
	 * remains cleared to be sure default pool packets will get delivered
	 */
	if (rar == 0)
		FUNC4(hw, rar, 0);

	return rar;
}