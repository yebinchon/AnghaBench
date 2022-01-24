#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  arge_tx_cnt; int /*<<< orphan*/  arge_tx_cons; int /*<<< orphan*/  arge_tx_prod; } ;
struct TYPE_3__ {int /*<<< orphan*/  intr_ok; int /*<<< orphan*/  intr_stray2; int /*<<< orphan*/  intr_stray; int /*<<< orphan*/  tx_pkts_nosegs; int /*<<< orphan*/  tx_pkts_unaligned_len; int /*<<< orphan*/  tx_pkts_unaligned_start; int /*<<< orphan*/  tx_pkts_unaligned; int /*<<< orphan*/  tx_pkts_aligned; } ;
struct arge_softc {TYPE_2__ arge_cdata; TYPE_1__ stats; int /*<<< orphan*/  arge_debug; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct arge_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(device_t dev)
{
	struct arge_softc *sc = FUNC4(dev);
	struct sysctl_ctx_list *ctx = FUNC5(dev);
	struct sysctl_oid *tree = FUNC6(dev);

#ifdef	ARGE_DEBUG
	SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
		"debug", CTLFLAG_RW, &sc->arge_debug, 0,
		"arge interface debugging flags");
	arge_attach_intr_sysctl(dev, SYSCTL_CHILDREN(tree));
#endif

	FUNC1(ctx, FUNC2(tree), OID_AUTO,
		"tx_pkts_aligned", CTLFLAG_RW, &sc->stats.tx_pkts_aligned, 0,
		"number of TX aligned packets");

	FUNC1(ctx, FUNC2(tree), OID_AUTO,
		"tx_pkts_unaligned", CTLFLAG_RW, &sc->stats.tx_pkts_unaligned,
		0, "number of TX unaligned packets");

	FUNC1(ctx, FUNC2(tree), OID_AUTO,
		"tx_pkts_unaligned_start", CTLFLAG_RW, &sc->stats.tx_pkts_unaligned_start,
		0, "number of TX unaligned packets (start)");

	FUNC1(ctx, FUNC2(tree), OID_AUTO,
		"tx_pkts_unaligned_len", CTLFLAG_RW, &sc->stats.tx_pkts_unaligned_len,
		0, "number of TX unaligned packets (len)");

	FUNC1(ctx, FUNC2(tree), OID_AUTO,
		"tx_pkts_nosegs", CTLFLAG_RW, &sc->stats.tx_pkts_nosegs,
		0, "number of TX packets fail with no ring slots avail");

	FUNC1(ctx, FUNC2(tree), OID_AUTO,
		"intr_stray_filter", CTLFLAG_RW, &sc->stats.intr_stray,
		0, "number of stray interrupts (filter)");

	FUNC1(ctx, FUNC2(tree), OID_AUTO,
		"intr_stray_intr", CTLFLAG_RW, &sc->stats.intr_stray2,
		0, "number of stray interrupts (intr)");

	FUNC1(ctx, FUNC2(tree), OID_AUTO,
		"intr_ok", CTLFLAG_RW, &sc->stats.intr_ok,
		0, "number of OK interrupts");
#ifdef	ARGE_DEBUG
	SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "tx_prod",
	    CTLFLAG_RW, &sc->arge_cdata.arge_tx_prod, 0, "");
	SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "tx_cons",
	    CTLFLAG_RW, &sc->arge_cdata.arge_tx_cons, 0, "");
	SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "tx_cnt",
	    CTLFLAG_RW, &sc->arge_cdata.arge_tx_cnt, 0, "");
#endif
}