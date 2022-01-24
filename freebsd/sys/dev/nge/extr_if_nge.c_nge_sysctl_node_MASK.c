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
struct nge_stats {int /*<<< orphan*/  tx_seq_errs; int /*<<< orphan*/  tx_pause; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  rx_unctl_frames; int /*<<< orphan*/  rx_len_errs; int /*<<< orphan*/  rx_pkts_jumbos; int /*<<< orphan*/  rx_sym_errs; int /*<<< orphan*/  rx_align_errs; int /*<<< orphan*/  rx_fifo_oflows; int /*<<< orphan*/  rx_crc_errs; int /*<<< orphan*/  rx_pkts_errs; } ;
struct nge_softc {int nge_int_holdoff; struct nge_stats nge_stats; int /*<<< orphan*/  nge_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int NGE_INT_HOLDOFF_DEFAULT ; 
 int NGE_INT_HOLDOFF_MAX ; 
 int NGE_INT_HOLDOFF_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC3 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  sysctl_hw_nge_int_holdoff ; 

__attribute__((used)) static void
FUNC10(struct nge_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *child, *parent;
	struct sysctl_oid *tree;
	struct nge_stats *stats;
	int error;

	ctx = FUNC5(sc->nge_dev);
	child = FUNC3(FUNC6(sc->nge_dev));
	FUNC2(ctx, child, OID_AUTO, "int_holdoff",
	    CTLTYPE_INT | CTLFLAG_RW, &sc->nge_int_holdoff, 0,
	    sysctl_hw_nge_int_holdoff, "I", "NGE interrupt moderation");
	/* Pull in device tunables. */
	sc->nge_int_holdoff = NGE_INT_HOLDOFF_DEFAULT;
	error = FUNC9(FUNC4(sc->nge_dev),
	    FUNC7(sc->nge_dev), "int_holdoff", &sc->nge_int_holdoff);
	if (error == 0) {
		if (sc->nge_int_holdoff < NGE_INT_HOLDOFF_MIN ||
		    sc->nge_int_holdoff > NGE_INT_HOLDOFF_MAX ) {
			FUNC8(sc->nge_dev,
			    "int_holdoff value out of range; "
			    "using default: %d(%d us)\n",
			    NGE_INT_HOLDOFF_DEFAULT,
			    NGE_INT_HOLDOFF_DEFAULT * 100);
			sc->nge_int_holdoff = NGE_INT_HOLDOFF_DEFAULT;
		}
	}

	stats = &sc->nge_stats;
	tree = FUNC1(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
	    NULL, "NGE statistics");
	parent = FUNC3(tree);

	/* Rx statistics. */
	tree = FUNC1(ctx, parent, OID_AUTO, "rx", CTLFLAG_RD,
	    NULL, "Rx MAC statistics");
	child = FUNC3(tree);
	FUNC0(ctx, child, "pkts_errs",
	    &stats->rx_pkts_errs,
	    "Packet errors including both wire errors and FIFO overruns");
	FUNC0(ctx, child, "crc_errs",
	    &stats->rx_crc_errs, "CRC errors");
	FUNC0(ctx, child, "fifo_oflows",
	    &stats->rx_fifo_oflows, "FIFO overflows");
	FUNC0(ctx, child, "align_errs",
	    &stats->rx_align_errs, "Frame alignment errors");
	FUNC0(ctx, child, "sym_errs",
	    &stats->rx_sym_errs, "One or more symbol errors");
	FUNC0(ctx, child, "pkts_jumbos",
	    &stats->rx_pkts_jumbos,
	    "Packets received with length greater than 1518 bytes");
	FUNC0(ctx, child, "len_errs",
	    &stats->rx_len_errs, "In Range Length errors");
	FUNC0(ctx, child, "unctl_frames",
	    &stats->rx_unctl_frames, "Control frames with unsupported opcode");
	FUNC0(ctx, child, "pause",
	    &stats->rx_pause, "Pause frames");

	/* Tx statistics. */
	tree = FUNC1(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
	    NULL, "Tx MAC statistics");
	child = FUNC3(tree);
	FUNC0(ctx, child, "pause",
	    &stats->tx_pause, "Pause frames");
	FUNC0(ctx, child, "seq_errs",
	    &stats->tx_seq_errs,
	    "Loss of collision heartbeat during transmission");
}