#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ena_ring {int ring_size; int /*<<< orphan*/ * push_buf_intermediate_buf; TYPE_2__* free_tx_ids; TYPE_2__* tx_buffer_info; int /*<<< orphan*/  br; int /*<<< orphan*/  enqueue_tq; int /*<<< orphan*/  enqueue_task; } ;
struct ena_netmap_tx_info {scalar_t__* socket_buf_idx; int /*<<< orphan*/ * map_seg; } ;
struct ena_adapter {TYPE_1__* ena_dev; int /*<<< orphan*/  tx_buf_tag; TYPE_3__* ifp; struct ena_ring* tx_ring; } ;
struct TYPE_6__ {int if_capenable; } ;
struct TYPE_5__ {int head_mapped; int seg_mapped; int /*<<< orphan*/ * mbuf; struct ena_netmap_tx_info nm_info; int /*<<< orphan*/  map_seg; int /*<<< orphan*/  map_head; } ;
struct TYPE_4__ {int /*<<< orphan*/  dmadev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int ENA_PKT_MAX_BUFS ; 
 int /*<<< orphan*/  FUNC1 (struct ena_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_ring*) ; 
 int IFCAP_NETMAP ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ena_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct ena_adapter *adapter, int qid)
{
	struct ena_ring *tx_ring = &adapter->tx_ring[qid];
#ifdef DEV_NETMAP
	struct ena_netmap_tx_info *nm_info;
	int j;
#endif /* DEV_NETMAP */

	while (FUNC10(tx_ring->enqueue_tq, &tx_ring->enqueue_task,
	    NULL))
		FUNC11(tx_ring->enqueue_tq, &tx_ring->enqueue_task);

	FUNC12(tx_ring->enqueue_tq);

	FUNC1(tx_ring);
	/* Flush buffer ring, */
	FUNC6(adapter->ifp, tx_ring->br);

	/* Free buffer DMA maps, */
	for (int i = 0; i < tx_ring->ring_size; i++) {
		if (tx_ring->tx_buffer_info[i].head_mapped == true) {
			FUNC4(adapter->tx_buf_tag,
			    tx_ring->tx_buffer_info[i].map_head,
			    BUS_DMASYNC_POSTWRITE);
			FUNC5(adapter->tx_buf_tag,
			    tx_ring->tx_buffer_info[i].map_head);
			tx_ring->tx_buffer_info[i].head_mapped = false;
		}
		FUNC3(adapter->tx_buf_tag,
		    tx_ring->tx_buffer_info[i].map_head);

		if (tx_ring->tx_buffer_info[i].seg_mapped == true) {
			FUNC4(adapter->tx_buf_tag,
			    tx_ring->tx_buffer_info[i].map_seg,
			    BUS_DMASYNC_POSTWRITE);
			FUNC5(adapter->tx_buf_tag,
			    tx_ring->tx_buffer_info[i].map_seg);
			tx_ring->tx_buffer_info[i].seg_mapped = false;
		}
		FUNC3(adapter->tx_buf_tag,
		    tx_ring->tx_buffer_info[i].map_seg);

#ifdef DEV_NETMAP
		if (adapter->ifp->if_capenable & IFCAP_NETMAP) {
			nm_info = &tx_ring->tx_buffer_info[i].nm_info;
			for (j = 0; j < ENA_PKT_MAX_BUFS; j++) {
				if (nm_info->socket_buf_idx[j] != 0) {
					bus_dmamap_sync(adapter->tx_buf_tag,
					    nm_info->map_seg[j],
					    BUS_DMASYNC_POSTWRITE);
					ena_netmap_unload(adapter,
					    nm_info->map_seg[j]);
				}
				bus_dmamap_destroy(adapter->tx_buf_tag,
				    nm_info->map_seg[j]);
				nm_info->socket_buf_idx[j] = 0;
			}
		}
#endif /* DEV_NETMAP */

		FUNC9(tx_ring->tx_buffer_info[i].mbuf);
		tx_ring->tx_buffer_info[i].mbuf = NULL;
	}
	FUNC2(tx_ring);

	/* And free allocated memory. */
	FUNC8(tx_ring->tx_buffer_info, M_DEVBUF);
	tx_ring->tx_buffer_info = NULL;

	FUNC8(tx_ring->free_tx_ids, M_DEVBUF);
	tx_ring->free_tx_ids = NULL;

	FUNC0(adapter->ena_dev->dmadev,
	    tx_ring->push_buf_intermediate_buf);
	tx_ring->push_buf_intermediate_buf = NULL;
}