#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tx_ring {int /*<<< orphan*/  total_packets; int /*<<< orphan*/  tso_tx; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct rx_ring {int /*<<< orphan*/  rx_discarded; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct ixgbevf_hw_stats {int /*<<< orphan*/  vfgotc; int /*<<< orphan*/  vfgptc; int /*<<< orphan*/  vfmprc; int /*<<< orphan*/  vfgorc; int /*<<< orphan*/  vfgprc; } ;
struct ix_tx_queue {struct tx_ring txr; } ;
struct ix_rx_queue {int /*<<< orphan*/  irqs; struct rx_ring rxr; } ;
struct TYPE_2__ {struct ixgbevf_hw_stats vf; } ;
struct adapter {int num_tx_queues; int num_rx_queues; int /*<<< orphan*/  link_irq; int /*<<< orphan*/  watchdog_events; TYPE_1__ stats; struct ix_rx_queue* rx_queues; struct ix_tx_queue* tx_queues; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int QUEUE_NAME_LEN ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC3 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC7(struct adapter *adapter)
{
	device_t                dev = adapter->dev;
	struct ix_tx_queue      *tx_que = adapter->tx_queues;
	struct ix_rx_queue      *rx_que = adapter->rx_queues;
	struct sysctl_ctx_list  *ctx = FUNC4(dev);
	struct sysctl_oid       *tree = FUNC5(dev);
	struct sysctl_oid_list  *child = FUNC3(tree);
	struct ixgbevf_hw_stats *stats = &adapter->stats.vf;
	struct sysctl_oid       *stat_node, *queue_node;
	struct sysctl_oid_list  *stat_list, *queue_list;

#define QUEUE_NAME_LEN 32
	char                    namebuf[QUEUE_NAME_LEN];

	/* Driver Statistics */
	FUNC1(ctx, child, OID_AUTO, "watchdog_events",
	    CTLFLAG_RD, &adapter->watchdog_events, "Watchdog timeouts");
	FUNC1(ctx, child, OID_AUTO, "link_irq",
	    CTLFLAG_RD, &adapter->link_irq, "Link MSI-X IRQ Handled");

	for (int i = 0; i < adapter->num_tx_queues; i++, tx_que++) {
		struct tx_ring *txr = &tx_que->txr;
		FUNC6(namebuf, QUEUE_NAME_LEN, "queue%d", i);
		queue_node = FUNC0(ctx, child, OID_AUTO, namebuf,
		    CTLFLAG_RD, NULL, "Queue Name");
		queue_list = FUNC3(queue_node);

		FUNC2(ctx, queue_list, OID_AUTO, "tso_tx",
		    CTLFLAG_RD, &(txr->tso_tx), "TSO Packets");
		FUNC2(ctx, queue_list, OID_AUTO, "tx_packets",
		    CTLFLAG_RD, &(txr->total_packets), "TX Packets");
	}

	for (int i = 0; i < adapter->num_rx_queues; i++, rx_que++) {
		struct rx_ring *rxr = &rx_que->rxr;
		FUNC6(namebuf, QUEUE_NAME_LEN, "queue%d", i);
		queue_node = FUNC0(ctx, child, OID_AUTO, namebuf,
		    CTLFLAG_RD, NULL, "Queue Name");
		queue_list = FUNC3(queue_node);

		FUNC2(ctx, queue_list, OID_AUTO, "irqs",
		    CTLFLAG_RD, &(rx_que->irqs), "IRQs on queue");
		FUNC2(ctx, queue_list, OID_AUTO, "rx_packets",
		    CTLFLAG_RD, &(rxr->rx_packets), "RX packets");
		FUNC2(ctx, queue_list, OID_AUTO, "rx_bytes",
		    CTLFLAG_RD, &(rxr->rx_bytes), "RX bytes");
		FUNC2(ctx, queue_list, OID_AUTO, "rx_discarded",
		    CTLFLAG_RD, &(rxr->rx_discarded), "Discarded RX packets");
	}

	stat_node = FUNC0(ctx, child, OID_AUTO, "mac",
	    CTLFLAG_RD, NULL, "VF Statistics (read from HW registers)");
	stat_list = FUNC3(stat_node);

	FUNC2(ctx, stat_list, OID_AUTO, "good_pkts_rcvd",
	    CTLFLAG_RD, &stats->vfgprc, "Good Packets Received");
	FUNC2(ctx, stat_list, OID_AUTO, "good_octets_rcvd",
	    CTLFLAG_RD, &stats->vfgorc, "Good Octets Received");
	FUNC2(ctx, stat_list, OID_AUTO, "mcast_pkts_rcvd",
	    CTLFLAG_RD, &stats->vfmprc, "Multicast Packets Received");
	FUNC2(ctx, stat_list, OID_AUTO, "good_pkts_txd",
	    CTLFLAG_RD, &stats->vfgptc, "Good Packets Transmitted");
	FUNC2(ctx, stat_list, OID_AUTO, "good_octets_txd",
	    CTLFLAG_RD, &stats->vfgotc, "Good Octets Transmitted");
}