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

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_ESDP ; 
 int /*<<< orphan*/  IXGBE_ESDP_SDP3 ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct ixgbe_hw *hw)
{
	u32 esdp_reg = FUNC0(hw, IXGBE_ESDP);

	/* Blocked by MNG FW so bail */
	if (FUNC3(hw))
		return;

	/* Disable Tx laser; allow 100us to go dark per spec */
	esdp_reg |= IXGBE_ESDP_SDP3;
	FUNC2(hw, IXGBE_ESDP, esdp_reg);
	FUNC1(hw);
	FUNC4(100);
}