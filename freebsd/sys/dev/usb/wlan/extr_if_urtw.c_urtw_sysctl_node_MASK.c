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
struct urtw_stats {int /*<<< orphan*/ * txrates; } ;
struct urtw_softc {int /*<<< orphan*/  sc_dev; struct urtw_stats sc_stats; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct urtw_softc *sc)
{
#define	URTW_SYSCTL_STAT_ADD32(c, h, n, p, d)	\
	SYSCTL_ADD_UINT(c, h, OID_AUTO, n, CTLFLAG_RD, p, 0, d)
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *child, *parent;
	struct sysctl_oid *tree;
	struct urtw_stats *stats = &sc->sc_stats;

	ctx = FUNC3(sc->sc_dev);
	child = FUNC1(FUNC4(sc->sc_dev));

	tree = FUNC0(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
	    NULL, "URTW statistics");
	parent = FUNC1(tree);

	/* Tx statistics. */
	tree = FUNC0(ctx, parent, OID_AUTO, "tx", CTLFLAG_RD,
	    NULL, "Tx MAC statistics");
	child = FUNC1(tree);
	URTW_SYSCTL_STAT_ADD32(ctx, child, "1m", &stats->txrates[0],
	    "1 Mbit/s");
	URTW_SYSCTL_STAT_ADD32(ctx, child, "2m", &stats->txrates[1],
	    "2 Mbit/s");
	URTW_SYSCTL_STAT_ADD32(ctx, child, "5.5m", &stats->txrates[2],
	    "5.5 Mbit/s");
	URTW_SYSCTL_STAT_ADD32(ctx, child, "6m", &stats->txrates[4],
	    "6 Mbit/s");
	URTW_SYSCTL_STAT_ADD32(ctx, child, "9m", &stats->txrates[5],
	    "9 Mbit/s");
	URTW_SYSCTL_STAT_ADD32(ctx, child, "11m", &stats->txrates[3],
	    "11 Mbit/s");
	URTW_SYSCTL_STAT_ADD32(ctx, child, "12m", &stats->txrates[6],
	    "12 Mbit/s");
	URTW_SYSCTL_STAT_ADD32(ctx, child, "18m", &stats->txrates[7],
	    "18 Mbit/s");
	URTW_SYSCTL_STAT_ADD32(ctx, child, "24m", &stats->txrates[8],
	    "24 Mbit/s");
	URTW_SYSCTL_STAT_ADD32(ctx, child, "36m", &stats->txrates[9],
	    "36 Mbit/s");
	URTW_SYSCTL_STAT_ADD32(ctx, child, "48m", &stats->txrates[10],
	    "48 Mbit/s");
	URTW_SYSCTL_STAT_ADD32(ctx, child, "54m", &stats->txrates[11],
	    "54 Mbit/s");
#undef URTW_SYSCTL_STAT_ADD32
}