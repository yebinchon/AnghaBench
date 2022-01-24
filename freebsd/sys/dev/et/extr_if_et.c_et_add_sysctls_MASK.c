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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct et_hw_stats {int /*<<< orphan*/  tx_fragments; int /*<<< orphan*/  tx_undersize; int /*<<< orphan*/  tx_oversize; int /*<<< orphan*/  tx_control; int /*<<< orphan*/  tx_crcerrs; int /*<<< orphan*/  tx_jabbers; int /*<<< orphan*/  tx_drop; int /*<<< orphan*/  tx_pause_honored; int /*<<< orphan*/  tx_total_colls; int /*<<< orphan*/  tx_excess_colls; int /*<<< orphan*/  tx_late_colls; int /*<<< orphan*/  tx_multi_colls; int /*<<< orphan*/  tx_single_colls; int /*<<< orphan*/  tx_excess_deferred; int /*<<< orphan*/  tx_deferred; int /*<<< orphan*/  tx_pause; int /*<<< orphan*/  tx_bcast; int /*<<< orphan*/  tx_mcast; int /*<<< orphan*/  tx_frames; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rx_drop; int /*<<< orphan*/  rx_jabbers; int /*<<< orphan*/  rx_fragments; int /*<<< orphan*/  rx_oversize; int /*<<< orphan*/  rx_runts; int /*<<< orphan*/  rx_cserrs; int /*<<< orphan*/  rx_codeerrs; int /*<<< orphan*/  rx_lenerrs; int /*<<< orphan*/  rx_alignerrs; int /*<<< orphan*/  rx_unknown_control; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  rx_control; int /*<<< orphan*/  rx_bcast; int /*<<< orphan*/  rx_mcast; int /*<<< orphan*/  rx_crcerrs; int /*<<< orphan*/  rx_frames; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  pkts_1519; int /*<<< orphan*/  pkts_1024; int /*<<< orphan*/  pkts_512; int /*<<< orphan*/  pkts_256; int /*<<< orphan*/  pkts_128; int /*<<< orphan*/  pkts_65; int /*<<< orphan*/  pkts_64; } ;
struct et_softc {struct et_hw_stats sc_stats; int /*<<< orphan*/  sc_timer; int /*<<< orphan*/  sc_tx_intr_nsegs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC3 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct et_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC6 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC7 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  et_sysctl_rx_intr_delay ; 
 int /*<<< orphan*/  et_sysctl_rx_intr_npkts ; 

__attribute__((used)) static void
FUNC9(struct et_softc * sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *children, *parent;
	struct sysctl_oid *tree;
	struct et_hw_stats *stats;

	ctx = FUNC7(sc->dev);
	children = FUNC6(FUNC8(sc->dev));

	FUNC4(ctx, children, OID_AUTO, "rx_intr_npkts",
	    CTLTYPE_INT | CTLFLAG_RW, sc, 0, et_sysctl_rx_intr_npkts, "I",
	    "RX IM, # packets per RX interrupt");
	FUNC4(ctx, children, OID_AUTO, "rx_intr_delay",
	    CTLTYPE_INT | CTLFLAG_RW, sc, 0, et_sysctl_rx_intr_delay, "I",
	    "RX IM, RX interrupt delay (x10 usec)");
	FUNC2(ctx, children, OID_AUTO, "tx_intr_nsegs",
	    CTLFLAG_RW, &sc->sc_tx_intr_nsegs, 0,
	    "TX IM, # segments per TX interrupt");
	FUNC5(ctx, children, OID_AUTO, "timer",
	    CTLFLAG_RW, &sc->sc_timer, 0, "TX timer");

	tree = FUNC3(ctx, children, OID_AUTO, "stats", CTLFLAG_RD,
	    NULL, "ET statistics");
        parent = FUNC6(tree);

	/* TX/RX statistics. */
	stats = &sc->sc_stats;
	FUNC1(ctx, parent, "frames_64", &stats->pkts_64,
	    "0 to 64 bytes frames");
	FUNC1(ctx, parent, "frames_65_127", &stats->pkts_65,
	    "65 to 127 bytes frames");
	FUNC1(ctx, parent, "frames_128_255", &stats->pkts_128,
	    "128 to 255 bytes frames");
	FUNC1(ctx, parent, "frames_256_511", &stats->pkts_256,
	    "256 to 511 bytes frames");
	FUNC1(ctx, parent, "frames_512_1023", &stats->pkts_512,
	    "512 to 1023 bytes frames");
	FUNC1(ctx, parent, "frames_1024_1518", &stats->pkts_1024,
	    "1024 to 1518 bytes frames");
	FUNC1(ctx, parent, "frames_1519_1522", &stats->pkts_1519,
	    "1519 to 1522 bytes frames");

	/* RX statistics. */
	tree = FUNC3(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
	    NULL, "RX MAC statistics");
	children = FUNC6(tree);
	FUNC1(ctx, children, "bytes",
	    &stats->rx_bytes, "Good bytes");
	FUNC1(ctx, children, "frames",
	    &stats->rx_frames, "Good frames");
	FUNC0(ctx, children, "crc_errs",
	    &stats->rx_crcerrs, "CRC errors");
	FUNC1(ctx, children, "mcast_frames",
	    &stats->rx_mcast, "Multicast frames");
	FUNC1(ctx, children, "bcast_frames",
	    &stats->rx_bcast, "Broadcast frames");
	FUNC0(ctx, children, "control",
	    &stats->rx_control, "Control frames");
	FUNC0(ctx, children, "pause",
	    &stats->rx_pause, "Pause frames");
	FUNC0(ctx, children, "unknown_control",
	    &stats->rx_unknown_control, "Unknown control frames");
	FUNC0(ctx, children, "align_errs",
	    &stats->rx_alignerrs, "Alignment errors");
	FUNC0(ctx, children, "len_errs",
	    &stats->rx_lenerrs, "Frames with length mismatched");
	FUNC0(ctx, children, "code_errs",
	    &stats->rx_codeerrs, "Frames with code error");
	FUNC0(ctx, children, "cs_errs",
	    &stats->rx_cserrs, "Frames with carrier sense error");
	FUNC0(ctx, children, "runts",
	    &stats->rx_runts, "Too short frames");
	FUNC1(ctx, children, "oversize",
	    &stats->rx_oversize, "Oversized frames");
	FUNC0(ctx, children, "fragments",
	    &stats->rx_fragments, "Fragmented frames");
	FUNC0(ctx, children, "jabbers",
	    &stats->rx_jabbers, "Frames with jabber error");
	FUNC0(ctx, children, "drop",
	    &stats->rx_drop, "Dropped frames");

	/* TX statistics. */
	tree = FUNC3(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
	    NULL, "TX MAC statistics");
	children = FUNC6(tree);
	FUNC1(ctx, children, "bytes",
	    &stats->tx_bytes, "Good bytes");
	FUNC1(ctx, children, "frames",
	    &stats->tx_frames, "Good frames");
	FUNC1(ctx, children, "mcast_frames",
	    &stats->tx_mcast, "Multicast frames");
	FUNC1(ctx, children, "bcast_frames",
	    &stats->tx_bcast, "Broadcast frames");
	FUNC0(ctx, children, "pause",
	    &stats->tx_pause, "Pause frames");
	FUNC0(ctx, children, "deferred",
	    &stats->tx_deferred, "Deferred frames");
	FUNC0(ctx, children, "excess_deferred",
	    &stats->tx_excess_deferred, "Excessively deferred frames");
	FUNC0(ctx, children, "single_colls",
	    &stats->tx_single_colls, "Single collisions");
	FUNC0(ctx, children, "multi_colls",
	    &stats->tx_multi_colls, "Multiple collisions");
	FUNC0(ctx, children, "late_colls",
	    &stats->tx_late_colls, "Late collisions");
	FUNC0(ctx, children, "excess_colls",
	    &stats->tx_excess_colls, "Excess collisions");
	FUNC0(ctx, children, "total_colls",
	    &stats->tx_total_colls, "Total collisions");
	FUNC0(ctx, children, "pause_honored",
	    &stats->tx_pause_honored, "Honored pause frames");
	FUNC0(ctx, children, "drop",
	    &stats->tx_drop, "Dropped frames");
	FUNC0(ctx, children, "jabbers",
	    &stats->tx_jabbers, "Frames with jabber errors");
	FUNC0(ctx, children, "crc_errs",
	    &stats->tx_crcerrs, "Frames with CRC errors");
	FUNC0(ctx, children, "control",
	    &stats->tx_control, "Control frames");
	FUNC1(ctx, children, "oversize",
	    &stats->tx_oversize, "Oversized frames");
	FUNC0(ctx, children, "undersize",
	    &stats->tx_undersize, "Undersized frames");
	FUNC0(ctx, children, "fragments",
	    &stats->tx_fragments, "Fragmented frames");
}