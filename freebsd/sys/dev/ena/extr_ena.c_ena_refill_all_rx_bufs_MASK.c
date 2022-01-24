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
struct ena_ring {int ring_size; int initialized; } ;
struct ena_adapter {int num_queues; struct ena_ring* rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_WARNING ; 
 int FUNC0 (struct ena_ring*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct ena_adapter *adapter)
{
	struct ena_ring *rx_ring;
	int i, rc, bufs_num;

	for (i = 0; i < adapter->num_queues; i++) {
		rx_ring = &adapter->rx_ring[i];
		bufs_num = rx_ring->ring_size - 1;
		rc = FUNC0(rx_ring, bufs_num);
		if (FUNC2(rc != bufs_num))
			FUNC1(ENA_WARNING, "refilling Queue %d failed. "
			    "Allocated %d buffers from: %d\n", i, rc, bufs_num);
#ifdef DEV_NETMAP
		rx_ring->initialized = true;
#endif /* DEV_NETMAP */
	}
}