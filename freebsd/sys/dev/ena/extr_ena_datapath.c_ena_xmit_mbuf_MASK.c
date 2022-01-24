#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct TYPE_6__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ena_tx_buffer {int tx_descs; int print_once; int head_mapped; int seg_mapped; int /*<<< orphan*/  map_head; int /*<<< orphan*/  map_seg; int /*<<< orphan*/ * mbuf; int /*<<< orphan*/  timestamp; scalar_t__ num_of_bufs; int /*<<< orphan*/  bufs; } ;
struct TYPE_8__ {int /*<<< orphan*/  queue_wakeup; int /*<<< orphan*/  queue_stop; int /*<<< orphan*/  bytes; int /*<<< orphan*/  cnt; int /*<<< orphan*/  prepare_ctx_err; int /*<<< orphan*/  doorbells; } ;
struct ena_ring {size_t next_to_use; size_t* free_tx_ids; scalar_t__ acum_pkts; int running; TYPE_4__ tx_stats; int /*<<< orphan*/  ena_com_io_sq; TYPE_3__* que; int /*<<< orphan*/  ring_size; struct ena_tx_buffer* tx_buffer_info; } ;
struct ena_com_tx_ctx {size_t req_id; size_t header_len; scalar_t__ num_bufs; void* push_header; int /*<<< orphan*/  ena_bufs; } ;
struct ena_com_io_sq {int dummy; } ;
struct ena_com_dev {struct ena_com_io_sq* io_sq_queues; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct ena_adapter {int /*<<< orphan*/  tx_buf_tag; scalar_t__ max_tx_sgl_size; TYPE_1__ hw_stats; int /*<<< orphan*/  pdev; struct ena_com_dev* ena_dev; } ;
struct TYPE_7__ {int id; struct ena_adapter* adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 scalar_t__ DB_THRESHOLD ; 
 int ENA_COM_NO_MEM ; 
 int ENA_DBG ; 
 size_t FUNC0 (int) ; 
 int ENA_TXPTH ; 
 scalar_t__ ENA_TX_RESUME_THRESH ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int ENA_WARNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (struct ena_ring*,struct mbuf**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct ena_com_tx_ctx*) ; 
 int FUNC11 (struct ena_com_io_sq*,struct ena_com_tx_ctx*,int*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct ena_com_tx_ctx*,struct mbuf*) ; 
 int FUNC16 (struct ena_ring*,struct ena_tx_buffer*,struct mbuf*,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (struct ena_com_tx_ctx*,int,int) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 () ; 

__attribute__((used)) static int
FUNC23(struct ena_ring *tx_ring, struct mbuf **mbuf)
{
	struct ena_adapter *adapter;
	struct ena_tx_buffer *tx_info;
	struct ena_com_tx_ctx ena_tx_ctx;
	struct ena_com_dev *ena_dev;
	struct ena_com_io_sq* io_sq;
	void *push_hdr;
	uint16_t next_to_use;
	uint16_t req_id;
	uint16_t ena_qid;
	uint16_t header_len;
	int rc;
	int nb_hw_desc;

	ena_qid = FUNC0(tx_ring->que->id);
	adapter = tx_ring->que->adapter;
	ena_dev = adapter->ena_dev;
	io_sq = &ena_dev->io_sq_queues[ena_qid];

	rc = FUNC9(tx_ring, mbuf);
	if (FUNC21(rc != 0)) {
		FUNC14(ENA_WARNING,
		    "Failed to collapse mbuf! err: %d\n", rc);
		return (rc);
	}

	FUNC14(ENA_DBG | ENA_TXPTH, "Tx: %d bytes\n", (*mbuf)->m_pkthdr.len);

	next_to_use = tx_ring->next_to_use;
	req_id = tx_ring->free_tx_ids[next_to_use];
	tx_info = &tx_ring->tx_buffer_info[req_id];
	tx_info->num_of_bufs = 0;

	rc = FUNC16(tx_ring, tx_info, *mbuf, &push_hdr, &header_len);
	if (FUNC21(rc != 0)) {
		FUNC14(ENA_WARNING, "Failed to map TX mbuf\n");
		return (rc);
	}
	FUNC20(&ena_tx_ctx, 0x0, sizeof(struct ena_com_tx_ctx));
	ena_tx_ctx.ena_bufs = tx_info->bufs;
	ena_tx_ctx.push_header = push_hdr;
	ena_tx_ctx.num_bufs = tx_info->num_of_bufs;
	ena_tx_ctx.req_id = req_id;
	ena_tx_ctx.header_len = header_len;

	/* Set flags and meta data */
	FUNC15(&ena_tx_ctx, *mbuf);

	if (tx_ring->acum_pkts == DB_THRESHOLD ||
	    FUNC10(tx_ring->ena_com_io_sq, &ena_tx_ctx)) {
		FUNC14(ENA_DBG | ENA_TXPTH,
		    "llq tx max burst size of queue %d achieved, writing doorbell to send burst\n",
		    tx_ring->que->id);
		FUNC22();
		FUNC13(tx_ring->ena_com_io_sq);
		FUNC6(tx_ring->tx_stats.doorbells, 1);
		tx_ring->acum_pkts = 0;
	}

	/* Prepare the packet's descriptors and send them to device */
	rc = FUNC11(io_sq, &ena_tx_ctx, &nb_hw_desc);
	if (FUNC21(rc != 0)) {
		if (FUNC18(rc == ENA_COM_NO_MEM)) {
			FUNC14(ENA_DBG | ENA_TXPTH,
			    "tx ring[%d] if out of space\n", tx_ring->que->id);
		} else {
			FUNC8(adapter->pdev,
			    "failed to prepare tx bufs\n");
		}
		FUNC6(tx_ring->tx_stats.prepare_ctx_err, 1);
		goto dma_error;
	}

	FUNC4();
	FUNC7(tx_ring->tx_stats.cnt, 1);
	FUNC7(tx_ring->tx_stats.bytes,
	    (*mbuf)->m_pkthdr.len);

	FUNC7(adapter->hw_stats.tx_packets, 1);
	FUNC7(adapter->hw_stats.tx_bytes,
	    (*mbuf)->m_pkthdr.len);
	FUNC5();

	tx_info->tx_descs = nb_hw_desc;
	FUNC17(&tx_info->timestamp);
	tx_info->print_once = true;

	tx_ring->next_to_use = FUNC1(next_to_use,
	    tx_ring->ring_size);

	/* stop the queue when no more space available, the packet can have up
	 * to sgl_size + 2. one for the meta descriptor and one for header
	 * (if the header is larger than tx_max_header_size).
	 */
	if (FUNC21(!FUNC12(tx_ring->ena_com_io_sq,
	    adapter->max_tx_sgl_size + 2))) {
		FUNC14(ENA_DBG | ENA_TXPTH, "Stop queue %d\n",
		    tx_ring->que->id);

		tx_ring->running = false;
		FUNC6(tx_ring->tx_stats.queue_stop, 1);

		/* There is a rare condition where this function decides to
		 * stop the queue but meanwhile tx_cleanup() updates
		 * next_to_completion and terminates.
		 * The queue will remain stopped forever.
		 * To solve this issue this function performs mb(), checks
		 * the wakeup condition and wakes up the queue if needed.
		 */
		FUNC19();

		if (FUNC12(tx_ring->ena_com_io_sq,
		    ENA_TX_RESUME_THRESH)) {
			tx_ring->running = true;
			FUNC6(tx_ring->tx_stats.queue_wakeup, 1);
		}
	}

	if (tx_info->head_mapped == true)
		FUNC2(adapter->tx_buf_tag, tx_info->map_head,
		    BUS_DMASYNC_PREWRITE);
	if (tx_info->seg_mapped == true)
		FUNC2(adapter->tx_buf_tag, tx_info->map_seg,
		    BUS_DMASYNC_PREWRITE);

	return (0);

dma_error:
	tx_info->mbuf = NULL;
	if (tx_info->seg_mapped == true) {
		FUNC3(adapter->tx_buf_tag, tx_info->map_seg);
		tx_info->seg_mapped = false;
	}
	if (tx_info->head_mapped == true) {
		FUNC3(adapter->tx_buf_tag, tx_info->map_head);
		tx_info->head_mapped = false;
	}

	return (rc);
}