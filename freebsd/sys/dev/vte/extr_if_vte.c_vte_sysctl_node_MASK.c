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
struct vte_hw_stats {int /*<<< orphan*/  tx_pause_frames; int /*<<< orphan*/  tx_late_colls; int /*<<< orphan*/  tx_underruns; int /*<<< orphan*/  tx_frames; int /*<<< orphan*/  rx_pause_frames; int /*<<< orphan*/  rx_desc_unavail; int /*<<< orphan*/  rx_fifo_full; int /*<<< orphan*/  rx_long_frames; int /*<<< orphan*/  rx_crcerrs; int /*<<< orphan*/  rx_runts; int /*<<< orphan*/  rx_mcast_frames; int /*<<< orphan*/  rx_bcast_frames; int /*<<< orphan*/  rx_frames; } ;
struct vte_softc {scalar_t__ vte_int_rx_mod; scalar_t__ vte_int_tx_mod; int /*<<< orphan*/  vte_dev; struct vte_hw_stats vte_stats; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 scalar_t__ VTE_IM_BUNDLE_MAX ; 
 scalar_t__ VTE_IM_BUNDLE_MIN ; 
 void* VTE_IM_RX_BUNDLE_DEFAULT ; 
 void* VTE_IM_TX_BUNDLE_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,void*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  sysctl_hw_vte_int_mod ; 

__attribute__((used)) static void
FUNC10(struct vte_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *child, *parent;
	struct sysctl_oid *tree;
	struct vte_hw_stats *stats;
	int error;

	stats = &sc->vte_stats;
	ctx = FUNC5(sc->vte_dev);
	child = FUNC2(FUNC6(sc->vte_dev));

	FUNC1(ctx, child, OID_AUTO, "int_rx_mod",
	    CTLTYPE_INT | CTLFLAG_RW, &sc->vte_int_rx_mod, 0,
	    sysctl_hw_vte_int_mod, "I", "vte RX interrupt moderation");
	FUNC1(ctx, child, OID_AUTO, "int_tx_mod",
	    CTLTYPE_INT | CTLFLAG_RW, &sc->vte_int_tx_mod, 0,
	    sysctl_hw_vte_int_mod, "I", "vte TX interrupt moderation");
	/* Pull in device tunables. */
	sc->vte_int_rx_mod = VTE_IM_RX_BUNDLE_DEFAULT;
	error = FUNC9(FUNC4(sc->vte_dev),
	    FUNC7(sc->vte_dev), "int_rx_mod", &sc->vte_int_rx_mod);
	if (error == 0) {
		if (sc->vte_int_rx_mod < VTE_IM_BUNDLE_MIN ||
		    sc->vte_int_rx_mod > VTE_IM_BUNDLE_MAX) {
			FUNC8(sc->vte_dev, "int_rx_mod value out of "
			    "range; using default: %d\n",
			    VTE_IM_RX_BUNDLE_DEFAULT);
			sc->vte_int_rx_mod = VTE_IM_RX_BUNDLE_DEFAULT;
		}
	}

	sc->vte_int_tx_mod = VTE_IM_TX_BUNDLE_DEFAULT;
	error = FUNC9(FUNC4(sc->vte_dev),
	    FUNC7(sc->vte_dev), "int_tx_mod", &sc->vte_int_tx_mod);
	if (error == 0) {
		if (sc->vte_int_tx_mod < VTE_IM_BUNDLE_MIN ||
		    sc->vte_int_tx_mod > VTE_IM_BUNDLE_MAX) {
			FUNC8(sc->vte_dev, "int_tx_mod value out of "
			    "range; using default: %d\n",
			    VTE_IM_TX_BUNDLE_DEFAULT);
			sc->vte_int_tx_mod = VTE_IM_TX_BUNDLE_DEFAULT;
		}
	}

	tree = FUNC0(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
	    NULL, "VTE statistics");
	parent = FUNC2(tree);

	/* RX statistics. */
	tree = FUNC0(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
	    NULL, "RX MAC statistics");
	child = FUNC2(tree);
	FUNC3(ctx, child, "good_frames",
	    &stats->rx_frames, "Good frames");
	FUNC3(ctx, child, "good_bcast_frames",
	    &stats->rx_bcast_frames, "Good broadcast frames");
	FUNC3(ctx, child, "good_mcast_frames",
	    &stats->rx_mcast_frames, "Good multicast frames");
	FUNC3(ctx, child, "runt",
	    &stats->rx_runts, "Too short frames");
	FUNC3(ctx, child, "crc_errs",
	    &stats->rx_crcerrs, "CRC errors");
	FUNC3(ctx, child, "long_frames",
	    &stats->rx_long_frames,
	    "Frames that have longer length than maximum packet length");
	FUNC3(ctx, child, "fifo_full",
	    &stats->rx_fifo_full, "FIFO full");
	FUNC3(ctx, child, "desc_unavail",
	    &stats->rx_desc_unavail, "Descriptor unavailable frames");
	FUNC3(ctx, child, "pause_frames",
	    &stats->rx_pause_frames, "Pause control frames");

	/* TX statistics. */
	tree = FUNC0(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
	    NULL, "TX MAC statistics");
	child = FUNC2(tree);
	FUNC3(ctx, child, "good_frames",
	    &stats->tx_frames, "Good frames");
	FUNC3(ctx, child, "underruns",
	    &stats->tx_underruns, "FIFO underruns");
	FUNC3(ctx, child, "late_colls",
	    &stats->tx_late_colls, "Late collisions");
	FUNC3(ctx, child, "pause_frames",
	    &stats->tx_pause_frames, "Pause control frames");
}