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
struct mge_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  MGE_IC_RX ; 
 int /*<<< orphan*/  MGE_IC_TX ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct mge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mge_sysctl_ic ; 

__attribute__((used)) static void
FUNC5(struct mge_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *children;
	struct sysctl_oid *tree;

	ctx = FUNC3(sc->dev);
	children = FUNC2(FUNC4(sc->dev));
	tree = FUNC0(ctx, children, OID_AUTO, "int_coal",
	    CTLFLAG_RD, 0, "MGE Interrupts coalescing");
	children = FUNC2(tree);

	FUNC1(ctx, children, OID_AUTO, "rx_time",
	    CTLTYPE_UINT | CTLFLAG_RW, sc, MGE_IC_RX, mge_sysctl_ic,
	    "I", "IC RX time threshold");
	FUNC1(ctx, children, OID_AUTO, "tx_time",
	    CTLTYPE_UINT | CTLFLAG_RW, sc, MGE_IC_TX, mge_sysctl_ic,
	    "I", "IC TX time threshold");
}