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
struct ix_rx_queue {int /*<<< orphan*/  msix; } ;
struct adapter {int num_rx_queues; struct ix_rx_queue* rx_queues; struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int IXGBE_EIMS_ENABLE_MASK ; 
 int IXGBE_EIMS_LSC ; 
 int IXGBE_EIMS_OTHER ; 
 int IXGBE_EIMS_RTX_QUEUE ; 
 int /*<<< orphan*/  IXGBE_VTEIAC ; 
 int /*<<< orphan*/  IXGBE_VTEIMS ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 struct adapter* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(if_ctx_t ctx)
{
	struct adapter  *adapter = FUNC2(ctx);
	struct ixgbe_hw *hw = &adapter->hw;
	struct ix_rx_queue *que = adapter->rx_queues;
	u32             mask = (IXGBE_EIMS_ENABLE_MASK & ~IXGBE_EIMS_RTX_QUEUE);

	FUNC1(hw, IXGBE_VTEIMS, mask);

	mask = IXGBE_EIMS_ENABLE_MASK;
	mask &= ~(IXGBE_EIMS_OTHER | IXGBE_EIMS_LSC);
	FUNC1(hw, IXGBE_VTEIAC, mask);

	for (int i = 0; i < adapter->num_rx_queues; i++, que++)
		FUNC3(adapter, que->msix);

	FUNC0(hw);
}