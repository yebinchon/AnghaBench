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
struct ste_hw_stats {int /*<<< orphan*/  tx_abort; int /*<<< orphan*/  tx_excess_defers; int /*<<< orphan*/  tx_frames_defered; int /*<<< orphan*/  tx_late_colls; int /*<<< orphan*/  tx_multi_colls; int /*<<< orphan*/  tx_single_colls; int /*<<< orphan*/  tx_carrsense_errs; int /*<<< orphan*/  tx_mcast_frames; int /*<<< orphan*/  tx_bcast_frames; int /*<<< orphan*/  tx_frames; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rx_lost_frames; int /*<<< orphan*/  rx_mcast_frames; int /*<<< orphan*/  rx_bcast_frames; int /*<<< orphan*/  rx_frames; int /*<<< orphan*/  rx_bytes; } ;
struct ste_softc {int /*<<< orphan*/  ste_int_rx_mod; int /*<<< orphan*/  ste_dev; struct ste_hw_stats ste_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  STE_IM_RX_TIMER_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC3 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC4 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct ste_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *child, *parent;
	struct sysctl_oid *tree;
	struct ste_hw_stats *stats;

	stats = &sc->ste_stats;
	ctx = FUNC6(sc->ste_dev);
	child = FUNC4(FUNC7(sc->ste_dev));

	FUNC2(ctx, child, OID_AUTO, "int_rx_mod",
	    CTLFLAG_RW, &sc->ste_int_rx_mod, 0, "ste RX interrupt moderation");
	/* Pull in device tunables. */
	sc->ste_int_rx_mod = STE_IM_RX_TIMER_DEFAULT;
	FUNC9(FUNC5(sc->ste_dev),
	    FUNC8(sc->ste_dev), "int_rx_mod", &sc->ste_int_rx_mod);

	tree = FUNC3(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
	    NULL, "STE statistics");
	parent = FUNC4(tree);

	/* Rx statistics. */
	tree = FUNC3(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
	    NULL, "Rx MAC statistics");
	child = FUNC4(tree);
	FUNC1(ctx, child, "good_octets",
	    &stats->rx_bytes, "Good octets");
	FUNC0(ctx, child, "good_frames",
	    &stats->rx_frames, "Good frames");
	FUNC0(ctx, child, "good_bcast_frames",
	    &stats->rx_bcast_frames, "Good broadcast frames");
	FUNC0(ctx, child, "good_mcast_frames",
	    &stats->rx_mcast_frames, "Good multicast frames");
	FUNC0(ctx, child, "lost_frames",
	    &stats->rx_lost_frames, "Lost frames");

	/* Tx statistics. */
	tree = FUNC3(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
	    NULL, "Tx MAC statistics");
	child = FUNC4(tree);
	FUNC1(ctx, child, "good_octets",
	    &stats->tx_bytes, "Good octets");
	FUNC0(ctx, child, "good_frames",
	    &stats->tx_frames, "Good frames");
	FUNC0(ctx, child, "good_bcast_frames",
	    &stats->tx_bcast_frames, "Good broadcast frames");
	FUNC0(ctx, child, "good_mcast_frames",
	    &stats->tx_mcast_frames, "Good multicast frames");
	FUNC0(ctx, child, "carrier_errs",
	    &stats->tx_carrsense_errs, "Carrier sense errors");
	FUNC0(ctx, child, "single_colls",
	    &stats->tx_single_colls, "Single collisions");
	FUNC0(ctx, child, "multi_colls",
	    &stats->tx_multi_colls, "Multiple collisions");
	FUNC0(ctx, child, "late_colls",
	    &stats->tx_late_colls, "Late collisions");
	FUNC0(ctx, child, "defers",
	    &stats->tx_frames_defered, "Frames with deferrals");
	FUNC0(ctx, child, "excess_defers",
	    &stats->tx_excess_defers, "Frames with excessive derferrals");
	FUNC0(ctx, child, "abort",
	    &stats->tx_abort, "Aborted frames due to Excessive collisions");
}