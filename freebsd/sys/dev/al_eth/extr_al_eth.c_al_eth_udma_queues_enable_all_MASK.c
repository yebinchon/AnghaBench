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
struct al_eth_adapter {int num_tx_queues; int num_rx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDMA_RX ; 
 int /*<<< orphan*/  UDMA_TX ; 
 int /*<<< orphan*/  FUNC0 (struct al_eth_adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(struct al_eth_adapter *adapter)
{
	int i;

	for (i = 0; i < adapter->num_tx_queues; i++)
		FUNC0(adapter, UDMA_TX, i);

	for (i = 0; i < adapter->num_rx_queues; i++)
		FUNC0(adapter, UDMA_RX, i);

	return (0);
}