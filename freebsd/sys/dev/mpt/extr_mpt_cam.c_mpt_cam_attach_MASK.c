#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int GlobalCredits; } ;
struct mpt_softc {int role; int /*<<< orphan*/ * phydisk_sim; int /*<<< orphan*/  phydisk_path; int /*<<< orphan*/  dev; TYPE_2__* ioc_page2; int /*<<< orphan*/ * sim; int /*<<< orphan*/  path; TYPE_5__* tmf_req; scalar_t__ is_sas; int /*<<< orphan*/  scsi_tgt_handler_id; scalar_t__ is_fc; scalar_t__ els_cmds_allocated; TYPE_1__ ioc_facts; int /*<<< orphan*/  request_timeout_list; } ;
struct cam_devq {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  reply_handler; } ;
typedef  TYPE_3__ mpt_handler_t ;
struct TYPE_9__ {int /*<<< orphan*/  state; } ;
struct TYPE_7__ {scalar_t__ MaxPhysDisks; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int ENOMEM ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  MPT_HANDLER_REPLY ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int FUNC1 (struct mpt_softc*) ; 
 int /*<<< orphan*/  MPT_PRT_DEBUG ; 
 int MPT_ROLE_TARGET ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*) ; 
 int /*<<< orphan*/  REQ_STATE_FREE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct cam_devq* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_devq*) ; 
 int /*<<< orphan*/  fc_els_handler_id ; 
 int /*<<< orphan*/  mpt_action ; 
 scalar_t__ FUNC7 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mpt_softc*) ; 
 int /*<<< orphan*/  mpt_fc_els_reply_handler ; 
 TYPE_5__* FUNC9 (struct mpt_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct mpt_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mpt_poll ; 
 int /*<<< orphan*/  FUNC11 (struct mpt_softc*,char*) ; 
 int FUNC12 (struct mpt_softc*,int /*<<< orphan*/ ,TYPE_3__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpt_sata_pass_reply_handler ; 
 int /*<<< orphan*/  mpt_scsi_reply_handler ; 
 int /*<<< orphan*/  mpt_scsi_tgt_reply_handler ; 
 int /*<<< orphan*/  mpt_scsi_tmf_reply_handler ; 
 void* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mpt_softc*,int,int,struct cam_devq*) ; 
 scalar_t__ FUNC14 (struct mpt_softc*) ; 
 int /*<<< orphan*/  sata_pass_handler_id ; 
 int /*<<< orphan*/  scsi_io_handler_id ; 
 int /*<<< orphan*/  scsi_tmf_handler_id ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(struct mpt_softc *mpt)
{
	struct cam_devq *devq;
	mpt_handler_t	 handler;
	int		 maxq;
	int		 error;

	FUNC0(mpt);
	FUNC3(&mpt->request_timeout_list);
	maxq = (mpt->ioc_facts.GlobalCredits < FUNC1(mpt))?
	    mpt->ioc_facts.GlobalCredits : FUNC1(mpt);

	handler.reply_handler = mpt_scsi_reply_handler;
	error = FUNC12(mpt, MPT_HANDLER_REPLY, handler,
				     &scsi_io_handler_id);
	if (error != 0) {
		FUNC2(mpt);
		goto cleanup;
	}

	handler.reply_handler = mpt_scsi_tmf_reply_handler;
	error = FUNC12(mpt, MPT_HANDLER_REPLY, handler,
				     &scsi_tmf_handler_id);
	if (error != 0) {
		FUNC2(mpt);
		goto cleanup;
	}

	/*
	 * If we're fibre channel and could support target mode, we register
	 * an ELS reply handler and give it resources.
	 */
	if (mpt->is_fc && (mpt->role & MPT_ROLE_TARGET) != 0) {
		handler.reply_handler = mpt_fc_els_reply_handler;
		error = FUNC12(mpt, MPT_HANDLER_REPLY, handler,
		    &fc_els_handler_id);
		if (error != 0) {
			FUNC2(mpt);
			goto cleanup;
		}
		if (FUNC7(mpt) == FALSE) {
			error = ENOMEM;
			FUNC2(mpt);
			goto cleanup;
		}
		maxq -= mpt->els_cmds_allocated;
	}

	/*
	 * If we support target mode, we register a reply handler for it,
	 * but don't add command resources until we actually enable target
	 * mode.
	 */
	if (mpt->is_fc && (mpt->role & MPT_ROLE_TARGET) != 0) {
		handler.reply_handler = mpt_scsi_tgt_reply_handler;
		error = FUNC12(mpt, MPT_HANDLER_REPLY, handler,
		    &mpt->scsi_tgt_handler_id);
		if (error != 0) {
			FUNC2(mpt);
			goto cleanup;
		}
	}

	if (mpt->is_sas) {
		handler.reply_handler = mpt_sata_pass_reply_handler;
		error = FUNC12(mpt, MPT_HANDLER_REPLY, handler,
		    &sata_pass_handler_id);
		if (error != 0) {
			FUNC2(mpt);
			goto cleanup;
		}
	}

	/*
	 * We keep one request reserved for timeout TMF requests.
	 */
	mpt->tmf_req = FUNC9(mpt, FALSE);
	if (mpt->tmf_req == NULL) {
		FUNC11(mpt, "Unable to allocate dedicated TMF request!\n");
		error = ENOMEM;
		FUNC2(mpt);
		goto cleanup;
	}

	/*
	 * Mark the request as free even though not on the free list.
	 * There is only one TMF request allowed to be outstanding at
	 * a time and the TMF routines perform their own allocation
	 * tracking using the standard state flags.
	 */
	mpt->tmf_req->state = REQ_STATE_FREE;
	maxq--;

	/*
	 * The rest of this is CAM foo, for which we need to drop our lock
	 */
	FUNC2(mpt);

	if (FUNC14(mpt) != 0) {
		FUNC11(mpt, "Unable to spawn recovery thread!\n");
		error = ENOMEM;
		goto cleanup;
	}

	/*
	 * Create the device queue for our SIM(s).
	 */
	devq = FUNC5(maxq);
	if (devq == NULL) {
		FUNC11(mpt, "Unable to allocate CAM SIMQ!\n");
		error = ENOMEM;
		goto cleanup;
	}

	/*
	 * Construct our SIM entry.
	 */
	mpt->sim =
	    FUNC13(mpt_action, mpt_poll, "mpt", mpt, 1, maxq, devq);
	if (mpt->sim == NULL) {
		FUNC11(mpt, "Unable to allocate CAM SIM!\n");
		FUNC6(devq);
		error = ENOMEM;
		goto cleanup;
	}

	/*
	 * Register exactly this bus.
	 */
	FUNC0(mpt);
	if (FUNC15(mpt->sim, mpt->dev, 0) != CAM_SUCCESS) {
		FUNC11(mpt, "Bus registration Failed!\n");
		error = ENOMEM;
		FUNC2(mpt);
		goto cleanup;
	}

	if (FUNC16(&mpt->path, NULL, FUNC4(mpt->sim),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC11(mpt, "Unable to allocate Path!\n");
		error = ENOMEM;
		FUNC2(mpt);
		goto cleanup;
	}
	FUNC2(mpt);

	/*
	 * Only register a second bus for RAID physical
	 * devices if the controller supports RAID.
	 */
	if (mpt->ioc_page2 == NULL || mpt->ioc_page2->MaxPhysDisks == 0) {
		return (0);
	}

	/*
	 * Create a "bus" to export all hidden disks to CAM.
	 */
	mpt->phydisk_sim =
	    FUNC13(mpt_action, mpt_poll, "mpt", mpt, 1, maxq, devq);
	if (mpt->phydisk_sim == NULL) {
		FUNC11(mpt, "Unable to allocate Physical Disk CAM SIM!\n");
		error = ENOMEM;
		goto cleanup;
	}

	/*
	 * Register this bus.
	 */
	FUNC0(mpt);
	if (FUNC15(mpt->phydisk_sim, mpt->dev, 1) !=
	    CAM_SUCCESS) {
		FUNC11(mpt, "Physical Disk Bus registration Failed!\n");
		error = ENOMEM;
		FUNC2(mpt);
		goto cleanup;
	}

	if (FUNC16(&mpt->phydisk_path, NULL,
	    FUNC4(mpt->phydisk_sim),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC11(mpt, "Unable to allocate Physical Disk Path!\n");
		error = ENOMEM;
		FUNC2(mpt);
		goto cleanup;
	}
	FUNC2(mpt);
	FUNC10(mpt, MPT_PRT_DEBUG, "attached cam\n");
	return (0);

cleanup:
	FUNC8(mpt);
	return (error);
}