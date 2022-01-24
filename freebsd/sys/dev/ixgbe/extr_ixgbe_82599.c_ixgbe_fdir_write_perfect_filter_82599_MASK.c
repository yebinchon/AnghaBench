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
struct TYPE_2__ {int* src_ip; int* dst_ip; scalar_t__ tunnel_type; int tni_vni; int bkt_hash; int flow_type; scalar_t__ vm_pool; scalar_t__* inner_mac; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  flex_bytes; int /*<<< orphan*/  src_port; int /*<<< orphan*/  dst_port; } ;
union ixgbe_atr_input {TYPE_1__ formatted; } ;
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int IXGBE_ATR_L4TYPE_TUNNEL_MASK ; 
 int /*<<< orphan*/  IXGBE_FDIRCMD ; 
 int IXGBE_FDIRCMD_CMD_ADD_FLOW ; 
 int IXGBE_FDIRCMD_DROP ; 
 int IXGBE_FDIRCMD_FILTER_UPDATE ; 
 int IXGBE_FDIRCMD_FLOW_TYPE_SHIFT ; 
 int IXGBE_FDIRCMD_LAST ; 
 int IXGBE_FDIRCMD_QUEUE_EN ; 
 int IXGBE_FDIRCMD_RX_QUEUE_SHIFT ; 
 int IXGBE_FDIRCMD_TUNNEL_FILTER ; 
 int IXGBE_FDIRCMD_VT_POOL_SHIFT ; 
 int /*<<< orphan*/  IXGBE_FDIRHASH ; 
 int IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT ; 
 int /*<<< orphan*/  IXGBE_FDIRIPDA ; 
 int /*<<< orphan*/  IXGBE_FDIRIPSA ; 
 int /*<<< orphan*/  IXGBE_FDIRPORT ; 
 int IXGBE_FDIRPORT_DESTINATION_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  IXGBE_FDIRVLAN ; 
 int IXGBE_FDIRVLAN_FLEX_SHIFT ; 
 scalar_t__ IXGBE_FDIR_DROP_QUEUE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (struct ixgbe_hw*,int*) ; 

s32 FUNC10(struct ixgbe_hw *hw,
					  union ixgbe_atr_input *input,
					  u16 soft_id, u8 queue, bool cloud_mode)
{
	u32 fdirport, fdirvlan, fdirhash, fdircmd;
	u32 addr_low, addr_high;
	u32 cloud_type = 0;
	s32 err;
	FUNC8(cloud_mode);

	FUNC0("ixgbe_fdir_write_perfect_filter_82599");
	if (!cloud_mode) {
		/* currently IPv6 is not supported, must be programmed with 0 */
		FUNC7(hw, FUNC2(0),
				     input->formatted.src_ip[0]);
		FUNC7(hw, FUNC2(1),
				     input->formatted.src_ip[1]);
		FUNC7(hw, FUNC2(2),
				     input->formatted.src_ip[2]);

		/* record the source address (big-endian) */
		FUNC7(hw, IXGBE_FDIRIPSA,
			input->formatted.src_ip[0]);

		/* record the first 32 bits of the destination address
		 * (big-endian) */
		FUNC7(hw, IXGBE_FDIRIPDA,
			input->formatted.dst_ip[0]);

		/* record source and destination port (little-endian)*/
		fdirport = FUNC3(input->formatted.dst_port);
		fdirport <<= IXGBE_FDIRPORT_DESTINATION_SHIFT;
		fdirport |= FUNC3(input->formatted.src_port);
		FUNC6(hw, IXGBE_FDIRPORT, fdirport);
	}

	/* record VLAN (little-endian) and flex_bytes(big-endian) */
	fdirvlan = FUNC4(input->formatted.flex_bytes);
	fdirvlan <<= IXGBE_FDIRVLAN_FLEX_SHIFT;
	fdirvlan |= FUNC3(input->formatted.vlan_id);
	FUNC6(hw, IXGBE_FDIRVLAN, fdirvlan);

	if (cloud_mode) {
		if (input->formatted.tunnel_type != 0)
			cloud_type = 0x80000000;

		addr_low = ((u32)input->formatted.inner_mac[0] |
				((u32)input->formatted.inner_mac[1] << 8) |
				((u32)input->formatted.inner_mac[2] << 16) |
				((u32)input->formatted.inner_mac[3] << 24));
		addr_high = ((u32)input->formatted.inner_mac[4] |
				((u32)input->formatted.inner_mac[5] << 8));
		cloud_type |= addr_high;
		FUNC7(hw, FUNC2(0), addr_low);
		FUNC7(hw, FUNC2(1), cloud_type);
		FUNC7(hw, FUNC2(2), input->formatted.tni_vni);
	}

	/* configure FDIRHASH register */
	fdirhash = input->formatted.bkt_hash;
	fdirhash |= soft_id << IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT;
	FUNC6(hw, IXGBE_FDIRHASH, fdirhash);

	/*
	 * flush all previous writes to make certain registers are
	 * programmed prior to issuing the command
	 */
	FUNC5(hw);

	/* configure FDIRCMD register */
	fdircmd = IXGBE_FDIRCMD_CMD_ADD_FLOW | IXGBE_FDIRCMD_FILTER_UPDATE |
		  IXGBE_FDIRCMD_LAST | IXGBE_FDIRCMD_QUEUE_EN;
	if (queue == IXGBE_FDIR_DROP_QUEUE)
		fdircmd |= IXGBE_FDIRCMD_DROP;
	if (input->formatted.flow_type & IXGBE_ATR_L4TYPE_TUNNEL_MASK)
		fdircmd |= IXGBE_FDIRCMD_TUNNEL_FILTER;
	fdircmd |= input->formatted.flow_type << IXGBE_FDIRCMD_FLOW_TYPE_SHIFT;
	fdircmd |= (u32)queue << IXGBE_FDIRCMD_RX_QUEUE_SHIFT;
	fdircmd |= (u32)input->formatted.vm_pool << IXGBE_FDIRCMD_VT_POOL_SHIFT;

	FUNC6(hw, IXGBE_FDIRCMD, fdircmd);
	err = FUNC9(hw, &fdircmd);
	if (err) {
		FUNC1("Flow Director command did not complete!\n");
		return err;
	}

	return IXGBE_SUCCESS;
}