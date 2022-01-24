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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct TYPE_3__ {int /*<<< orphan*/  msgs_rx; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct ixgbe_hw {TYPE_2__ mbx; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  IXGBE_VFMAILBOX ; 
 int /*<<< orphan*/  IXGBE_VFMAILBOX_ACK ; 
 int /*<<< orphan*/  IXGBE_VFMBMEM ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*) ; 

__attribute__((used)) static s32 FUNC5(struct ixgbe_hw *hw, u32 *msg, u16 size,
			     u16 mbx_id)
{
	s32 ret_val = IXGBE_SUCCESS;
	u16 i;

	FUNC0("ixgbe_read_mbx_vf");
	FUNC3(mbx_id);

	/* lock the mailbox to prevent pf/vf race condition */
	ret_val = FUNC4(hw);
	if (ret_val)
		goto out_no_read;

	/* copy the message from the mailbox memory buffer */
	for (i = 0; i < size; i++)
		msg[i] = FUNC1(hw, IXGBE_VFMBMEM, i);

	/* Acknowledge receipt and release mailbox, then we're done */
	FUNC2(hw, IXGBE_VFMAILBOX, IXGBE_VFMAILBOX_ACK);

	/* update stats */
	hw->mbx.stats.msgs_rx++;

out_no_read:
	return ret_val;
}