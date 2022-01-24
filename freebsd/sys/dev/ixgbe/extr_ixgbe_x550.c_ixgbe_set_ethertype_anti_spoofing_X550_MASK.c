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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int IXGBE_SPOOF_ETHERTYPEAS_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct ixgbe_hw *hw,
		bool enable, int vf)
{
	int vf_target_reg = vf >> 3;
	int vf_target_shift = vf % 8 + IXGBE_SPOOF_ETHERTYPEAS_SHIFT;
	u32 pfvfspoof;

	FUNC0("ixgbe_set_ethertype_anti_spoofing_X550");

	pfvfspoof = FUNC2(hw, FUNC1(vf_target_reg));
	if (enable)
		pfvfspoof |= (1 << vf_target_shift);
	else
		pfvfspoof &= ~(1 << vf_target_shift);

	FUNC3(hw, FUNC1(vf_target_reg), pfvfspoof);
}