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
struct TYPE_3__ {size_t target_id; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct mpssas_target {int /*<<< orphan*/  handle; } ;
struct mpssas_softc {size_t maxtargets; struct mpssas_target* targets; struct mps_softc* sc; } ;
struct mps_softc {int /*<<< orphan*/  mps_mtx; } ;
struct mps_command {struct mpssas_target* cm_targ; union ccb* cm_complete_data; int /*<<< orphan*/  cm_complete; int /*<<< orphan*/ * cm_data; scalar_t__ cm_req; } ;
struct TYPE_4__ {int /*<<< orphan*/  MsgFlags; int /*<<< orphan*/  TaskType; int /*<<< orphan*/  DevHandle; } ;
typedef  TYPE_2__ MPI2_SCSI_TASK_MANAGE_REQUEST ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_RESRC_UNAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  MPI2_SCSITASKMGMT_MSGFLAGS_LINK_RESET ; 
 int /*<<< orphan*/  MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET ; 
 int /*<<< orphan*/  MPS_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct mps_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mps_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mps_softc*,struct mps_command*) ; 
 struct mps_command* FUNC5 (struct mps_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mps_softc*,struct mps_command*,struct mpssas_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpssas_resetdev_complete ; 
 int /*<<< orphan*/  FUNC7 (union ccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union ccb*) ; 

__attribute__((used)) static void
FUNC10(struct mpssas_softc *sassc, union ccb *ccb)
{
	MPI2_SCSI_TASK_MANAGE_REQUEST *req;
	struct mps_softc *sc;
	struct mps_command *tm;
	struct mpssas_target *targ;

	FUNC1(sassc->sc);
	FUNC8(&sassc->sc->mps_mtx, MA_OWNED);

	FUNC0(ccb->ccb_h.target_id < sassc->maxtargets,
	    ("Target %d out of bounds in XPT_RESET_DEV\n",
	     ccb->ccb_h.target_id));
	sc = sassc->sc;
	tm = FUNC5(sc);
	if (tm == NULL) {
		FUNC3(sc, MPS_ERROR,
		    "command alloc failure in mpssas_action_resetdev\n");
		FUNC7(ccb, CAM_RESRC_UNAVAIL);
		FUNC9(ccb);
		return;
	}

	targ = &sassc->targets[ccb->ccb_h.target_id];
	req = (MPI2_SCSI_TASK_MANAGE_REQUEST *)tm->cm_req;
	req->DevHandle = FUNC2(targ->handle);
	req->TaskType = MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET;

	/* SAS Hard Link Reset / SATA Link Reset */
	req->MsgFlags = MPI2_SCSITASKMGMT_MSGFLAGS_LINK_RESET;

	tm->cm_data = NULL;
	tm->cm_complete = mpssas_resetdev_complete;
	tm->cm_complete_data = ccb;
	tm->cm_targ = targ;

	FUNC6(sc, tm, targ, CAM_LUN_WILDCARD);
	FUNC4(sc, tm);
}