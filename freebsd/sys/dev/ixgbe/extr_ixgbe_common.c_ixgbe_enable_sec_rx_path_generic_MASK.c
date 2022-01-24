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
typedef  int /*<<< orphan*/  u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SECRXCTRL ; 
 int /*<<< orphan*/  IXGBE_SECRXCTRL_RX_DIS ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

s32 FUNC4(struct ixgbe_hw *hw)
{
	u32 secrxreg;

	FUNC0("ixgbe_enable_sec_rx_path_generic");

	secrxreg = FUNC1(hw, IXGBE_SECRXCTRL);
	secrxreg &= ~IXGBE_SECRXCTRL_RX_DIS;
	FUNC3(hw, IXGBE_SECRXCTRL, secrxreg);
	FUNC2(hw);

	return IXGBE_SUCCESS;
}