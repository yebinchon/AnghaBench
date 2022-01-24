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
struct TYPE_3__ {int requested_mode; int /*<<< orphan*/  disable_fc_autoneg; } ;
struct TYPE_4__ {TYPE_1__ fc; } ;
struct adapter {int num_rx_queues; TYPE_2__ hw; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
#define  ixgbe_fc_full 131 
#define  ixgbe_fc_none 130 
#define  ixgbe_fc_rx_pause 129 
#define  ixgbe_fc_tx_pause 128 

__attribute__((used)) static int
FUNC3(struct adapter *adapter, int fc)
{
	switch (fc) {
	case ixgbe_fc_rx_pause:
	case ixgbe_fc_tx_pause:
	case ixgbe_fc_full:
		adapter->hw.fc.requested_mode = fc;
		if (adapter->num_rx_queues > 1)
			FUNC0(adapter);
		break;
	case ixgbe_fc_none:
		adapter->hw.fc.requested_mode = ixgbe_fc_none;
		if (adapter->num_rx_queues > 1)
			FUNC1(adapter);
		break;
	default:
		return (EINVAL);
	}

	/* Don't autoneg if forcing a value */
	adapter->hw.fc.disable_fc_autoneg = TRUE;
	FUNC2(&adapter->hw);

	return (0);
}