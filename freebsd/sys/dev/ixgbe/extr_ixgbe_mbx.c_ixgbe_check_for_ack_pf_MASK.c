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
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  acks; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct ixgbe_hw {TYPE_2__ mbx; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_ERR_MBX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IXGBE_MBVFICR_VFACK_VF1 ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC3(struct ixgbe_hw *hw, u16 vf_number)
{
	s32 ret_val = IXGBE_ERR_MBX;
	s32 index = FUNC1(vf_number);
	u32 vf_bit = vf_number % 16;

	FUNC0("ixgbe_check_for_ack_pf");

	if (!FUNC2(hw, IXGBE_MBVFICR_VFACK_VF1 << vf_bit,
				    index)) {
		ret_val = IXGBE_SUCCESS;
		hw->mbx.stats.acks++;
	}

	return ret_val;
}