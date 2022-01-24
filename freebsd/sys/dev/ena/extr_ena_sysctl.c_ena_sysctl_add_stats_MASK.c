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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ena_stats_tx {int /*<<< orphan*/  llq_buffer_copy; int /*<<< orphan*/  queue_stop; int /*<<< orphan*/  queue_wakeup; int /*<<< orphan*/  collapse_err; int /*<<< orphan*/  collapse; int /*<<< orphan*/  bad_req_id; int /*<<< orphan*/  missing_tx_comp; int /*<<< orphan*/  doorbells; int /*<<< orphan*/  dma_mapping_err; int /*<<< orphan*/  prepare_ctx_err; int /*<<< orphan*/  bytes; int /*<<< orphan*/  cnt; } ;
struct ena_stats_rx {int /*<<< orphan*/  empty_rx_ring; int /*<<< orphan*/  bad_req_id; int /*<<< orphan*/  bad_desc_num; int /*<<< orphan*/  dma_mapping_err; int /*<<< orphan*/  mjum_alloc_fail; int /*<<< orphan*/  mbuf_alloc_fail; int /*<<< orphan*/  bad_csum; int /*<<< orphan*/  refil_partial; int /*<<< orphan*/  bytes; int /*<<< orphan*/  cnt; } ;
struct ena_stats_dev {int /*<<< orphan*/  admin_q_pause; int /*<<< orphan*/  interface_down; int /*<<< orphan*/  interface_up; int /*<<< orphan*/  wd_expired; } ;
struct ena_ring {struct ena_stats_rx rx_stats; struct ena_stats_tx tx_stats; } ;
struct ena_hw_stats {int /*<<< orphan*/  rx_drops; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_packets; } ;
struct ena_com_stats_admin {int /*<<< orphan*/  no_completion; int /*<<< orphan*/  out_of_space; int /*<<< orphan*/  completed_cmd; int /*<<< orphan*/  submitted_cmd; int /*<<< orphan*/  aborted_cmd; } ;
struct ena_adapter {int num_queues; TYPE_2__* ena_dev; struct ena_stats_dev dev_stats; struct ena_hw_stats hw_stats; struct ena_ring* rx_ring; struct ena_ring* tx_ring; int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {struct ena_com_stats_admin stats; } ;
struct TYPE_4__ {TYPE_1__ admin_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int QUEUE_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid* FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC3 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC7(struct ena_adapter *adapter)
{
	device_t dev;

	struct ena_ring *tx_ring;
	struct ena_ring *rx_ring;

	struct ena_hw_stats *hw_stats;
	struct ena_stats_dev *dev_stats;
	struct ena_stats_tx *tx_stats;
	struct ena_stats_rx *rx_stats;
	struct ena_com_stats_admin *admin_stats;

	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;
	struct sysctl_oid_list *child;

	struct sysctl_oid *queue_node, *tx_node, *rx_node, *hw_node;
	struct sysctl_oid *admin_node;
	struct sysctl_oid_list *queue_list, *tx_list, *rx_list, *hw_list;
	struct sysctl_oid_list *admin_list;

#define QUEUE_NAME_LEN 32
	char namebuf[QUEUE_NAME_LEN];
	int i;

	dev = adapter->pdev;

	ctx = FUNC4(dev);
	tree = FUNC5(dev);
	child = FUNC3(tree);

	tx_ring = adapter->tx_ring;
	rx_ring = adapter->rx_ring;

	hw_stats = &adapter->hw_stats;
	dev_stats = &adapter->dev_stats;
	admin_stats = &adapter->ena_dev->admin_queue.stats;

	FUNC0(ctx, child, OID_AUTO, "wd_expired",
	    CTLFLAG_RD, &dev_stats->wd_expired,
	    "Watchdog expiry count");
	FUNC0(ctx, child, OID_AUTO, "interface_up",
	    CTLFLAG_RD, &dev_stats->interface_up,
	    "Network interface up count");
	FUNC0(ctx, child, OID_AUTO, "interface_down",
	    CTLFLAG_RD, &dev_stats->interface_down,
	    "Network interface down count");
	FUNC0(ctx, child, OID_AUTO, "admin_q_pause",
	    CTLFLAG_RD, &dev_stats->admin_q_pause,
	    "Admin queue pauses");

	for (i = 0; i < adapter->num_queues; ++i, ++tx_ring, ++rx_ring) {
		FUNC6(namebuf, QUEUE_NAME_LEN, "queue%d", i);

		queue_node = FUNC1(ctx, child, OID_AUTO,
		    namebuf, CTLFLAG_RD, NULL, "Queue Name");
		queue_list = FUNC3(queue_node);

		/* TX specific stats */
		tx_node = FUNC1(ctx, queue_list, OID_AUTO,
		    "tx_ring", CTLFLAG_RD, NULL, "TX ring");
		tx_list = FUNC3(tx_node);

		tx_stats = &tx_ring->tx_stats;

		FUNC0(ctx, tx_list, OID_AUTO,
		    "count", CTLFLAG_RD,
		    &tx_stats->cnt, "Packets sent");
		FUNC0(ctx, tx_list, OID_AUTO,
		    "bytes", CTLFLAG_RD,
		    &tx_stats->bytes, "Bytes sent");
		FUNC0(ctx, tx_list, OID_AUTO,
		    "prepare_ctx_err", CTLFLAG_RD,
		    &tx_stats->prepare_ctx_err,
		    "TX buffer preparation failures");
		FUNC0(ctx, tx_list, OID_AUTO,
		    "dma_mapping_err", CTLFLAG_RD,
		    &tx_stats->dma_mapping_err, "DMA mapping failures");
		FUNC0(ctx, tx_list, OID_AUTO,
		    "doorbells", CTLFLAG_RD,
		    &tx_stats->doorbells, "Queue doorbells");
		FUNC0(ctx, tx_list, OID_AUTO,
		    "missing_tx_comp", CTLFLAG_RD,
		    &tx_stats->missing_tx_comp, "TX completions missed");
		FUNC0(ctx, tx_list, OID_AUTO,
		    "bad_req_id", CTLFLAG_RD,
		    &tx_stats->bad_req_id, "Bad request id count");
		FUNC0(ctx, tx_list, OID_AUTO,
		        "mbuf_collapses", CTLFLAG_RD,
		        &tx_stats->collapse,
		        "Mbuf collapse count");
		FUNC0(ctx, tx_list, OID_AUTO,
		        "mbuf_collapse_err", CTLFLAG_RD,
		        &tx_stats->collapse_err,
		        "Mbuf collapse failures");
		FUNC0(ctx, tx_list, OID_AUTO,
		    "queue_wakeups", CTLFLAG_RD,
		    &tx_stats->queue_wakeup, "Queue wakeups");
		FUNC0(ctx, tx_list, OID_AUTO,
		    "queue_stops", CTLFLAG_RD,
		    &tx_stats->queue_stop, "Queue stops");
		FUNC0(ctx, tx_list, OID_AUTO,
		    "llq_buffer_copy", CTLFLAG_RD,
		    &tx_stats->llq_buffer_copy,
		    "Header copies for llq transaction");

		/* RX specific stats */
		rx_node = FUNC1(ctx, queue_list, OID_AUTO,
		    "rx_ring", CTLFLAG_RD, NULL, "RX ring");
		rx_list = FUNC3(rx_node);

		rx_stats = &rx_ring->rx_stats;

		FUNC0(ctx, rx_list, OID_AUTO,
		    "count", CTLFLAG_RD,
		    &rx_stats->cnt, "Packets received");
		FUNC0(ctx, rx_list, OID_AUTO,
		    "bytes", CTLFLAG_RD,
		    &rx_stats->bytes, "Bytes received");
		FUNC0(ctx, rx_list, OID_AUTO,
		    "refil_partial", CTLFLAG_RD,
		    &rx_stats->refil_partial, "Partial refilled mbufs");
		FUNC0(ctx, rx_list, OID_AUTO,
		    "bad_csum", CTLFLAG_RD,
		    &rx_stats->bad_csum, "Bad RX checksum");
		FUNC0(ctx, rx_list, OID_AUTO,
		    "mbuf_alloc_fail", CTLFLAG_RD,
		    &rx_stats->mbuf_alloc_fail, "Failed mbuf allocs");
		FUNC0(ctx, rx_list, OID_AUTO,
		    "mjum_alloc_fail", CTLFLAG_RD,
		    &rx_stats->mjum_alloc_fail, "Failed jumbo mbuf allocs");
		FUNC0(ctx, rx_list, OID_AUTO,
		    "dma_mapping_err", CTLFLAG_RD,
		    &rx_stats->dma_mapping_err, "DMA mapping errors");
		FUNC0(ctx, rx_list, OID_AUTO,
		    "bad_desc_num", CTLFLAG_RD,
		    &rx_stats->bad_desc_num, "Bad descriptor count");
		FUNC0(ctx, rx_list, OID_AUTO,
		    "bad_req_id", CTLFLAG_RD,
		    &rx_stats->bad_req_id, "Bad request id count");
		FUNC0(ctx, rx_list, OID_AUTO,
		    "empty_rx_ring", CTLFLAG_RD,
		    &rx_stats->empty_rx_ring, "RX descriptors depletion count");
	}

	/* Stats read from device */
	hw_node = FUNC1(ctx, child, OID_AUTO, "hw_stats",
	    CTLFLAG_RD, NULL, "Statistics from hardware");
	hw_list = FUNC3(hw_node);

	FUNC0(ctx, hw_list, OID_AUTO, "rx_packets", CTLFLAG_RD,
	    &hw_stats->rx_packets, "Packets received");
	FUNC0(ctx, hw_list, OID_AUTO, "tx_packets", CTLFLAG_RD,
	    &hw_stats->tx_packets, "Packets transmitted");
	FUNC0(ctx, hw_list, OID_AUTO, "rx_bytes", CTLFLAG_RD,
	    &hw_stats->rx_bytes, "Bytes received");
	FUNC0(ctx, hw_list, OID_AUTO, "tx_bytes", CTLFLAG_RD,
	    &hw_stats->tx_bytes, "Bytes transmitted");
	FUNC0(ctx, hw_list, OID_AUTO, "rx_drops", CTLFLAG_RD,
	    &hw_stats->rx_drops, "Receive packet drops");

	/* ENA Admin queue stats */
	admin_node = FUNC1(ctx, child, OID_AUTO, "admin_stats",
	    CTLFLAG_RD, NULL, "ENA Admin Queue statistics");
	admin_list = FUNC3(admin_node);

	FUNC2(ctx, admin_list, OID_AUTO, "aborted_cmd", CTLFLAG_RD,
	    &admin_stats->aborted_cmd, 0, "Aborted commands");
	FUNC2(ctx, admin_list, OID_AUTO, "sumbitted_cmd", CTLFLAG_RD,
	    &admin_stats->submitted_cmd, 0, "Submitted commands");
	FUNC2(ctx, admin_list, OID_AUTO, "completed_cmd", CTLFLAG_RD,
	    &admin_stats->completed_cmd, 0, "Completed commands");
	FUNC2(ctx, admin_list, OID_AUTO, "out_of_space", CTLFLAG_RD,
	    &admin_stats->out_of_space, 0, "Queue out of space");
	FUNC2(ctx, admin_list, OID_AUTO, "no_completion", CTLFLAG_RD,
	    &admin_stats->no_completion, 0, "Commands not completed");
}