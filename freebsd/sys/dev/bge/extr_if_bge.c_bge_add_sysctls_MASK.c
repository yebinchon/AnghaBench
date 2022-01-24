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
struct sysctl_ctx_list {int dummy; } ;
struct bge_softc {int bge_forced_collapse; int bge_msi; int bge_forced_udpcsum; int /*<<< orphan*/  bge_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bge_softc*) ; 
 int /*<<< orphan*/  CTLFLAG_RDTUN ; 
 int CTLFLAG_RW ; 
 int /*<<< orphan*/  CTLFLAG_RWTUN ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bge_softc*,struct sysctl_ctx_list*,struct sysctl_oid_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct bge_softc*,struct sysctl_ctx_list*,struct sysctl_oid_list*) ; 
 int /*<<< orphan*/  bge_sysctl_ape_read ; 
 int /*<<< orphan*/  bge_sysctl_debug_info ; 
 int /*<<< orphan*/  bge_sysctl_mem_read ; 
 int /*<<< orphan*/  bge_sysctl_reg_read ; 
 struct sysctl_ctx_list* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct bge_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *children;
	int unit;

	ctx = FUNC6(sc->bge_dev);
	children = FUNC3(FUNC7(sc->bge_dev));

#ifdef BGE_REGISTER_DEBUG
	SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "debug_info",
	    CTLTYPE_INT | CTLFLAG_RW, sc, 0, bge_sysctl_debug_info, "I",
	    "Debug Information");

	SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "reg_read",
	    CTLTYPE_INT | CTLFLAG_RW, sc, 0, bge_sysctl_reg_read, "I",
	    "MAC Register Read");

	SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "ape_read",
	    CTLTYPE_INT | CTLFLAG_RW, sc, 0, bge_sysctl_ape_read, "I",
	    "APE Register Read");

	SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "mem_read",
	    CTLTYPE_INT | CTLFLAG_RW, sc, 0, bge_sysctl_mem_read, "I",
	    "Memory Read");

#endif

	unit = FUNC8(sc->bge_dev);
	/*
	 * A common design characteristic for many Broadcom client controllers
	 * is that they only support a single outstanding DMA read operation
	 * on the PCIe bus. This means that it will take twice as long to fetch
	 * a TX frame that is split into header and payload buffers as it does
	 * to fetch a single, contiguous TX frame (2 reads vs. 1 read). For
	 * these controllers, coalescing buffers to reduce the number of memory
	 * reads is effective way to get maximum performance(about 940Mbps).
	 * Without collapsing TX buffers the maximum TCP bulk transfer
	 * performance is about 850Mbps. However forcing coalescing mbufs
	 * consumes a lot of CPU cycles, so leave it off by default.
	 */
	sc->bge_forced_collapse = 0;
	FUNC1(ctx, children, OID_AUTO, "forced_collapse",
	    CTLFLAG_RWTUN, &sc->bge_forced_collapse, 0,
	    "Number of fragmented TX buffers of a frame allowed before "
	    "forced collapsing");

	sc->bge_msi = 1;
	FUNC1(ctx, children, OID_AUTO, "msi",
	    CTLFLAG_RDTUN, &sc->bge_msi, 0, "Enable MSI");

	/*
	 * It seems all Broadcom controllers have a bug that can generate UDP
	 * datagrams with checksum value 0 when TX UDP checksum offloading is
	 * enabled.  Generating UDP checksum value 0 is RFC 768 violation.
	 * Even though the probability of generating such UDP datagrams is
	 * low, I don't want to see FreeBSD boxes to inject such datagrams
	 * into network so disable UDP checksum offloading by default.  Users
	 * still override this behavior by setting a sysctl variable,
	 * dev.bge.0.forced_udpcsum.
	 */
	sc->bge_forced_udpcsum = 0;
	FUNC1(ctx, children, OID_AUTO, "forced_udpcsum",
	    CTLFLAG_RWTUN, &sc->bge_forced_udpcsum, 0,
	    "Enable UDP checksum offloading even if controller can "
	    "generate UDP checksum value 0");

	if (FUNC0(sc))
		FUNC5(sc, ctx, children);
	else
		FUNC4(sc, ctx, children);
}