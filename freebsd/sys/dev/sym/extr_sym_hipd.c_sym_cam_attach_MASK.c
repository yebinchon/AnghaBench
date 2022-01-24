#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct cam_devq {int dummy; } ;
typedef  TYPE_1__* hcb_p ;
struct TYPE_7__ {struct cam_sim* sim; struct cam_path* path; int /*<<< orphan*/  device; int /*<<< orphan*/  mtx; int /*<<< orphan*/  intr; int /*<<< orphan*/  irq_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  FALSE ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_CAM ; 
 int /*<<< orphan*/  SYM_CONF_MAX_START ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SYM_SETUP_MAX_TAG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct cam_sim* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_sim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_sim*) ; 
 struct cam_devq* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  sym_action ; 
 int /*<<< orphan*/  sym_async ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sym_intr ; 
 int /*<<< orphan*/  sym_poll ; 
 scalar_t__ FUNC12 (struct cam_sim*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cam_sim*,struct cam_path*) ; 

__attribute__((used)) static int FUNC15(hcb_p np)
{
	struct cam_devq *devq = NULL;
	struct cam_sim *sim = NULL;
	struct cam_path *path = NULL;
	int err;

	/*
	 *  Establish our interrupt handler.
	 */
	err = FUNC2(np->device, np->irq_res,
			INTR_ENTROPY | INTR_MPSAFE | INTR_TYPE_CAM,
			NULL, sym_intr, np, &np->intr);
	if (err) {
		FUNC9(np->device, "bus_setup_intr() failed: %d\n",
			      err);
		goto fail;
	}

	/*
	 *  Create the device queue for our sym SIM.
	 */
	devq = FUNC6(SYM_CONF_MAX_START);
	if (!devq)
		goto fail;

	/*
	 *  Construct our SIM entry.
	 */
	sim = FUNC3(sym_action, sym_poll, "sym", np,
			FUNC8(np->device),
			&np->mtx, 1, SYM_SETUP_MAX_TAG, devq);
	if (!sim)
		goto fail;

	FUNC0();

	if (FUNC12(sim, np->device, 0) != CAM_SUCCESS)
		goto fail;
	np->sim = sim;
	sim = NULL;

	if (FUNC13(&path, NULL,
			    FUNC5(np->sim), CAM_TARGET_WILDCARD,
			    CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		goto fail;
	}
	np->path = path;

	/*
	 *  Establish our async notification handler.
	 */
	if (FUNC14(AC_LOST_DEVICE, sym_async, np->sim, path) !=
	    CAM_REQ_CMP)
		goto fail;

	/*
	 *  Start the chip now, without resetting the BUS, since
	 *  it seems that this must stay under control of CAM.
	 *  With LVD/SE capable chips and BUS in SE mode, we may
	 *  get a spurious SMBC interrupt.
	 */
	FUNC11 (np, 0);

	FUNC1();

	return 1;
fail:
	if (sim)
		FUNC4(sim, FALSE);
	if (devq)
		FUNC7(devq);

	FUNC1();

	FUNC10(np);

	return 0;
}