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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ixgbe_mac_82598EB ; 

void FUNC3(struct ixgbe_hw *hw, bool enable, int vf)
{
	int vf_target_reg = vf >> 3;
	int vf_target_shift = vf % 8;
	u32 pfvfspoof;

	if (hw->mac.type == ixgbe_mac_82598EB)
		return;

	pfvfspoof = FUNC1(hw, FUNC0(vf_target_reg));
	if (enable)
		pfvfspoof |= (1 << vf_target_shift);
	else
		pfvfspoof &= ~(1 << vf_target_shift);
	FUNC2(hw, FUNC0(vf_target_reg), pfvfspoof);
}