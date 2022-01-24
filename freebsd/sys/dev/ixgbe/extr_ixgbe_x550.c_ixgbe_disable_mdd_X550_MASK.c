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
 int /*<<< orphan*/  IXGBE_DMATXCTL ; 
 int IXGBE_DMATXCTL_MBINTEN ; 
 int IXGBE_DMATXCTL_MDP_EN ; 
 int /*<<< orphan*/  IXGBE_RDRXCTL ; 
 int IXGBE_RDRXCTL_MBINTEN ; 
 int IXGBE_RDRXCTL_MDP_EN ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct ixgbe_hw *hw)
{
	u32 reg;

	FUNC0("ixgbe_disable_mdd_X550");

	/* Disable MDD for TX DMA and interrupt */
	reg = FUNC1(hw, IXGBE_DMATXCTL);
	reg &= ~(IXGBE_DMATXCTL_MDP_EN | IXGBE_DMATXCTL_MBINTEN);
	FUNC2(hw, IXGBE_DMATXCTL, reg);

	/* Disable MDD for RX and interrupt */
	reg = FUNC1(hw, IXGBE_RDRXCTL);
	reg &= ~(IXGBE_RDRXCTL_MDP_EN | IXGBE_RDRXCTL_MBINTEN);
	FUNC2(hw, IXGBE_RDRXCTL, reg);
}