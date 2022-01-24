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
struct al_eth_adapter {int num_rx_queues; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct al_eth_adapter*,int) ; 
 int FUNC1 (struct al_eth_adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC3(struct al_eth_adapter *adapter)
{
	int i, rc = 0;

	for (i = 0; i < adapter->num_rx_queues; i++) {
		rc = FUNC1(adapter, i);
		if (rc == 0)
			continue;

		FUNC2(adapter->dev, "Allocation for Rx Queue %u failed\n", i);
		goto err_setup_rx;
	}
	return (0);

err_setup_rx:
	/* rewind the index freeing the rings as we go */
	while (i--)
		FUNC0(adapter, i);
	return (rc);
}