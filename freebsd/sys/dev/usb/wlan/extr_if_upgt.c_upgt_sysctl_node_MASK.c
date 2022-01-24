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
struct upgt_stat {int /*<<< orphan*/  st_tx_pending; int /*<<< orphan*/  st_tx_inactive; int /*<<< orphan*/  st_tx_active; } ;
struct upgt_softc {int /*<<< orphan*/  sc_dev; struct upgt_stat sc_stat; } ;
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
FUNC5(struct upgt_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *child;
	struct sysctl_oid *tree;
	struct upgt_stat *stats;

	stats = &sc->sc_stat;
	ctx = FUNC3(sc->sc_dev);
	child = FUNC1(FUNC4(sc->sc_dev));

	tree = FUNC0(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
	    NULL, "UPGT statistics");
	child = FUNC1(tree);
	FUNC2(ctx, child, "tx_active",
	    &stats->st_tx_active, "Active numbers in TX queue");
	FUNC2(ctx, child, "tx_inactive",
	    &stats->st_tx_inactive, "Inactive numbers in TX queue");
	FUNC2(ctx, child, "tx_pending",
	    &stats->st_tx_pending, "Pending numbers in TX queue");
}