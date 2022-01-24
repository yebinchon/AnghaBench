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
struct ixgbe_hw {int dummy; } ;
struct adapter {struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_EIMS ; 
 int IXGBE_EIMS_LSC ; 
 int IXGBE_EIMS_OTHER ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(if_ctx_t ctx)
{
	struct ixgbe_hw *hw = &((struct adapter *)FUNC1(ctx))->hw;

	/* Re-enable other interrupts */
	FUNC0(hw, IXGBE_EIMS, IXGBE_EIMS_OTHER | IXGBE_EIMS_LSC);
}