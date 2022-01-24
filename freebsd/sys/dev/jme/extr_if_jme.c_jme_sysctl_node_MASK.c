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
struct jme_hw_stats {int /*<<< orphan*/  tx_bad_frames; int /*<<< orphan*/  tx_good_frames; int /*<<< orphan*/  rx_bad_frames; int /*<<< orphan*/  rx_desc_empty; int /*<<< orphan*/  rx_fifo_oflows; int /*<<< orphan*/  rx_mii_errs; int /*<<< orphan*/  rx_crc_errs; int /*<<< orphan*/  rx_good_frames; } ;
struct jme_softc {scalar_t__ jme_tx_coal_to; scalar_t__ jme_tx_coal_pkt; scalar_t__ jme_rx_coal_to; scalar_t__ jme_rx_coal_pkt; scalar_t__ jme_process_limit; int jme_flags; int /*<<< orphan*/  jme_dev; struct jme_hw_stats jme_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int JME_FLAG_HWMIB ; 
 void* JME_PROC_DEFAULT ; 
 scalar_t__ JME_PROC_MAX ; 
 scalar_t__ JME_PROC_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 void* PCCRX_COAL_PKT_DEFAULT ; 
 scalar_t__ PCCRX_COAL_PKT_MAX ; 
 scalar_t__ PCCRX_COAL_PKT_MIN ; 
 void* PCCRX_COAL_TO_DEFAULT ; 
 scalar_t__ PCCRX_COAL_TO_MAX ; 
 scalar_t__ PCCRX_COAL_TO_MIN ; 
 void* PCCTX_COAL_PKT_DEFAULT ; 
 scalar_t__ PCCTX_COAL_PKT_MAX ; 
 scalar_t__ PCCTX_COAL_PKT_MIN ; 
 void* PCCTX_COAL_TO_DEFAULT ; 
 scalar_t__ PCCTX_COAL_TO_MAX ; 
 scalar_t__ PCCTX_COAL_TO_MIN ; 
 struct sysctl_oid* FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC3 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,void*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  sysctl_hw_jme_proc_limit ; 
 int /*<<< orphan*/  sysctl_hw_jme_rx_coal_pkt ; 
 int /*<<< orphan*/  sysctl_hw_jme_rx_coal_to ; 
 int /*<<< orphan*/  sysctl_hw_jme_tx_coal_pkt ; 
 int /*<<< orphan*/  sysctl_hw_jme_tx_coal_to ; 

__attribute__((used)) static void
FUNC10(struct jme_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *child, *parent;
	struct sysctl_oid *tree;
	struct jme_hw_stats *stats;
	int error;

	stats = &sc->jme_stats;
	ctx = FUNC5(sc->jme_dev);
	child = FUNC3(FUNC6(sc->jme_dev));

	FUNC2(ctx, child, OID_AUTO, "tx_coal_to",
	    CTLTYPE_INT | CTLFLAG_RW, &sc->jme_tx_coal_to, 0,
	    sysctl_hw_jme_tx_coal_to, "I", "jme tx coalescing timeout");

	FUNC2(ctx, child, OID_AUTO, "tx_coal_pkt",
	    CTLTYPE_INT | CTLFLAG_RW, &sc->jme_tx_coal_pkt, 0,
	    sysctl_hw_jme_tx_coal_pkt, "I", "jme tx coalescing packet");

	FUNC2(ctx, child, OID_AUTO, "rx_coal_to",
	    CTLTYPE_INT | CTLFLAG_RW, &sc->jme_rx_coal_to, 0,
	    sysctl_hw_jme_rx_coal_to, "I", "jme rx coalescing timeout");

	FUNC2(ctx, child, OID_AUTO, "rx_coal_pkt",
	    CTLTYPE_INT | CTLFLAG_RW, &sc->jme_rx_coal_pkt, 0,
	    sysctl_hw_jme_rx_coal_pkt, "I", "jme rx coalescing packet");

	FUNC2(ctx, child, OID_AUTO, "process_limit",
	    CTLTYPE_INT | CTLFLAG_RW, &sc->jme_process_limit, 0,
	    sysctl_hw_jme_proc_limit, "I",
	    "max number of Rx events to process");

	/* Pull in device tunables. */
	sc->jme_process_limit = JME_PROC_DEFAULT;
	error = FUNC9(FUNC4(sc->jme_dev),
	    FUNC7(sc->jme_dev), "process_limit",
	    &sc->jme_process_limit);
	if (error == 0) {
		if (sc->jme_process_limit < JME_PROC_MIN ||
		    sc->jme_process_limit > JME_PROC_MAX) {
			FUNC8(sc->jme_dev,
			    "process_limit value out of range; "
			    "using default: %d\n", JME_PROC_DEFAULT);
			sc->jme_process_limit = JME_PROC_DEFAULT;
		}
	}

	sc->jme_tx_coal_to = PCCTX_COAL_TO_DEFAULT;
	error = FUNC9(FUNC4(sc->jme_dev),
	    FUNC7(sc->jme_dev), "tx_coal_to", &sc->jme_tx_coal_to);
	if (error == 0) {
		if (sc->jme_tx_coal_to < PCCTX_COAL_TO_MIN ||
		    sc->jme_tx_coal_to > PCCTX_COAL_TO_MAX) {
			FUNC8(sc->jme_dev,
			    "tx_coal_to value out of range; "
			    "using default: %d\n", PCCTX_COAL_TO_DEFAULT);
			sc->jme_tx_coal_to = PCCTX_COAL_TO_DEFAULT;
		}
	}

	sc->jme_tx_coal_pkt = PCCTX_COAL_PKT_DEFAULT;
	error = FUNC9(FUNC4(sc->jme_dev),
	    FUNC7(sc->jme_dev), "tx_coal_pkt", &sc->jme_tx_coal_to);
	if (error == 0) {
		if (sc->jme_tx_coal_pkt < PCCTX_COAL_PKT_MIN ||
		    sc->jme_tx_coal_pkt > PCCTX_COAL_PKT_MAX) {
			FUNC8(sc->jme_dev,
			    "tx_coal_pkt value out of range; "
			    "using default: %d\n", PCCTX_COAL_PKT_DEFAULT);
			sc->jme_tx_coal_pkt = PCCTX_COAL_PKT_DEFAULT;
		}
	}

	sc->jme_rx_coal_to = PCCRX_COAL_TO_DEFAULT;
	error = FUNC9(FUNC4(sc->jme_dev),
	    FUNC7(sc->jme_dev), "rx_coal_to", &sc->jme_rx_coal_to);
	if (error == 0) {
		if (sc->jme_rx_coal_to < PCCRX_COAL_TO_MIN ||
		    sc->jme_rx_coal_to > PCCRX_COAL_TO_MAX) {
			FUNC8(sc->jme_dev,
			    "rx_coal_to value out of range; "
			    "using default: %d\n", PCCRX_COAL_TO_DEFAULT);
			sc->jme_rx_coal_to = PCCRX_COAL_TO_DEFAULT;
		}
	}

	sc->jme_rx_coal_pkt = PCCRX_COAL_PKT_DEFAULT;
	error = FUNC9(FUNC4(sc->jme_dev),
	    FUNC7(sc->jme_dev), "rx_coal_pkt", &sc->jme_rx_coal_to);
	if (error == 0) {
		if (sc->jme_rx_coal_pkt < PCCRX_COAL_PKT_MIN ||
		    sc->jme_rx_coal_pkt > PCCRX_COAL_PKT_MAX) {
			FUNC8(sc->jme_dev,
			    "tx_coal_pkt value out of range; "
			    "using default: %d\n", PCCRX_COAL_PKT_DEFAULT);
			sc->jme_rx_coal_pkt = PCCRX_COAL_PKT_DEFAULT;
		}
	}

	if ((sc->jme_flags & JME_FLAG_HWMIB) == 0)
		return;

	tree = FUNC1(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
	    NULL, "JME statistics");
	parent = FUNC3(tree);

	/* Rx statistics. */
	tree = FUNC1(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
	    NULL, "Rx MAC statistics");
	child = FUNC3(tree);
	FUNC0(ctx, child, "good_frames",
	    &stats->rx_good_frames, "Good frames");
	FUNC0(ctx, child, "crc_errs",
	    &stats->rx_crc_errs, "CRC errors");
	FUNC0(ctx, child, "mii_errs",
	    &stats->rx_mii_errs, "MII errors");
	FUNC0(ctx, child, "fifo_oflows",
	    &stats->rx_fifo_oflows, "FIFO overflows");
	FUNC0(ctx, child, "desc_empty",
	    &stats->rx_desc_empty, "Descriptor empty");
	FUNC0(ctx, child, "bad_frames",
	    &stats->rx_bad_frames, "Bad frames");

	/* Tx statistics. */
	tree = FUNC1(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
	    NULL, "Tx MAC statistics");
	child = FUNC3(tree);
	FUNC0(ctx, child, "good_frames",
	    &stats->tx_good_frames, "Good frames");
	FUNC0(ctx, child, "bad_frames",
	    &stats->tx_bad_frames, "Bad frames");
}