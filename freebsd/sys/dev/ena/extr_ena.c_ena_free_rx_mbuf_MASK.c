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
struct ena_rx_buffer {int /*<<< orphan*/ * mbuf; int /*<<< orphan*/  map; } ;
struct ena_ring {int dummy; } ;
struct ena_adapter {int /*<<< orphan*/  rx_buf_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  ENA_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct ena_adapter *adapter, struct ena_ring *rx_ring,
    struct ena_rx_buffer *rx_info)
{

	if (rx_info->mbuf == NULL) {
		FUNC2(ENA_WARNING, "Trying to free unallocated buffer\n");
		return;
	}

	FUNC0(adapter->rx_buf_tag, rx_info->map,
	    BUS_DMASYNC_POSTREAD);
	FUNC1(adapter->rx_buf_tag, rx_info->map);
	FUNC3(rx_info->mbuf);
	rx_info->mbuf = NULL;
}