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
struct adapter {int /*<<< orphan*/  ctx; int /*<<< orphan*/  link_irq; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int IXGBE_EICR_LSC ; 
 int IXGBE_EIMS_OTHER ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_VTEICR ; 
 int /*<<< orphan*/  IXGBE_VTEICS ; 
 int /*<<< orphan*/  IXGBE_VTEIMS ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(void *arg)
{
	struct adapter  *adapter = arg;
	struct ixgbe_hw *hw = &adapter->hw;
	u32             reg;

	++adapter->link_irq;

	/* First get the cause */
	reg = FUNC0(hw, IXGBE_VTEICS);
	/* Clear interrupt with write */
	FUNC1(hw, IXGBE_VTEICR, reg);

	/* Link status change */
	if (reg & IXGBE_EICR_LSC)
		FUNC2(adapter->ctx);

	FUNC1(hw, IXGBE_VTEIMS, IXGBE_EIMS_OTHER);

	return (FILTER_HANDLED);
}