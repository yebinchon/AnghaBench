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
typedef  int /*<<< orphan*/  u16 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_ERROR_POLLING ; 
 int /*<<< orphan*/  IXGBE_ERR_MBX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int IXGBE_PFMAILBOX_PFU ; 
 int FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC5(struct ixgbe_hw *hw, u16 vf_number)
{
	s32 ret_val = IXGBE_ERR_MBX;
	u32 p2v_mailbox;

	FUNC0("ixgbe_obtain_mbx_lock_pf");

	/* Take ownership of the buffer */
	FUNC4(hw, FUNC2(vf_number), IXGBE_PFMAILBOX_PFU);

	/* reserve mailbox for vf use */
	p2v_mailbox = FUNC3(hw, FUNC2(vf_number));
	if (p2v_mailbox & IXGBE_PFMAILBOX_PFU)
		ret_val = IXGBE_SUCCESS;
	else
		FUNC1(IXGBE_ERROR_POLLING,
			   "Failed to obtain mailbox lock for VF%d", vf_number);


	return ret_val;
}