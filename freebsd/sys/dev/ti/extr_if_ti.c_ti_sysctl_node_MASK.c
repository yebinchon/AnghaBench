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
typedef  int /*<<< orphan*/  tname ;
struct ti_softc {int ti_dac; int ti_rx_coal_ticks; int ti_rx_max_coal_bds; int ti_tx_coal_ticks; int ti_tx_max_coal_bds; int ti_tx_buf_ratio; int ti_stat_ticks; int /*<<< orphan*/  ti_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC1 (int /*<<< orphan*/ ) ; 
 int TI_TICKS_PER_SEC ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC9(struct ti_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *child;
	char tname[32];

	ctx = FUNC4(sc->ti_dev);
	child = FUNC1(FUNC5(sc->ti_dev));

	/* Use DAC */
	sc->ti_dac = 1;
	FUNC8(tname, sizeof(tname), "dev.ti.%d.dac",
	    FUNC6(sc->ti_dev));
	FUNC2(tname, &sc->ti_dac);

	FUNC0(ctx, child, OID_AUTO, "rx_coal_ticks", CTLFLAG_RW,
	    &sc->ti_rx_coal_ticks, 0, "Receive coalcesced ticks");
	FUNC0(ctx, child, OID_AUTO, "rx_max_coal_bds", CTLFLAG_RW,
	    &sc->ti_rx_max_coal_bds, 0, "Receive max coalcesced BDs");

	FUNC0(ctx, child, OID_AUTO, "tx_coal_ticks", CTLFLAG_RW,
	    &sc->ti_tx_coal_ticks, 0, "Send coalcesced ticks");
	FUNC0(ctx, child, OID_AUTO, "tx_max_coal_bds", CTLFLAG_RW,
	    &sc->ti_tx_max_coal_bds, 0, "Send max coalcesced BDs");
	FUNC0(ctx, child, OID_AUTO, "tx_buf_ratio", CTLFLAG_RW,
	    &sc->ti_tx_buf_ratio, 0,
	    "Ratio of NIC memory devoted to TX buffer");

	FUNC0(ctx, child, OID_AUTO, "stat_ticks", CTLFLAG_RW,
	    &sc->ti_stat_ticks, 0,
	    "Number of clock ticks for statistics update interval");

	/* Pull in device tunables. */
	sc->ti_rx_coal_ticks = 170;
	FUNC7(FUNC3(sc->ti_dev),
	    FUNC6(sc->ti_dev), "rx_coal_ticks",
	    &sc->ti_rx_coal_ticks);
	sc->ti_rx_max_coal_bds = 64;
	FUNC7(FUNC3(sc->ti_dev),
	    FUNC6(sc->ti_dev), "rx_max_coal_bds",
	    &sc->ti_rx_max_coal_bds);

	sc->ti_tx_coal_ticks = TI_TICKS_PER_SEC / 500;
	FUNC7(FUNC3(sc->ti_dev),
	    FUNC6(sc->ti_dev), "tx_coal_ticks",
	    &sc->ti_tx_coal_ticks);
	sc->ti_tx_max_coal_bds = 32;
	FUNC7(FUNC3(sc->ti_dev),
	    FUNC6(sc->ti_dev), "tx_max_coal_bds",
	    &sc->ti_tx_max_coal_bds);
	sc->ti_tx_buf_ratio = 21;
	FUNC7(FUNC3(sc->ti_dev),
	    FUNC6(sc->ti_dev), "tx_buf_ratio",
	    &sc->ti_tx_buf_ratio);

	sc->ti_stat_ticks = 2 * TI_TICKS_PER_SEC;
	FUNC7(FUNC3(sc->ti_dev),
	    FUNC6(sc->ti_dev), "stat_ticks",
	    &sc->ti_stat_ticks);
}