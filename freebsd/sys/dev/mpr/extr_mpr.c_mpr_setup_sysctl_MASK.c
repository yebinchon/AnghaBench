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
typedef  int /*<<< orphan*/  tmpstr2 ;
typedef  int /*<<< orphan*/  tmpstr ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct mpr_softc {int /*<<< orphan*/  prp_page_alloc_fail; int /*<<< orphan*/  prp_pages_free_lowwater; int /*<<< orphan*/  prp_pages_free; int /*<<< orphan*/  use_phynum; int /*<<< orphan*/  spinup_wait_time; int /*<<< orphan*/  chain_alloc_fail; int /*<<< orphan*/  enable_ssu; int /*<<< orphan*/  max_io_pages; int /*<<< orphan*/  max_chains; int /*<<< orphan*/  chain_free_lowwater; int /*<<< orphan*/  chain_free; int /*<<< orphan*/  io_cmds_highwater; int /*<<< orphan*/  io_cmds_active; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  max_evtframes; int /*<<< orphan*/  max_replyframes; int /*<<< orphan*/  max_prireqframes; int /*<<< orphan*/  max_reqframes; int /*<<< orphan*/  msi_msgs; int /*<<< orphan*/  max_msix; int /*<<< orphan*/  disable_msix; struct sysctl_oid* sysctl_tree; struct sysctl_ctx_list sysctl_ctx; int /*<<< orphan*/  mpr_dev; } ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLFLAG_SKIP ; 
 int CTLTYPE_OPAQUE ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  DEFAULT_SPINUP_WAIT ; 
 int /*<<< orphan*/  MPR_DRIVER_VERSION ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct mpr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _hw_mpr ; 
 struct sysctl_ctx_list* FUNC7 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpr_debug_sysctl ; 
 int /*<<< orphan*/  mpr_dump_reqs ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sysctl_ctx_list*) ; 

__attribute__((used)) static void
FUNC13(struct mpr_softc *sc)
{
	struct sysctl_ctx_list	*sysctl_ctx = NULL;
	struct sysctl_oid	*sysctl_tree = NULL;
	char tmpstr[80], tmpstr2[80];

	/*
	 * Setup the sysctl variable so the user can change the debug level
	 * on the fly.
	 */
	FUNC10(tmpstr, sizeof(tmpstr), "MPR controller %d",
	    FUNC9(sc->mpr_dev));
	FUNC10(tmpstr2, sizeof(tmpstr2), "%d", FUNC9(sc->mpr_dev));

	sysctl_ctx = FUNC7(sc->mpr_dev);
	if (sysctl_ctx != NULL)
		sysctl_tree = FUNC8(sc->mpr_dev);

	if (sysctl_tree == NULL) {
		FUNC12(&sc->sysctl_ctx);
		sc->sysctl_tree = FUNC1(&sc->sysctl_ctx,
		    FUNC6(_hw_mpr), OID_AUTO, tmpstr2,
		    CTLFLAG_RD, 0, tmpstr);
		if (sc->sysctl_tree == NULL)
			return;
		sysctl_ctx = &sc->sysctl_ctx;
		sysctl_tree = sc->sysctl_tree;
	}

	FUNC2(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "debug_level", CTLTYPE_STRING | CTLFLAG_RW | CTLFLAG_MPSAFE,
	    sc, 0, mpr_debug_sysctl, "A", "mpr debug level");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "disable_msix", CTLFLAG_RD, &sc->disable_msix, 0,
	    "Disable the use of MSI-X interrupts");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "max_msix", CTLFLAG_RD, &sc->max_msix, 0,
	    "User-defined maximum number of MSIX queues");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "msix_msgs", CTLFLAG_RD, &sc->msi_msgs, 0,
	    "Negotiated number of MSIX queues");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "max_reqframes", CTLFLAG_RD, &sc->max_reqframes, 0,
	    "Total number of allocated request frames");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "max_prireqframes", CTLFLAG_RD, &sc->max_prireqframes, 0,
	    "Total number of allocated high priority request frames");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "max_replyframes", CTLFLAG_RD, &sc->max_replyframes, 0,
	    "Total number of allocated reply frames");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "max_evtframes", CTLFLAG_RD, &sc->max_evtframes, 0,
	    "Total number of event frames allocated");

	FUNC3(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "firmware_version", CTLFLAG_RW, sc->fw_version,
	    FUNC11(sc->fw_version), "firmware version");

	FUNC3(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "driver_version", CTLFLAG_RW, MPR_DRIVER_VERSION,
	    FUNC11(MPR_DRIVER_VERSION), "driver version");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "io_cmds_active", CTLFLAG_RD,
	    &sc->io_cmds_active, 0, "number of currently active commands");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "io_cmds_highwater", CTLFLAG_RD,
	    &sc->io_cmds_highwater, 0, "maximum active commands seen");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "chain_free", CTLFLAG_RD,
	    &sc->chain_free, 0, "number of free chain elements");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "chain_free_lowwater", CTLFLAG_RD,
	    &sc->chain_free_lowwater, 0,"lowest number of free chain elements");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "max_chains", CTLFLAG_RD,
	    &sc->max_chains, 0,"maximum chain frames that will be allocated");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "max_io_pages", CTLFLAG_RD,
	    &sc->max_io_pages, 0,"maximum pages to allow per I/O (if <1 use "
	    "IOCFacts)");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "enable_ssu", CTLFLAG_RW, &sc->enable_ssu, 0,
	    "enable SSU to SATA SSD/HDD at shutdown");

	FUNC4(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "chain_alloc_fail", CTLFLAG_RD,
	    &sc->chain_alloc_fail, "chain allocation failures");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "spinup_wait_time", CTLFLAG_RD,
	    &sc->spinup_wait_time, DEFAULT_SPINUP_WAIT, "seconds to wait for "
	    "spinup after SATA ID error");

	FUNC2(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "dump_reqs", CTLTYPE_OPAQUE | CTLFLAG_RD | CTLFLAG_SKIP, sc, 0,
	    mpr_dump_reqs, "I", "Dump Active Requests");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "use_phy_num", CTLFLAG_RD, &sc->use_phynum, 0,
	    "Use the phy number for enumeration");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "prp_pages_free", CTLFLAG_RD,
	    &sc->prp_pages_free, 0, "number of free PRP pages");

	FUNC0(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "prp_pages_free_lowwater", CTLFLAG_RD,
	    &sc->prp_pages_free_lowwater, 0,"lowest number of free PRP pages");

	FUNC4(sysctl_ctx, FUNC5(sysctl_tree),
	    OID_AUTO, "prp_page_alloc_fail", CTLFLAG_RD,
	    &sc->prp_page_alloc_fail, "PRP page allocation failures");
}