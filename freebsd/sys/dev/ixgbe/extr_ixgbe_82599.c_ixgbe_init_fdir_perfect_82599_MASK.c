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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IXGBE_FDIRCTRL_DROP_Q_SHIFT ; 
 int IXGBE_FDIRCTRL_FILTERMODE_CLOUD ; 
 int IXGBE_FDIRCTRL_FILTERMODE_SHIFT ; 
 int IXGBE_FDIRCTRL_FLEX_SHIFT ; 
 int IXGBE_FDIRCTRL_FULL_THRESH_SHIFT ; 
 int IXGBE_FDIRCTRL_MAX_LENGTH_SHIFT ; 
 int IXGBE_FDIRCTRL_PERFECT_MATCH ; 
 int IXGBE_FDIRCTRL_REPORT_STATUS ; 
 int IXGBE_FDIR_DROP_QUEUE ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int) ; 

s32 FUNC3(struct ixgbe_hw *hw, u32 fdirctrl,
			bool cloud_mode)
{
	FUNC1(cloud_mode);
	FUNC0("ixgbe_init_fdir_perfect_82599");

	/*
	 * Continue setup of fdirctrl register bits:
	 *  Turn perfect match filtering on
	 *  Report hash in RSS field of Rx wb descriptor
	 *  Initialize the drop queue to queue 127
	 *  Move the flexible bytes to use the ethertype - shift 6 words
	 *  Set the maximum length per hash bucket to 0xA filters
	 *  Send interrupt when 64 (0x4 * 16) filters are left
	 */
	fdirctrl |= IXGBE_FDIRCTRL_PERFECT_MATCH |
		    IXGBE_FDIRCTRL_REPORT_STATUS |
		    (IXGBE_FDIR_DROP_QUEUE << IXGBE_FDIRCTRL_DROP_Q_SHIFT) |
		    (0x6 << IXGBE_FDIRCTRL_FLEX_SHIFT) |
		    (0xA << IXGBE_FDIRCTRL_MAX_LENGTH_SHIFT) |
		    (4 << IXGBE_FDIRCTRL_FULL_THRESH_SHIFT);

	if (cloud_mode)
		fdirctrl |=(IXGBE_FDIRCTRL_FILTERMODE_CLOUD <<
					IXGBE_FDIRCTRL_FILTERMODE_SHIFT);

	/* write hashes and fdirctrl register, poll for completion */
	FUNC2(hw, fdirctrl);

	return IXGBE_SUCCESS;
}