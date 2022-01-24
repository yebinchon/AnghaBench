#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  tx_control_frames; int /*<<< orphan*/  tx_pause_frames; int /*<<< orphan*/  rx_fifo_overflow; int /*<<< orphan*/  rx_udp_checksum_errors; int /*<<< orphan*/  rx_tcp_checksum_errors; int /*<<< orphan*/  rx_ip_checksum_errors; int /*<<< orphan*/  rx_dropped_runt; int /*<<< orphan*/  rx_dropped_invalid_tcp_length; int /*<<< orphan*/  rx_dropped_header_too_small; int /*<<< orphan*/  rx_dropped_too_short; int /*<<< orphan*/  rx_dropped_too_small; int /*<<< orphan*/  rx_address_match_errors; int /*<<< orphan*/  rx_frames_too_long; int /*<<< orphan*/  rx_out_of_range_errors; int /*<<< orphan*/  rx_in_range_errors; int /*<<< orphan*/  rx_alignment_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_control_frames; int /*<<< orphan*/  rx_pause_frames; } ;
struct TYPE_16__ {TYPE_5__ xe201; } ;
struct TYPE_14__ {int /*<<< orphan*/  t_ipv6_ext_hdr_tx_drop; int /*<<< orphan*/  t_tx_compl; int /*<<< orphan*/  t_tx_wrbs; int /*<<< orphan*/  t_tx_stops; int /*<<< orphan*/  t_tx_reqs; int /*<<< orphan*/  t_tx_bytes; int /*<<< orphan*/  t_tx_pkts; } ;
struct TYPE_11__ {int /*<<< orphan*/  t_rxcp_errs; int /*<<< orphan*/  t_rx_ucast_pkts; int /*<<< orphan*/  t_rx_mcast_pkts; int /*<<< orphan*/  t_rx_frags; int /*<<< orphan*/  t_rx_bytes; int /*<<< orphan*/  t_rx_pkts; } ;
struct oce_drv_stats {TYPE_6__ u0; TYPE_4__ tx; TYPE_1__ rx; } ;
struct TYPE_19__ {int nrqs; int nwqs; TYPE_8__** wq; TYPE_3__** rq; struct oce_drv_stats oce_stats_info; } ;
struct TYPE_17__ {int /*<<< orphan*/  ipv6_ext_hdr_tx_drop; int /*<<< orphan*/  tx_compl; int /*<<< orphan*/  tx_wrbs; int /*<<< orphan*/  tx_stops; int /*<<< orphan*/  tx_reqs; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_pkts; } ;
struct TYPE_18__ {TYPE_7__ tx_stats; } ;
struct TYPE_12__ {int /*<<< orphan*/  rxcp_err; int /*<<< orphan*/  rx_ucast_pkts; int /*<<< orphan*/  rx_mcast_pkts; int /*<<< orphan*/  rx_frags; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_pkts; } ;
struct TYPE_13__ {TYPE_2__ rx_stats; } ;
typedef  TYPE_9__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC4 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC6(POCE_SOFTC sc,
				  struct sysctl_ctx_list *ctx,
				  struct sysctl_oid *stats_node)
{
	struct sysctl_oid *rx_stats_node, *tx_stats_node;
	struct sysctl_oid_list *rx_stat_list, *tx_stat_list;
	struct sysctl_oid_list *queue_stats_list;
	struct sysctl_oid *queue_stats_node;
	struct oce_drv_stats *stats;
	char prefix[32];
	int i;

	stats = &sc->oce_stats_info;

	rx_stats_node = FUNC0(ctx,
					FUNC4(stats_node),
					OID_AUTO, "rx", CTLFLAG_RD,
					NULL, "RX Ethernet Statistics");
	rx_stat_list = FUNC4(rx_stats_node);

	
	FUNC1(ctx, rx_stat_list, OID_AUTO, "total_pkts",
			CTLFLAG_RD, &stats->rx.t_rx_pkts,
			"Total Received Packets");
	FUNC1(ctx, rx_stat_list, OID_AUTO, "total_bytes",
			CTLFLAG_RD, &stats->rx.t_rx_bytes,
			"Total Received Bytes");
	FUNC2(ctx, rx_stat_list, OID_AUTO, "total_frags",
			CTLFLAG_RD, &stats->rx.t_rx_frags, 0,
			"Total Received Fragements");
	FUNC2(ctx, rx_stat_list, OID_AUTO, "total_mcast_pkts",
			CTLFLAG_RD, &stats->rx.t_rx_mcast_pkts, 0,
			"Total Received Multicast Packets");
	FUNC2(ctx, rx_stat_list, OID_AUTO, "total_ucast_pkts",
			CTLFLAG_RD, &stats->rx.t_rx_ucast_pkts, 0,
			"Total Received Unicast Packets");
	FUNC2(ctx, rx_stat_list, OID_AUTO, "total_rxcp_errs",
			CTLFLAG_RD, &stats->rx.t_rxcp_errs, 0,
			"Total Receive completion errors");
	FUNC3(ctx, rx_stat_list, OID_AUTO, "pause_frames",
			CTLFLAG_RD, &stats->u0.xe201.rx_pause_frames,
			"Pause Frames");
	FUNC3(ctx, rx_stat_list, OID_AUTO, "control_frames",
			CTLFLAG_RD, &stats->u0.xe201.rx_control_frames,
			"Control Frames");
	
	for (i = 0; i < sc->nrqs; i++) {
		FUNC5(prefix, "queue%d",i);
		queue_stats_node = FUNC0(ctx, 
						FUNC4(rx_stats_node),
						OID_AUTO, prefix, CTLFLAG_RD,
						NULL, "Queue name");
		queue_stats_list = FUNC4(queue_stats_node);
		
		FUNC1(ctx, queue_stats_list, OID_AUTO, "rx_pkts",
			CTLFLAG_RD, &sc->rq[i]->rx_stats.rx_pkts,
			"Receive Packets");
		FUNC1(ctx, queue_stats_list, OID_AUTO, "rx_bytes",
			CTLFLAG_RD, &sc->rq[i]->rx_stats.rx_bytes,
			"Recived Bytes");
		FUNC2(ctx, queue_stats_list, OID_AUTO, "rx_frags",
			CTLFLAG_RD, &sc->rq[i]->rx_stats.rx_frags, 0,
			"Received Fragments");
		FUNC2(ctx, queue_stats_list, OID_AUTO,
			"rx_mcast_pkts", CTLFLAG_RD,
			&sc->rq[i]->rx_stats.rx_mcast_pkts, 0,
			"Received Multicast Packets");
		FUNC2(ctx, queue_stats_list, OID_AUTO,
			"rx_ucast_pkts",CTLFLAG_RD,
			&sc->rq[i]->rx_stats.rx_ucast_pkts, 0,
			"Received Unicast Packets");
		FUNC2(ctx, queue_stats_list, OID_AUTO, "rxcp_err",
			CTLFLAG_RD, &sc->rq[i]->rx_stats.rxcp_err, 0,
			"Received Completion Errors");
		
	}

	rx_stats_node = FUNC0(ctx,
					FUNC4(rx_stats_node),
					OID_AUTO, "err", CTLFLAG_RD,
					NULL, "Receive Error Stats");
	rx_stat_list = FUNC4(rx_stats_node);
	
	FUNC3(ctx, rx_stat_list, OID_AUTO, "crc_errs",
			CTLFLAG_RD, &stats->u0.xe201.rx_crc_errors,
			"CRC Errors");
	FUNC3(ctx, rx_stat_list, OID_AUTO, "alignment_errors",
			CTLFLAG_RD, &stats->u0.xe201.rx_alignment_errors,
			"RX Alignmnet Errors");
	FUNC2(ctx, rx_stat_list, OID_AUTO, "in_range_errors",
			CTLFLAG_RD, &stats->u0.xe201.rx_in_range_errors, 0,
			"In Range Errors");
	FUNC2(ctx, rx_stat_list, OID_AUTO, "out_range_errors",
			CTLFLAG_RD, &stats->u0.xe201.rx_out_of_range_errors, 0,
			"Out Range Errors");
	FUNC3(ctx, rx_stat_list, OID_AUTO, "frame_too_long",
			CTLFLAG_RD, &stats->u0.xe201.rx_frames_too_long,
			"Frame Too Long");
	FUNC2(ctx, rx_stat_list, OID_AUTO, "address_match_errors",
			CTLFLAG_RD, &stats->u0.xe201.rx_address_match_errors, 0,
			"Address Match Errors");
	FUNC2(ctx, rx_stat_list, OID_AUTO, "dropped_too_small",
			CTLFLAG_RD, &stats->u0.xe201.rx_dropped_too_small, 0,
			"Dropped Too Small");
	FUNC2(ctx, rx_stat_list, OID_AUTO, "dropped_too_short",
			CTLFLAG_RD, &stats->u0.xe201.rx_dropped_too_short, 0,
			"Dropped Too Short");
	FUNC2(ctx, rx_stat_list, OID_AUTO,
			"dropped_header_too_small", CTLFLAG_RD,
			&stats->u0.xe201.rx_dropped_header_too_small, 0,
			"Dropped Header Too Small");
	FUNC2(ctx, rx_stat_list, OID_AUTO,
			"dropped_tcp_length", CTLFLAG_RD,
			&stats->u0.xe201.rx_dropped_invalid_tcp_length, 0,
			"Dropped TCP Length");
	FUNC2(ctx, rx_stat_list, OID_AUTO, "dropped_runt",
			CTLFLAG_RD, &stats->u0.xe201.rx_dropped_runt, 0,
			"Dropped runt");
	FUNC2(ctx, rx_stat_list, OID_AUTO, "ip_checksum_errs",
			CTLFLAG_RD, &stats->u0.xe201.rx_ip_checksum_errors, 0,
			"IP Checksum Errors");
	FUNC2(ctx, rx_stat_list, OID_AUTO, "tcp_checksum_errs",
			CTLFLAG_RD, &stats->u0.xe201.rx_tcp_checksum_errors, 0,
			"TCP Checksum Errors");
	FUNC2(ctx, rx_stat_list, OID_AUTO, "udp_checksum_errs",
			CTLFLAG_RD, &stats->u0.xe201.rx_udp_checksum_errors, 0,
			"UDP Checksum Errors");
	FUNC2(ctx, rx_stat_list, OID_AUTO, "input_fifo_overflow_drop",
			CTLFLAG_RD, &stats->u0.xe201.rx_fifo_overflow, 0,
			"Input FIFO Overflow Drop");

	tx_stats_node = FUNC0(ctx,
					FUNC4(stats_node),
					OID_AUTO, "tx", CTLFLAG_RD,
					NULL, "TX Ethernet Statistics");
	tx_stat_list = FUNC4(tx_stats_node);

	FUNC1(ctx, tx_stat_list, OID_AUTO, "total_tx_pkts",
			CTLFLAG_RD, &stats->tx.t_tx_pkts,
			"Total Transmit Packets");
	FUNC1(ctx, tx_stat_list, OID_AUTO, "total_tx_bytes",
			CTLFLAG_RD, &stats->tx.t_tx_bytes,
			"Total Transmit Bytes");
	FUNC2(ctx, tx_stat_list, OID_AUTO, "total_tx_reqs",
			CTLFLAG_RD, &stats->tx.t_tx_reqs, 0,
			"Total Transmit Requests");
	FUNC2(ctx, tx_stat_list, OID_AUTO, "total_tx_stops",
			CTLFLAG_RD, &stats->tx.t_tx_stops, 0,
			"Total Transmit Stops");
	FUNC2(ctx, tx_stat_list, OID_AUTO, "total_tx_wrbs",
			CTLFLAG_RD, &stats->tx.t_tx_wrbs, 0,
			"Total Transmit WRB's");
	FUNC2(ctx, tx_stat_list, OID_AUTO, "total_tx_compl",
			CTLFLAG_RD, &stats->tx.t_tx_compl, 0,
			"Total Transmit Completions");
	FUNC2(ctx, tx_stat_list, OID_AUTO,
			"total_ipv6_ext_hdr_tx_drop",
			CTLFLAG_RD, &stats->tx.t_ipv6_ext_hdr_tx_drop, 0,
			"Total Transmit IPV6 Drops");
	FUNC3(ctx, tx_stat_list, OID_AUTO, "pauseframes",
			CTLFLAG_RD, &stats->u0.xe201.tx_pause_frames,
			"Pause Frames");
	FUNC3(ctx, tx_stat_list, OID_AUTO, "controlframes",
			CTLFLAG_RD, &stats->u0.xe201.tx_control_frames,
			"Tx Control Frames");

	for (i = 0; i < sc->nwqs; i++) {
		FUNC5(prefix, "queue%d",i);
		queue_stats_node = FUNC0(ctx, 
						FUNC4(tx_stats_node),
						OID_AUTO, prefix, CTLFLAG_RD,
						NULL, "Queue name");
		queue_stats_list = FUNC4(queue_stats_node);

		FUNC1(ctx, queue_stats_list, OID_AUTO, "tx_pkts",
			CTLFLAG_RD, &sc->wq[i]->tx_stats.tx_pkts,
			"Transmit Packets");
		FUNC1(ctx, queue_stats_list, OID_AUTO, "tx_bytes",
			CTLFLAG_RD, &sc->wq[i]->tx_stats.tx_bytes,
			"Transmit Bytes");
		FUNC2(ctx, queue_stats_list, OID_AUTO, "tx_reqs",
			CTLFLAG_RD, &sc->wq[i]->tx_stats.tx_reqs, 0,
			"Transmit Requests");
		FUNC2(ctx, queue_stats_list, OID_AUTO, "tx_stops",
			CTLFLAG_RD, &sc->wq[i]->tx_stats.tx_stops, 0,
			"Transmit Stops");
		FUNC2(ctx, queue_stats_list, OID_AUTO, "tx_wrbs",
			CTLFLAG_RD, &sc->wq[i]->tx_stats.tx_wrbs, 0,
			"Transmit WRB's");
		FUNC2(ctx, queue_stats_list, OID_AUTO, "tx_compl",
			CTLFLAG_RD, &sc->wq[i]->tx_stats.tx_compl, 0,
			"Transmit Completions");
		FUNC2(ctx, queue_stats_list, OID_AUTO,
			"ipv6_ext_hdr_tx_drop", CTLFLAG_RD,
			&sc->wq[i]->tx_stats.ipv6_ext_hdr_tx_drop, 0,
			"Transmit IPV6 Ext Header Drop");

	}
	return;
}