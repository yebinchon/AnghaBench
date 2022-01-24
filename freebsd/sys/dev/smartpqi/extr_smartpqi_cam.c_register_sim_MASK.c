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
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct TYPE_5__ {int /*<<< orphan*/  cam_lock; int /*<<< orphan*/  path; struct cam_sim* sim; int /*<<< orphan*/  sim_registered; int /*<<< orphan*/ * devq; int /*<<< orphan*/  pqi_dev; } ;
struct pqisrc_softstate {int max_io_for_scsi_ml; TYPE_2__ os_specific; } ;
struct TYPE_6__ {scalar_t__ status; int /*<<< orphan*/  func_code; } ;
struct ccb_setasync {TYPE_3__ ccb_h; struct pqisrc_softstate* callback_arg; int /*<<< orphan*/  callback; int /*<<< orphan*/  event_enable; } ;
struct cam_sim {int dummy; } ;
typedef  int cam_status ;

/* Variables and functions */
 int /*<<< orphan*/  AC_FOUND_DEVICE ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int PQI_STATUS_FAILURE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XPT_SASYNC_CB ; 
 struct cam_sim* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pqisrc_softstate*,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_sim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_sim*) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smartpqi_async ; 
 int /*<<< orphan*/  smartpqi_cam_action ; 
 int /*<<< orphan*/  smartpqi_poll ; 
 int /*<<< orphan*/  FUNC10 (union ccb*) ; 
 union ccb* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct cam_sim*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (union ccb*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

int FUNC17(struct pqisrc_softstate *softs, int card_index)
{
	int error = 0;
	int max_transactions;
	union ccb   *ccb = NULL;
	cam_status status = 0;
	struct ccb_setasync csa;
	struct cam_sim *sim;

	FUNC1("IN\n");

	max_transactions = softs->max_io_for_scsi_ml;
	softs->os_specific.devq = FUNC6(max_transactions);
	if (softs->os_specific.devq == NULL) {
		FUNC0("cam_simq_alloc failed txns = %d\n",
			max_transactions);
		return PQI_STATUS_FAILURE;
	}

	sim = FUNC3(smartpqi_cam_action, \
				smartpqi_poll, "smartpqi", softs, \
				card_index, &softs->os_specific.cam_lock, \
				1, max_transactions, softs->os_specific.devq);
	if (sim == NULL) {
		FUNC0("cam_sim_alloc failed txns = %d\n",
			max_transactions);
		FUNC7(softs->os_specific.devq);
		return PQI_STATUS_FAILURE;
	}

	softs->os_specific.sim = sim;
	FUNC8(&softs->os_specific.cam_lock);
	status = FUNC13(sim, softs->os_specific.pqi_dev, 0);
	if (status != CAM_SUCCESS) {
		FUNC0("xpt_bus_register failed status=%d\n", status);
		FUNC4(softs->os_specific.sim, FALSE);
		FUNC7(softs->os_specific.devq);
		FUNC9(&softs->os_specific.cam_lock);
		return PQI_STATUS_FAILURE;
	}

	softs->os_specific.sim_registered = TRUE;
	ccb = FUNC11();
	if (ccb == NULL) {
		FUNC0("xpt_create_path failed\n");
		return PQI_STATUS_FAILURE;
	}

	if (FUNC14(&ccb->ccb_h.path, NULL,
			FUNC5(softs->os_specific.sim),
			CAM_TARGET_WILDCARD,
			CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC0("xpt_create_path failed\n");
		FUNC15(ccb);
		FUNC12(FUNC5(softs->os_specific.sim));
		FUNC4(softs->os_specific.sim, TRUE);
		FUNC9(&softs->os_specific.cam_lock);
		return PQI_STATUS_FAILURE;
	}
	/*
 	 * Callback to set the queue depth per target which is 
	 * derived from the FW.
 	 */
	softs->os_specific.path = ccb->ccb_h.path;
	FUNC16(&csa.ccb_h, softs->os_specific.path, 5);
	csa.ccb_h.func_code = XPT_SASYNC_CB;
	csa.event_enable = AC_FOUND_DEVICE;
	csa.callback = smartpqi_async;
	csa.callback_arg = softs;
	FUNC10((union ccb *)&csa);
	if (csa.ccb_h.status != CAM_REQ_CMP) {
		FUNC0("Unable to register smartpqi_aysnc handler: %d!\n", 
			csa.ccb_h.status);
	}

	FUNC9(&softs->os_specific.cam_lock);
	FUNC2("OUT\n");
	return error;
}