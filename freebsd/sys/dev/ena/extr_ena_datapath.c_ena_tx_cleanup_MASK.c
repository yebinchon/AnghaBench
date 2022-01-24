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
typedef  size_t uint16_t ;
struct mbuf {int dummy; } ;
struct ena_tx_buffer {int head_mapped; int seg_mapped; scalar_t__ tx_descs; int /*<<< orphan*/  map_seg; int /*<<< orphan*/  map_head; int /*<<< orphan*/  timestamp; struct mbuf* mbuf; } ;
struct TYPE_6__ {int /*<<< orphan*/  queue_wakeup; } ;
struct ena_ring {size_t next_to_clean; size_t* free_tx_ids; int running; int /*<<< orphan*/  enqueue_task; int /*<<< orphan*/  enqueue_tq; TYPE_3__ tx_stats; int /*<<< orphan*/  ena_com_io_sq; int /*<<< orphan*/  qid; int /*<<< orphan*/  ring_size; struct ena_tx_buffer* tx_buffer_info; TYPE_1__* que; } ;
struct ena_com_io_cq {int dummy; } ;
struct ena_adapter {TYPE_2__* ena_dev; int /*<<< orphan*/  tx_buf_tag; int /*<<< orphan*/  ifp; } ;
struct TYPE_5__ {int /*<<< orphan*/ * io_sq_queues; struct ena_com_io_cq* io_cq_queues; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; struct ena_adapter* adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int ENA_DBG ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_ring*) ; 
 int ENA_TXPTH ; 
 int /*<<< orphan*/  ENA_TX_RESUME_THRESH ; 
 size_t FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ NM_IRQ_PASS ; 
 int TX_BUDGET ; 
 int TX_COMMIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ena_com_io_cq*,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (struct ena_com_io_cq*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 
 int FUNC19 (struct ena_ring*,size_t) ; 

__attribute__((used)) static int
FUNC20(struct ena_ring *tx_ring)
{
	struct ena_adapter *adapter;
	struct ena_com_io_cq* io_cq;
	uint16_t next_to_clean;
	uint16_t req_id;
	uint16_t ena_qid;
	unsigned int total_done = 0;
	int rc;
	int commit = TX_COMMIT;
	int budget = TX_BUDGET;
	int work_done;
	bool above_thresh;

	adapter = tx_ring->que->adapter;
	ena_qid = FUNC0(tx_ring->que->id);
	io_cq = &adapter->ena_dev->io_cq_queues[ena_qid];
	next_to_clean = tx_ring->next_to_clean;

#ifdef DEV_NETMAP
	if (netmap_tx_irq(adapter->ifp, tx_ring->qid) != NM_IRQ_PASS)
		return (0);
#endif /* DEV_NETMAP */

	do {
		struct ena_tx_buffer *tx_info;
		struct mbuf *mbuf;

		rc = FUNC10(io_cq, &req_id);
		if (FUNC18(rc != 0))
			break;

		rc = FUNC19(tx_ring, req_id);
		if (FUNC18(rc != 0))
			break;

		tx_info = &tx_ring->tx_buffer_info[req_id];

		mbuf = tx_info->mbuf;

		tx_info->mbuf = NULL;
		FUNC4(&tx_info->timestamp);

		/* Map is no longer required */
		if (tx_info->head_mapped == true) {
			FUNC5(adapter->tx_buf_tag, tx_info->map_head,
			    BUS_DMASYNC_POSTWRITE);
			FUNC6(adapter->tx_buf_tag,
			    tx_info->map_head);
			tx_info->head_mapped = false;
		}
		if (tx_info->seg_mapped == true) {
			FUNC5(adapter->tx_buf_tag, tx_info->map_seg,
			    BUS_DMASYNC_POSTWRITE);
			FUNC6(adapter->tx_buf_tag,
			    tx_info->map_seg);
			tx_info->seg_mapped = false;
		}

		FUNC12(ENA_DBG | ENA_TXPTH, "tx: q %d mbuf %p completed\n",
		    tx_ring->qid, mbuf);

		FUNC14(mbuf);

		total_done += tx_info->tx_descs;

		tx_ring->free_tx_ids[next_to_clean] = req_id;
		next_to_clean = FUNC3(next_to_clean,
		    tx_ring->ring_size);

		if (FUNC18(--commit == 0)) {
			commit = TX_COMMIT;
			/* update ring state every TX_COMMIT descriptor */
			tx_ring->next_to_clean = next_to_clean;
			FUNC8(
			    &adapter->ena_dev->io_sq_queues[ena_qid],
			    total_done);
			FUNC11(io_cq);
			total_done = 0;
		}
	} while (FUNC13(--budget));

	work_done = TX_BUDGET - budget;

	FUNC12(ENA_DBG | ENA_TXPTH, "tx: q %d done. total pkts: %d\n",
	tx_ring->qid, work_done);

	/* If there is still something to commit update ring state */
	if (FUNC13(commit != TX_COMMIT)) {
		tx_ring->next_to_clean = next_to_clean;
		FUNC8(&adapter->ena_dev->io_sq_queues[ena_qid],
		    total_done);
		FUNC11(io_cq);
	}

	/*
	 * Need to make the rings circular update visible to
	 * ena_xmit_mbuf() before checking for tx_ring->running.
	 */
	FUNC15();

	above_thresh = FUNC9(tx_ring->ena_com_io_sq,
	    ENA_TX_RESUME_THRESH);
	if (FUNC18(!tx_ring->running && above_thresh)) {
		FUNC1(tx_ring);
		above_thresh =
		    FUNC9(tx_ring->ena_com_io_sq,
		    ENA_TX_RESUME_THRESH);
		if (!tx_ring->running && above_thresh) {
			tx_ring->running = true;
			FUNC7(tx_ring->tx_stats.queue_wakeup, 1);
			FUNC17(tx_ring->enqueue_tq,
			    &tx_ring->enqueue_task);
		}
		FUNC2(tx_ring);
	}

	return (work_done);
}