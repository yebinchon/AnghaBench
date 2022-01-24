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
struct nfe_hw_stats {int /*<<< orphan*/  tx_pause; int /*<<< orphan*/  tx_frames; int /*<<< orphan*/  tx_deferals; int /*<<< orphan*/  tx_retry_errors; int /*<<< orphan*/  tx_excess_deferals; int /*<<< orphan*/  tx_carrier_losts; int /*<<< orphan*/  tx_fifo_underuns; int /*<<< orphan*/  tx_late_cols; int /*<<< orphan*/  tx_multi_rexmits; int /*<<< orphan*/  tx_one_rexmits; int /*<<< orphan*/  tx_zero_rexmits; int /*<<< orphan*/  tx_octets; int /*<<< orphan*/  rx_drops; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  rx_octets; int /*<<< orphan*/  rx_broadcast; int /*<<< orphan*/  rx_multicast; int /*<<< orphan*/  rx_unicast; int /*<<< orphan*/  rx_len_errors; int /*<<< orphan*/  rx_fae; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_fifo_overuns; int /*<<< orphan*/  rx_jumbos; int /*<<< orphan*/  rx_runts; int /*<<< orphan*/  rx_late_cols; int /*<<< orphan*/  rx_extra_bytes; int /*<<< orphan*/  rx_frame_errors; } ;
struct nfe_softc {scalar_t__ nfe_process_limit; int nfe_flags; int /*<<< orphan*/  nfe_dev; struct nfe_hw_stats nfe_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int NFE_MIB_V1 ; 
 int NFE_MIB_V2 ; 
 int NFE_MIB_V3 ; 
 void* NFE_PROC_DEFAULT ; 
 scalar_t__ NFE_PROC_MAX ; 
 scalar_t__ NFE_PROC_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC4 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,void*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  sysctl_hw_nfe_proc_limit ; 

__attribute__((used)) static void
FUNC11(struct nfe_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *child, *parent;
	struct sysctl_oid *tree;
	struct nfe_hw_stats *stats;
	int error;

	stats = &sc->nfe_stats;
	ctx = FUNC6(sc->nfe_dev);
	child = FUNC4(FUNC7(sc->nfe_dev));
	FUNC3(ctx, child,
	    OID_AUTO, "process_limit", CTLTYPE_INT | CTLFLAG_RW,
	    &sc->nfe_process_limit, 0, sysctl_hw_nfe_proc_limit, "I",
	    "max number of Rx events to process");

	sc->nfe_process_limit = NFE_PROC_DEFAULT;
	error = FUNC10(FUNC5(sc->nfe_dev),
	    FUNC8(sc->nfe_dev), "process_limit",
	    &sc->nfe_process_limit);
	if (error == 0) {
		if (sc->nfe_process_limit < NFE_PROC_MIN ||
		    sc->nfe_process_limit > NFE_PROC_MAX) {
			FUNC9(sc->nfe_dev,
			    "process_limit value out of range; "
			    "using default: %d\n", NFE_PROC_DEFAULT);
			sc->nfe_process_limit = NFE_PROC_DEFAULT;
		}
	}

	if ((sc->nfe_flags & (NFE_MIB_V1 | NFE_MIB_V2 | NFE_MIB_V3)) == 0)
		return;

	tree = FUNC2(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
	    NULL, "NFE statistics");
	parent = FUNC4(tree);

	/* Rx statistics. */
	tree = FUNC2(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
	    NULL, "Rx MAC statistics");
	child = FUNC4(tree);

	FUNC0(ctx, child, "frame_errors",
	    &stats->rx_frame_errors, "Framing Errors");
	FUNC0(ctx, child, "extra_bytes",
	    &stats->rx_extra_bytes, "Extra Bytes");
	FUNC0(ctx, child, "late_cols",
	    &stats->rx_late_cols, "Late Collisions");
	FUNC0(ctx, child, "runts",
	    &stats->rx_runts, "Runts");
	FUNC0(ctx, child, "jumbos",
	    &stats->rx_jumbos, "Jumbos");
	FUNC0(ctx, child, "fifo_overuns",
	    &stats->rx_fifo_overuns, "FIFO Overruns");
	FUNC0(ctx, child, "crc_errors",
	    &stats->rx_crc_errors, "CRC Errors");
	FUNC0(ctx, child, "fae",
	    &stats->rx_fae, "Frame Alignment Errors");
	FUNC0(ctx, child, "len_errors",
	    &stats->rx_len_errors, "Length Errors");
	FUNC0(ctx, child, "unicast",
	    &stats->rx_unicast, "Unicast Frames");
	FUNC0(ctx, child, "multicast",
	    &stats->rx_multicast, "Multicast Frames");
	FUNC0(ctx, child, "broadcast",
	    &stats->rx_broadcast, "Broadcast Frames");
	if ((sc->nfe_flags & NFE_MIB_V2) != 0) {
		FUNC1(ctx, child, "octets",
		    &stats->rx_octets, "Octets");
		FUNC0(ctx, child, "pause",
		    &stats->rx_pause, "Pause frames");
		FUNC0(ctx, child, "drops",
		    &stats->rx_drops, "Drop frames");
	}

	/* Tx statistics. */
	tree = FUNC2(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
	    NULL, "Tx MAC statistics");
	child = FUNC4(tree);
	FUNC1(ctx, child, "octets",
	    &stats->tx_octets, "Octets");
	FUNC0(ctx, child, "zero_rexmits",
	    &stats->tx_zero_rexmits, "Zero Retransmits");
	FUNC0(ctx, child, "one_rexmits",
	    &stats->tx_one_rexmits, "One Retransmits");
	FUNC0(ctx, child, "multi_rexmits",
	    &stats->tx_multi_rexmits, "Multiple Retransmits");
	FUNC0(ctx, child, "late_cols",
	    &stats->tx_late_cols, "Late Collisions");
	FUNC0(ctx, child, "fifo_underuns",
	    &stats->tx_fifo_underuns, "FIFO Underruns");
	FUNC0(ctx, child, "carrier_losts",
	    &stats->tx_carrier_losts, "Carrier Losts");
	FUNC0(ctx, child, "excess_deferrals",
	    &stats->tx_excess_deferals, "Excess Deferrals");
	FUNC0(ctx, child, "retry_errors",
	    &stats->tx_retry_errors, "Retry Errors");
	if ((sc->nfe_flags & NFE_MIB_V2) != 0) {
		FUNC0(ctx, child, "deferrals",
		    &stats->tx_deferals, "Deferrals");
		FUNC0(ctx, child, "frames",
		    &stats->tx_frames, "Frames");
		FUNC0(ctx, child, "pause",
		    &stats->tx_pause, "Pause Frames");
	}
	if ((sc->nfe_flags & NFE_MIB_V3) != 0) {
		FUNC0(ctx, child, "unicast",
		    &stats->tx_deferals, "Unicast Frames");
		FUNC0(ctx, child, "multicast",
		    &stats->tx_frames, "Multicast Frames");
		FUNC0(ctx, child, "broadcast",
		    &stats->tx_pause, "Broadcast Frames");
	}
}