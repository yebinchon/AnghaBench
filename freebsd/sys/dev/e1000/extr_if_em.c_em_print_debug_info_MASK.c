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
struct tx_ring {int dummy; } ;
struct rx_ring {int dummy; } ;
struct ifnet {int dummy; } ;
struct adapter {int tx_num_queues; int rx_num_queues; int /*<<< orphan*/  hw; TYPE_2__* rx_queues; TYPE_1__* tx_queues; int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {struct rx_ring rxr; } ;
struct TYPE_3__ {struct tx_ring txr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(struct adapter *adapter)
{
	device_t dev = FUNC7(adapter->ctx);
	struct ifnet *ifp = FUNC8(adapter->ctx);
	struct tx_ring *txr = &adapter->tx_queues->txr;
	struct rx_ring *rxr = &adapter->rx_queues->rxr;

	if (FUNC6(ifp) & IFF_DRV_RUNNING)
		FUNC9("Interface is RUNNING ");
	else
		FUNC9("Interface is NOT RUNNING\n");

	if (FUNC6(ifp) & IFF_DRV_OACTIVE)
		FUNC9("and INACTIVE\n");
	else
		FUNC9("and ACTIVE\n");

	for (int i = 0; i < adapter->tx_num_queues; i++, txr++) {
		FUNC5(dev, "TX Queue %d ------\n", i);
		FUNC5(dev, "hw tdh = %d, hw tdt = %d\n",
			FUNC2(&adapter->hw, FUNC3(i)),
			FUNC2(&adapter->hw, FUNC4(i)));

	}
	for (int j=0; j < adapter->rx_num_queues; j++, rxr++) {
		FUNC5(dev, "RX Queue %d ------\n", j);
		FUNC5(dev, "hw rdh = %d, hw rdt = %d\n",
			FUNC2(&adapter->hw, FUNC0(j)),
			FUNC2(&adapter->hw, FUNC1(j)));
	}
}