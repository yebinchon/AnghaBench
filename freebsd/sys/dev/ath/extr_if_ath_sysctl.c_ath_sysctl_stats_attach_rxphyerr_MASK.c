#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ast_rx_phy; } ;
struct ath_softc {TYPE_1__ sc_stats; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  sn ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC6(struct ath_softc *sc, struct sysctl_oid_list *parent)
{
	struct sysctl_ctx_list *ctx = FUNC3(sc->sc_dev);
	struct sysctl_oid *tree = FUNC4(sc->sc_dev);
	struct sysctl_oid_list *child = FUNC2(tree);
	int i;
	char sn[8];

	tree = FUNC0(ctx, parent, OID_AUTO, "rx_phy_err", CTLFLAG_RD, NULL, "Per-code RX PHY Errors");
	child = FUNC2(tree);
	for (i = 0; i < 64; i++) {
		FUNC5(sn, sizeof(sn), "%d", i);
		FUNC1(ctx, child, OID_AUTO, sn, CTLFLAG_RD, &sc->sc_stats.ast_rx_phy[i], 0, "");
	}
}