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
 int IXGBE_GSSR_I2C_MASK ; 
 int IXGBE_GSSR_NVM_PHY_MASK ; 
 int IXGBE_GSSR_SW_MNG_SM ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(struct ixgbe_hw *hw, u32 mask)
{
	u32 swmask = mask & (IXGBE_GSSR_NVM_PHY_MASK | IXGBE_GSSR_SW_MNG_SM);
	u32 swfw_sync;

	FUNC0("ixgbe_release_swfw_sync_X540");

	if (mask & IXGBE_GSSR_I2C_MASK)
		swmask |= mask & IXGBE_GSSR_I2C_MASK;
	FUNC4(hw);

	swfw_sync = FUNC1(hw, FUNC2(hw));
	swfw_sync &= ~swmask;
	FUNC3(hw, FUNC2(hw), swfw_sync);

	FUNC5(hw);
	FUNC6(2);
}