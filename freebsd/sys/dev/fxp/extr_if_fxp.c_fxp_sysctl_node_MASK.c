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
struct fxp_hwstats {int /*<<< orphan*/  tx_tco; int /*<<< orphan*/  tx_pause; int /*<<< orphan*/  tx_total_collisions; int /*<<< orphan*/  tx_multiple_collisions; int /*<<< orphan*/  tx_single_collisions; int /*<<< orphan*/  tx_deffered; int /*<<< orphan*/  tx_lostcrs; int /*<<< orphan*/  tx_underruns; int /*<<< orphan*/  tx_latecols; int /*<<< orphan*/  tx_maxcols; int /*<<< orphan*/  tx_good; int /*<<< orphan*/  rx_tco; int /*<<< orphan*/  rx_controls; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  rx_shortframes; int /*<<< orphan*/  rx_cdt_errors; int /*<<< orphan*/  rx_overrun_errors; int /*<<< orphan*/  rx_rnr_errors; int /*<<< orphan*/  rx_alignment_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_good; } ;
struct fxp_softc {scalar_t__ revision; struct fxp_hwstats fxp_hwstats; scalar_t__ rnr; int /*<<< orphan*/  tunable_bundle_max; int /*<<< orphan*/  dev; int /*<<< orphan*/  tunable_int_delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 scalar_t__ FXP_REV_82558_A4 ; 
 scalar_t__ FXP_REV_82559_A0 ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC4 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  TUNABLE_BUNDLE_MAX ; 
 int /*<<< orphan*/  TUNABLE_INT_DELAY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_hw_fxp_bundle_max ; 
 int /*<<< orphan*/  sysctl_hw_fxp_int_delay ; 

__attribute__((used)) static void
FUNC10(struct fxp_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *child, *parent;
	struct sysctl_oid *tree;
	struct fxp_hwstats *hsp;

	ctx = FUNC6(sc->dev);
	child = FUNC4(FUNC7(sc->dev));

	FUNC3(ctx, child,
	    OID_AUTO, "int_delay", CTLTYPE_INT | CTLFLAG_RW,
	    &sc->tunable_int_delay, 0, sysctl_hw_fxp_int_delay, "I",
	    "FXP driver receive interrupt microcode bundling delay");
	FUNC3(ctx, child,
	    OID_AUTO, "bundle_max", CTLTYPE_INT | CTLFLAG_RW,
	    &sc->tunable_bundle_max, 0, sysctl_hw_fxp_bundle_max, "I",
	    "FXP driver receive interrupt microcode bundle size limit");
	FUNC1(ctx, child,OID_AUTO, "rnr", CTLFLAG_RD, &sc->rnr, 0,
	    "FXP RNR events");

	/*
	 * Pull in device tunables.
	 */
	sc->tunable_int_delay = TUNABLE_INT_DELAY;
	sc->tunable_bundle_max = TUNABLE_BUNDLE_MAX;
	(void) FUNC9(FUNC5(sc->dev),
	    FUNC8(sc->dev), "int_delay", &sc->tunable_int_delay);
	(void) FUNC9(FUNC5(sc->dev),
	    FUNC8(sc->dev), "bundle_max", &sc->tunable_bundle_max);
	sc->rnr = 0;

	hsp = &sc->fxp_hwstats;
	tree = FUNC2(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
	    NULL, "FXP statistics");
	parent = FUNC4(tree);

	/* Rx MAC statistics. */
	tree = FUNC2(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
	    NULL, "Rx MAC statistics");
	child = FUNC4(tree);
	FUNC0(ctx, child, "good_frames",
	    &hsp->rx_good, "Good frames");
	FUNC0(ctx, child, "crc_errors",
	    &hsp->rx_crc_errors, "CRC errors");
	FUNC0(ctx, child, "alignment_errors",
	    &hsp->rx_alignment_errors, "Alignment errors");
	FUNC0(ctx, child, "rnr_errors",
	    &hsp->rx_rnr_errors, "RNR errors");
	FUNC0(ctx, child, "overrun_errors",
	    &hsp->rx_overrun_errors, "Overrun errors");
	FUNC0(ctx, child, "cdt_errors",
	    &hsp->rx_cdt_errors, "Collision detect errors");
	FUNC0(ctx, child, "shortframes",
	    &hsp->rx_shortframes, "Short frame errors");
	if (sc->revision >= FXP_REV_82558_A4) {
		FUNC0(ctx, child, "pause",
		    &hsp->rx_pause, "Pause frames");
		FUNC0(ctx, child, "controls",
		    &hsp->rx_controls, "Unsupported control frames");
	}
	if (sc->revision >= FXP_REV_82559_A0)
		FUNC0(ctx, child, "tco",
		    &hsp->rx_tco, "TCO frames");

	/* Tx MAC statistics. */
	tree = FUNC2(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
	    NULL, "Tx MAC statistics");
	child = FUNC4(tree);
	FUNC0(ctx, child, "good_frames",
	    &hsp->tx_good, "Good frames");
	FUNC0(ctx, child, "maxcols",
	    &hsp->tx_maxcols, "Maximum collisions errors");
	FUNC0(ctx, child, "latecols",
	    &hsp->tx_latecols, "Late collisions errors");
	FUNC0(ctx, child, "underruns",
	    &hsp->tx_underruns, "Underrun errors");
	FUNC0(ctx, child, "lostcrs",
	    &hsp->tx_lostcrs, "Lost carrier sense");
	FUNC0(ctx, child, "deffered",
	    &hsp->tx_deffered, "Deferred");
	FUNC0(ctx, child, "single_collisions",
	    &hsp->tx_single_collisions, "Single collisions");
	FUNC0(ctx, child, "multiple_collisions",
	    &hsp->tx_multiple_collisions, "Multiple collisions");
	FUNC0(ctx, child, "total_collisions",
	    &hsp->tx_total_collisions, "Total collisions");
	if (sc->revision >= FXP_REV_82558_A4)
		FUNC0(ctx, child, "pause",
		    &hsp->tx_pause, "Pause frames");
	if (sc->revision >= FXP_REV_82559_A0)
		FUNC0(ctx, child, "tco",
		    &hsp->tx_tco, "TCO frames");
}