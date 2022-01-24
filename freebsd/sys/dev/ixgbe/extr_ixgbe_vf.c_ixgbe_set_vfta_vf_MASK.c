#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int IXGBE_SUCCESS ; 
 int IXGBE_VF_SET_VLAN ; 
 int IXGBE_VT_MSGINFO_SHIFT ; 
 int IXGBE_VT_MSGTYPE_ACK ; 
 int IXGBE_VT_MSGTYPE_NACK ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct ixgbe_hw*,int*,int*,int) ; 

s32 FUNC2(struct ixgbe_hw *hw, u32 vlan, u32 vind,
		      bool vlan_on, bool vlvf_bypass)
{
	u32 msgbuf[2];
	s32 ret_val;
	FUNC0(vind, vlvf_bypass);

	msgbuf[0] = IXGBE_VF_SET_VLAN;
	msgbuf[1] = vlan;
	/* Setting the 8 bit field MSG INFO to TRUE indicates "add" */
	msgbuf[0] |= vlan_on << IXGBE_VT_MSGINFO_SHIFT;

	ret_val = FUNC1(hw, msgbuf, msgbuf, 2);
	if (!ret_val && (msgbuf[0] & IXGBE_VT_MSGTYPE_ACK))
		return IXGBE_SUCCESS;

	return ret_val | (msgbuf[0] & IXGBE_VT_MSGTYPE_NACK);
}