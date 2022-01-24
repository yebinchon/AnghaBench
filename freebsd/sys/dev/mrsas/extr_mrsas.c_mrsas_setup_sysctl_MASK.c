#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmpstr2 ;
typedef  int /*<<< orphan*/  tmpstr ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  val_rdonly; } ;
struct TYPE_5__ {int /*<<< orphan*/  val_rdonly; } ;
struct TYPE_4__ {int /*<<< orphan*/  val_rdonly; } ;
struct mrsas_softc {TYPE_3__ sge_holes; TYPE_2__ prp_count; int /*<<< orphan*/  drv_stream_detection; int /*<<< orphan*/  block_sync_cache; int /*<<< orphan*/  reset_in_progress; int /*<<< orphan*/  mrsas_fw_fault_check_delay; int /*<<< orphan*/  mrsas_io_timeout; int /*<<< orphan*/  mrsas_debug; int /*<<< orphan*/  io_cmds_highwater; TYPE_1__ fw_outstanding; int /*<<< orphan*/  reset_count; int /*<<< orphan*/  disableOnlineCtrlReset; struct sysctl_oid* sysctl_tree; struct sysctl_ctx_list sysctl_ctx; int /*<<< orphan*/  mrsas_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  MRSAS_VERSION ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _hw_mrsas ; 
 struct sysctl_ctx_list* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sysctl_ctx_list*) ; 

__attribute__((used)) static void
FUNC12(struct mrsas_softc *sc)
{
	struct sysctl_ctx_list *sysctl_ctx = NULL;
	struct sysctl_oid *sysctl_tree = NULL;
	char tmpstr[80], tmpstr2[80];

	/*
	 * Setup the sysctl variable so the user can change the debug level
	 * on the fly.
	 */
	FUNC9(tmpstr, sizeof(tmpstr), "MRSAS controller %d",
	    FUNC8(sc->mrsas_dev));
	FUNC9(tmpstr2, sizeof(tmpstr2), "%d", FUNC8(sc->mrsas_dev));

	sysctl_ctx = FUNC6(sc->mrsas_dev);
	if (sysctl_ctx != NULL)
		sysctl_tree = FUNC7(sc->mrsas_dev);

	if (sysctl_tree == NULL) {
		FUNC11(&sc->sysctl_ctx);
		sc->sysctl_tree = FUNC1(&sc->sysctl_ctx,
		    FUNC5(_hw_mrsas), OID_AUTO, tmpstr2,
		    CTLFLAG_RD, 0, tmpstr);
		if (sc->sysctl_tree == NULL)
			return;
		sysctl_ctx = &sc->sysctl_ctx;
		sysctl_tree = sc->sysctl_tree;
	}
	FUNC3(sysctl_ctx, FUNC4(sysctl_tree),
	    OID_AUTO, "disable_ocr", CTLFLAG_RW, &sc->disableOnlineCtrlReset, 0,
	    "Disable the use of OCR");

	FUNC2(sysctl_ctx, FUNC4(sysctl_tree),
	    OID_AUTO, "driver_version", CTLFLAG_RD, MRSAS_VERSION,
	    FUNC10(MRSAS_VERSION), "driver version");

	FUNC0(sysctl_ctx, FUNC4(sysctl_tree),
	    OID_AUTO, "reset_count", CTLFLAG_RD,
	    &sc->reset_count, 0, "number of ocr from start of the day");

	FUNC0(sysctl_ctx, FUNC4(sysctl_tree),
	    OID_AUTO, "fw_outstanding", CTLFLAG_RD,
	    &sc->fw_outstanding.val_rdonly, 0, "FW outstanding commands");

	FUNC0(sysctl_ctx, FUNC4(sysctl_tree),
	    OID_AUTO, "io_cmds_highwater", CTLFLAG_RD,
	    &sc->io_cmds_highwater, 0, "Max FW outstanding commands");

	FUNC3(sysctl_ctx, FUNC4(sysctl_tree),
	    OID_AUTO, "mrsas_debug", CTLFLAG_RW, &sc->mrsas_debug, 0,
	    "Driver debug level");

	FUNC3(sysctl_ctx, FUNC4(sysctl_tree),
	    OID_AUTO, "mrsas_io_timeout", CTLFLAG_RW, &sc->mrsas_io_timeout,
	    0, "Driver IO timeout value in mili-second.");

	FUNC3(sysctl_ctx, FUNC4(sysctl_tree),
	    OID_AUTO, "mrsas_fw_fault_check_delay", CTLFLAG_RW,
	    &sc->mrsas_fw_fault_check_delay,
	    0, "FW fault check thread delay in seconds. <default is 1 sec>");

	FUNC0(sysctl_ctx, FUNC4(sysctl_tree),
	    OID_AUTO, "reset_in_progress", CTLFLAG_RD,
	    &sc->reset_in_progress, 0, "ocr in progress status");

	FUNC3(sysctl_ctx, FUNC4(sysctl_tree),
	    OID_AUTO, "block_sync_cache", CTLFLAG_RW,
	    &sc->block_sync_cache, 0,
	    "Block SYNC CACHE at driver. <default: 0, send it to FW>");
	FUNC3(sysctl_ctx, FUNC4(sysctl_tree),
	    OID_AUTO, "stream detection", CTLFLAG_RW,
		&sc->drv_stream_detection, 0,
		"Disable/Enable Stream detection. <default: 1, Enable Stream Detection>");
	FUNC0(sysctl_ctx, FUNC4(sysctl_tree),
	    OID_AUTO, "prp_count", CTLFLAG_RD,
	    &sc->prp_count.val_rdonly, 0, "Number of IOs for which PRPs are built");
	FUNC0(sysctl_ctx, FUNC4(sysctl_tree),
	    OID_AUTO, "SGE holes", CTLFLAG_RD,
	    &sc->sge_holes.val_rdonly, 0, "Number of IOs with holes in SGEs");
}