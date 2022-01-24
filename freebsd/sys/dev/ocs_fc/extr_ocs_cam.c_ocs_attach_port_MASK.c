#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  sim_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  devq; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_10__ {int /*<<< orphan*/  ltask; int /*<<< orphan*/  ldt; struct cam_path* path; struct cam_sim* sim; TYPE_1__* ocs; } ;
typedef  TYPE_2__ ocs_fcport ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  OCS_SCSI_MAX_IOS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cam_sim* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_sim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocs_action ; 
 int /*<<< orphan*/  ocs_ldt_task ; 
 int /*<<< orphan*/  ocs_poll ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct cam_sim*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC15(ocs_t *ocs, int chan)
{

	struct cam_sim	*sim = NULL;
	struct cam_path	*path = NULL;
	uint32_t	max_io = FUNC11(ocs, OCS_SCSI_MAX_IOS);
	ocs_fcport *fcp = FUNC0(ocs, chan);

	if (NULL == (sim = FUNC3(ocs_action, ocs_poll, 
				FUNC6(ocs->dev), ocs, 
				FUNC7(ocs->dev), &ocs->sim_lock,
				max_io, max_io, ocs->devq))) {
		FUNC8(ocs->dev, "Can't allocate SIM\n");
		return 1;
	}

	FUNC9(&ocs->sim_lock);
	if (CAM_SUCCESS != FUNC13(sim, ocs->dev, chan)) {
		FUNC8(ocs->dev, "Can't register bus %d\n", 0);
		FUNC10(&ocs->sim_lock);
		FUNC4(sim, FALSE);
		return 1;
	}
	FUNC10(&ocs->sim_lock);

	if (CAM_REQ_CMP != FUNC14(&path, NULL, FUNC5(sim),
				CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD)) {
		FUNC8(ocs->dev, "Can't create path\n");
		FUNC12(FUNC5(sim));
		FUNC10(&ocs->sim_lock);
		FUNC4(sim, FALSE);
		return 1;
	}
	
	fcp->ocs = ocs;
	fcp->sim  = sim;
	fcp->path = path;

	FUNC2(&fcp->ldt, &ocs->sim_lock, 0);
	FUNC1(&fcp->ltask, 1, ocs_ldt_task, fcp);

	return 0;
}