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
struct tx_ring {int /*<<< orphan*/  tx_irq; int /*<<< orphan*/  me; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct rx_ring {int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  me; } ;
struct em_tx_queue {struct tx_ring txr; } ;
struct em_rx_queue {struct rx_ring rxr; } ;
struct e1000_hw_stats {int /*<<< orphan*/  icrxoc; int /*<<< orphan*/  icrxdmtc; int /*<<< orphan*/  ictxqmtc; int /*<<< orphan*/  ictxqec; int /*<<< orphan*/  ictxatc; int /*<<< orphan*/  ictxptc; int /*<<< orphan*/  icrxatc; int /*<<< orphan*/  icrxptc; int /*<<< orphan*/  iac; int /*<<< orphan*/  tsctfc; int /*<<< orphan*/  tsctc; int /*<<< orphan*/  ptc1522; int /*<<< orphan*/  ptc1023; int /*<<< orphan*/  ptc511; int /*<<< orphan*/  ptc255; int /*<<< orphan*/  ptc127; int /*<<< orphan*/  ptc64; int /*<<< orphan*/  mptc; int /*<<< orphan*/  bptc; int /*<<< orphan*/  gptc; int /*<<< orphan*/  tpt; int /*<<< orphan*/  gotc; int /*<<< orphan*/  gorc; int /*<<< orphan*/  prc1522; int /*<<< orphan*/  prc1023; int /*<<< orphan*/  prc511; int /*<<< orphan*/  prc255; int /*<<< orphan*/  prc127; int /*<<< orphan*/  prc64; int /*<<< orphan*/  mprc; int /*<<< orphan*/  bprc; int /*<<< orphan*/  gprc; int /*<<< orphan*/  tpr; int /*<<< orphan*/  xofftxc; int /*<<< orphan*/  xoffrxc; int /*<<< orphan*/  xontxc; int /*<<< orphan*/  xonrxc; int /*<<< orphan*/  cexterr; int /*<<< orphan*/  algnerrc; int /*<<< orphan*/  crcerrs; int /*<<< orphan*/  rxerrc; int /*<<< orphan*/  rjc; int /*<<< orphan*/  roc; int /*<<< orphan*/  rfc; int /*<<< orphan*/  ruc; int /*<<< orphan*/  rnbc; int /*<<< orphan*/  mpc; int /*<<< orphan*/  dc; int /*<<< orphan*/  sec; int /*<<< orphan*/  symerrs; int /*<<< orphan*/  colc; int /*<<< orphan*/  latecol; int /*<<< orphan*/  mcc; int /*<<< orphan*/  scc; int /*<<< orphan*/  ecol; } ;
struct TYPE_3__ {int /*<<< orphan*/  low_water; int /*<<< orphan*/  high_water; } ;
struct TYPE_4__ {TYPE_1__ fc; } ;
struct adapter {int tx_num_queues; int rx_num_queues; struct e1000_hw_stats stats; TYPE_2__ hw; int /*<<< orphan*/  watchdog_events; int /*<<< orphan*/  rx_overruns; int /*<<< orphan*/  link_irq; int /*<<< orphan*/  dropped_pkts; struct em_rx_queue* rx_queues; struct em_tx_queue* tx_queues; int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int QUEUE_NAME_LEN ; 
 struct sysctl_oid* FUNC4 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC9 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC10 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  em_sysctl_reg_handler ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC14(struct adapter *adapter)
{
	device_t dev = FUNC12(adapter->ctx);
	struct em_tx_queue *tx_que = adapter->tx_queues;
	struct em_rx_queue *rx_que = adapter->rx_queues;

	struct sysctl_ctx_list *ctx = FUNC10(dev);
	struct sysctl_oid *tree = FUNC11(dev);
	struct sysctl_oid_list *child = FUNC9(tree);
	struct e1000_hw_stats *stats = &adapter->stats;

	struct sysctl_oid *stat_node, *queue_node, *int_node;
	struct sysctl_oid_list *stat_list, *queue_list, *int_list;

#define QUEUE_NAME_LEN 32
	char namebuf[QUEUE_NAME_LEN];

	/* Driver Statistics */
	FUNC7(ctx, child, OID_AUTO, "dropped",
			CTLFLAG_RD, &adapter->dropped_pkts,
			"Driver dropped packets");
	FUNC7(ctx, child, OID_AUTO, "link_irq",
			CTLFLAG_RD, &adapter->link_irq,
			"Link MSI-X IRQ Handled");
	FUNC7(ctx, child, OID_AUTO, "rx_overruns",
			CTLFLAG_RD, &adapter->rx_overruns,
			"RX overruns");
	FUNC7(ctx, child, OID_AUTO, "watchdog_timeouts",
			CTLFLAG_RD, &adapter->watchdog_events,
			"Watchdog timeouts");
	FUNC5(ctx, child, OID_AUTO, "device_control",
			CTLTYPE_UINT | CTLFLAG_RD, adapter, E1000_CTRL,
			em_sysctl_reg_handler, "IU",
			"Device Control Register");
	FUNC5(ctx, child, OID_AUTO, "rx_control",
			CTLTYPE_UINT | CTLFLAG_RD, adapter, E1000_RCTL,
			em_sysctl_reg_handler, "IU",
			"Receiver Control Register");
	FUNC6(ctx, child, OID_AUTO, "fc_high_water",
			CTLFLAG_RD, &adapter->hw.fc.high_water, 0,
			"Flow Control High Watermark");
	FUNC6(ctx, child, OID_AUTO, "fc_low_water",
			CTLFLAG_RD, &adapter->hw.fc.low_water, 0,
			"Flow Control Low Watermark");

	for (int i = 0; i < adapter->tx_num_queues; i++, tx_que++) {
		struct tx_ring *txr = &tx_que->txr;
		FUNC13(namebuf, QUEUE_NAME_LEN, "queue_tx_%d", i);
		queue_node = FUNC4(ctx, child, OID_AUTO, namebuf,
					    CTLFLAG_RD, NULL, "TX Queue Name");
		queue_list = FUNC9(queue_node);

		FUNC5(ctx, queue_list, OID_AUTO, "txd_head",
				CTLTYPE_UINT | CTLFLAG_RD, adapter,
				FUNC2(txr->me),
				em_sysctl_reg_handler, "IU",
				"Transmit Descriptor Head");
		FUNC5(ctx, queue_list, OID_AUTO, "txd_tail",
				CTLTYPE_UINT | CTLFLAG_RD, adapter,
				FUNC3(txr->me),
				em_sysctl_reg_handler, "IU",
				"Transmit Descriptor Tail");
		FUNC7(ctx, queue_list, OID_AUTO, "tx_irq",
				CTLFLAG_RD, &txr->tx_irq,
				"Queue MSI-X Transmit Interrupts");
	}

	for (int j = 0; j < adapter->rx_num_queues; j++, rx_que++) {
		struct rx_ring *rxr = &rx_que->rxr;
		FUNC13(namebuf, QUEUE_NAME_LEN, "queue_rx_%d", j);
		queue_node = FUNC4(ctx, child, OID_AUTO, namebuf,
					    CTLFLAG_RD, NULL, "RX Queue Name");
		queue_list = FUNC9(queue_node);

		FUNC5(ctx, queue_list, OID_AUTO, "rxd_head",
				CTLTYPE_UINT | CTLFLAG_RD, adapter,
				FUNC0(rxr->me),
				em_sysctl_reg_handler, "IU",
				"Receive Descriptor Head");
		FUNC5(ctx, queue_list, OID_AUTO, "rxd_tail",
				CTLTYPE_UINT | CTLFLAG_RD, adapter,
				FUNC1(rxr->me),
				em_sysctl_reg_handler, "IU",
				"Receive Descriptor Tail");
		FUNC7(ctx, queue_list, OID_AUTO, "rx_irq",
				CTLFLAG_RD, &rxr->rx_irq,
				"Queue MSI-X Receive Interrupts");
	}

	/* MAC stats get their own sub node */

	stat_node = FUNC4(ctx, child, OID_AUTO, "mac_stats",
				    CTLFLAG_RD, NULL, "Statistics");
	stat_list = FUNC9(stat_node);

	FUNC8(ctx, stat_list, OID_AUTO, "excess_coll",
			CTLFLAG_RD, &stats->ecol,
			"Excessive collisions");
	FUNC8(ctx, stat_list, OID_AUTO, "single_coll",
			CTLFLAG_RD, &stats->scc,
			"Single collisions");
	FUNC8(ctx, stat_list, OID_AUTO, "multiple_coll",
			CTLFLAG_RD, &stats->mcc,
			"Multiple collisions");
	FUNC8(ctx, stat_list, OID_AUTO, "late_coll",
			CTLFLAG_RD, &stats->latecol,
			"Late collisions");
	FUNC8(ctx, stat_list, OID_AUTO, "collision_count",
			CTLFLAG_RD, &stats->colc,
			"Collision Count");
	FUNC8(ctx, stat_list, OID_AUTO, "symbol_errors",
			CTLFLAG_RD, &adapter->stats.symerrs,
			"Symbol Errors");
	FUNC8(ctx, stat_list, OID_AUTO, "sequence_errors",
			CTLFLAG_RD, &adapter->stats.sec,
			"Sequence Errors");
	FUNC8(ctx, stat_list, OID_AUTO, "defer_count",
			CTLFLAG_RD, &adapter->stats.dc,
			"Defer Count");
	FUNC8(ctx, stat_list, OID_AUTO, "missed_packets",
			CTLFLAG_RD, &adapter->stats.mpc,
			"Missed Packets");
	FUNC8(ctx, stat_list, OID_AUTO, "recv_no_buff",
			CTLFLAG_RD, &adapter->stats.rnbc,
			"Receive No Buffers");
	FUNC8(ctx, stat_list, OID_AUTO, "recv_undersize",
			CTLFLAG_RD, &adapter->stats.ruc,
			"Receive Undersize");
	FUNC8(ctx, stat_list, OID_AUTO, "recv_fragmented",
			CTLFLAG_RD, &adapter->stats.rfc,
			"Fragmented Packets Received ");
	FUNC8(ctx, stat_list, OID_AUTO, "recv_oversize",
			CTLFLAG_RD, &adapter->stats.roc,
			"Oversized Packets Received");
	FUNC8(ctx, stat_list, OID_AUTO, "recv_jabber",
			CTLFLAG_RD, &adapter->stats.rjc,
			"Recevied Jabber");
	FUNC8(ctx, stat_list, OID_AUTO, "recv_errs",
			CTLFLAG_RD, &adapter->stats.rxerrc,
			"Receive Errors");
	FUNC8(ctx, stat_list, OID_AUTO, "crc_errs",
			CTLFLAG_RD, &adapter->stats.crcerrs,
			"CRC errors");
	FUNC8(ctx, stat_list, OID_AUTO, "alignment_errs",
			CTLFLAG_RD, &adapter->stats.algnerrc,
			"Alignment Errors");
	/* On 82575 these are collision counts */
	FUNC8(ctx, stat_list, OID_AUTO, "coll_ext_errs",
			CTLFLAG_RD, &adapter->stats.cexterr,
			"Collision/Carrier extension errors");
	FUNC8(ctx, stat_list, OID_AUTO, "xon_recvd",
			CTLFLAG_RD, &adapter->stats.xonrxc,
			"XON Received");
	FUNC8(ctx, stat_list, OID_AUTO, "xon_txd",
			CTLFLAG_RD, &adapter->stats.xontxc,
			"XON Transmitted");
	FUNC8(ctx, stat_list, OID_AUTO, "xoff_recvd",
			CTLFLAG_RD, &adapter->stats.xoffrxc,
			"XOFF Received");
	FUNC8(ctx, stat_list, OID_AUTO, "xoff_txd",
			CTLFLAG_RD, &adapter->stats.xofftxc,
			"XOFF Transmitted");

	/* Packet Reception Stats */
	FUNC8(ctx, stat_list, OID_AUTO, "total_pkts_recvd",
			CTLFLAG_RD, &adapter->stats.tpr,
			"Total Packets Received ");
	FUNC8(ctx, stat_list, OID_AUTO, "good_pkts_recvd",
			CTLFLAG_RD, &adapter->stats.gprc,
			"Good Packets Received");
	FUNC8(ctx, stat_list, OID_AUTO, "bcast_pkts_recvd",
			CTLFLAG_RD, &adapter->stats.bprc,
			"Broadcast Packets Received");
	FUNC8(ctx, stat_list, OID_AUTO, "mcast_pkts_recvd",
			CTLFLAG_RD, &adapter->stats.mprc,
			"Multicast Packets Received");
	FUNC8(ctx, stat_list, OID_AUTO, "rx_frames_64",
			CTLFLAG_RD, &adapter->stats.prc64,
			"64 byte frames received ");
	FUNC8(ctx, stat_list, OID_AUTO, "rx_frames_65_127",
			CTLFLAG_RD, &adapter->stats.prc127,
			"65-127 byte frames received");
	FUNC8(ctx, stat_list, OID_AUTO, "rx_frames_128_255",
			CTLFLAG_RD, &adapter->stats.prc255,
			"128-255 byte frames received");
	FUNC8(ctx, stat_list, OID_AUTO, "rx_frames_256_511",
			CTLFLAG_RD, &adapter->stats.prc511,
			"256-511 byte frames received");
	FUNC8(ctx, stat_list, OID_AUTO, "rx_frames_512_1023",
			CTLFLAG_RD, &adapter->stats.prc1023,
			"512-1023 byte frames received");
	FUNC8(ctx, stat_list, OID_AUTO, "rx_frames_1024_1522",
			CTLFLAG_RD, &adapter->stats.prc1522,
			"1023-1522 byte frames received");
	FUNC8(ctx, stat_list, OID_AUTO, "good_octets_recvd",
			CTLFLAG_RD, &adapter->stats.gorc,
			"Good Octets Received");

	/* Packet Transmission Stats */
	FUNC8(ctx, stat_list, OID_AUTO, "good_octets_txd",
			CTLFLAG_RD, &adapter->stats.gotc,
			"Good Octets Transmitted");
	FUNC8(ctx, stat_list, OID_AUTO, "total_pkts_txd",
			CTLFLAG_RD, &adapter->stats.tpt,
			"Total Packets Transmitted");
	FUNC8(ctx, stat_list, OID_AUTO, "good_pkts_txd",
			CTLFLAG_RD, &adapter->stats.gptc,
			"Good Packets Transmitted");
	FUNC8(ctx, stat_list, OID_AUTO, "bcast_pkts_txd",
			CTLFLAG_RD, &adapter->stats.bptc,
			"Broadcast Packets Transmitted");
	FUNC8(ctx, stat_list, OID_AUTO, "mcast_pkts_txd",
			CTLFLAG_RD, &adapter->stats.mptc,
			"Multicast Packets Transmitted");
	FUNC8(ctx, stat_list, OID_AUTO, "tx_frames_64",
			CTLFLAG_RD, &adapter->stats.ptc64,
			"64 byte frames transmitted ");
	FUNC8(ctx, stat_list, OID_AUTO, "tx_frames_65_127",
			CTLFLAG_RD, &adapter->stats.ptc127,
			"65-127 byte frames transmitted");
	FUNC8(ctx, stat_list, OID_AUTO, "tx_frames_128_255",
			CTLFLAG_RD, &adapter->stats.ptc255,
			"128-255 byte frames transmitted");
	FUNC8(ctx, stat_list, OID_AUTO, "tx_frames_256_511",
			CTLFLAG_RD, &adapter->stats.ptc511,
			"256-511 byte frames transmitted");
	FUNC8(ctx, stat_list, OID_AUTO, "tx_frames_512_1023",
			CTLFLAG_RD, &adapter->stats.ptc1023,
			"512-1023 byte frames transmitted");
	FUNC8(ctx, stat_list, OID_AUTO, "tx_frames_1024_1522",
			CTLFLAG_RD, &adapter->stats.ptc1522,
			"1024-1522 byte frames transmitted");
	FUNC8(ctx, stat_list, OID_AUTO, "tso_txd",
			CTLFLAG_RD, &adapter->stats.tsctc,
			"TSO Contexts Transmitted");
	FUNC8(ctx, stat_list, OID_AUTO, "tso_ctx_fail",
			CTLFLAG_RD, &adapter->stats.tsctfc,
			"TSO Contexts Failed");


	/* Interrupt Stats */

	int_node = FUNC4(ctx, child, OID_AUTO, "interrupts",
				    CTLFLAG_RD, NULL, "Interrupt Statistics");
	int_list = FUNC9(int_node);

	FUNC8(ctx, int_list, OID_AUTO, "asserts",
			CTLFLAG_RD, &adapter->stats.iac,
			"Interrupt Assertion Count");

	FUNC8(ctx, int_list, OID_AUTO, "rx_pkt_timer",
			CTLFLAG_RD, &adapter->stats.icrxptc,
			"Interrupt Cause Rx Pkt Timer Expire Count");

	FUNC8(ctx, int_list, OID_AUTO, "rx_abs_timer",
			CTLFLAG_RD, &adapter->stats.icrxatc,
			"Interrupt Cause Rx Abs Timer Expire Count");

	FUNC8(ctx, int_list, OID_AUTO, "tx_pkt_timer",
			CTLFLAG_RD, &adapter->stats.ictxptc,
			"Interrupt Cause Tx Pkt Timer Expire Count");

	FUNC8(ctx, int_list, OID_AUTO, "tx_abs_timer",
			CTLFLAG_RD, &adapter->stats.ictxatc,
			"Interrupt Cause Tx Abs Timer Expire Count");

	FUNC8(ctx, int_list, OID_AUTO, "tx_queue_empty",
			CTLFLAG_RD, &adapter->stats.ictxqec,
			"Interrupt Cause Tx Queue Empty Count");

	FUNC8(ctx, int_list, OID_AUTO, "tx_queue_min_thresh",
			CTLFLAG_RD, &adapter->stats.ictxqmtc,
			"Interrupt Cause Tx Queue Min Thresh Count");

	FUNC8(ctx, int_list, OID_AUTO, "rx_desc_min_thresh",
			CTLFLAG_RD, &adapter->stats.icrxdmtc,
			"Interrupt Cause Rx Desc Min Thresh Count");

	FUNC8(ctx, int_list, OID_AUTO, "rx_overrun",
			CTLFLAG_RD, &adapter->stats.icrxoc,
			"Interrupt Cause Receiver Overrun Count");
}