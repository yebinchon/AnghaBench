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
typedef  union ccb {int dummy; } ccb ;
struct TYPE_4__ {int /*<<< orphan*/  func_code; } ;
struct ccb_setasync {struct cam_sim* callback_arg; int /*<<< orphan*/  callback; int /*<<< orphan*/  event_enable; TYPE_2__ ccb_h; } ;
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct cam_devq {int dummy; } ;
struct ahd_softc {TYPE_1__* platform_data; int /*<<< orphan*/  dev_softc; } ;
struct TYPE_3__ {int /*<<< orphan*/  eh; struct cam_path* path; struct cam_sim* sim; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  AHD_MAX_QUEUE ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_DEFAULT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XPT_SASYNC_CB ; 
 int /*<<< orphan*/  ahd_action ; 
 int /*<<< orphan*/  ahd_async ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*) ; 
 int /*<<< orphan*/  ahd_poll ; 
 int /*<<< orphan*/  ahd_shutdown ; 
 scalar_t__ FUNC4 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*) ; 
 struct cam_sim* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_sim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cam_sim*) ; 
 struct cam_devq* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  shutdown_final ; 
 int /*<<< orphan*/  FUNC13 (union ccb*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct cam_sim*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,struct cam_path*,int) ; 

int
FUNC18(struct ahd_softc *ahd)
{
	char   ahd_info[256];
	struct ccb_setasync csa;
	struct cam_devq *devq;
	struct cam_sim *sim;
	struct cam_path *path;
	int count;

	count = 0;
	devq = NULL;
	sim = NULL;
	path = NULL;

	/*
	 * Create a thread to perform all recovery.
	 */
	if (FUNC4(ahd) != 0)
		goto fail;

	FUNC1(ahd, ahd_info);
	FUNC12("%s\n", ahd_info);
	FUNC3(ahd);

	/*
	 * Create the device queue for our SIM(s).
	 */
	devq = FUNC9(AHD_MAX_QUEUE);
	if (devq == NULL)
		goto fail;

	/*
	 * Construct our SIM entry
	 */
	sim = FUNC6(ahd_action, ahd_poll, "ahd", ahd,
			    FUNC11(ahd->dev_softc),
			    &ahd->platform_data->mtx, 1, /*XXX*/256, devq);
	if (sim == NULL) {
		FUNC10(devq);
		goto fail;
	}

	if (FUNC15(sim, ahd->dev_softc, /*bus_id*/0) != CAM_SUCCESS) {
		FUNC7(sim, /*free_devq*/TRUE);
		sim = NULL;
		goto fail;
	}
	
	if (FUNC16(&path, /*periph*/NULL,
			    FUNC8(sim), CAM_TARGET_WILDCARD,
			    CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC14(FUNC8(sim));
		FUNC7(sim, /*free_devq*/TRUE);
		sim = NULL;
		goto fail;
	}
		
	FUNC17(&csa.ccb_h, path, /*priority*/5);
	csa.ccb_h.func_code = XPT_SASYNC_CB;
	csa.event_enable = AC_LOST_DEVICE;
	csa.callback = ahd_async;
	csa.callback_arg = sim;
	FUNC13((union ccb *)&csa);
	count++;

fail:
	ahd->platform_data->sim = sim;
	ahd->platform_data->path = path;
	FUNC5(ahd);
	if (count != 0) {
		/* We have to wait until after any system dumps... */
		ahd->platform_data->eh =
		    FUNC0(shutdown_final, ahd_shutdown,
					  ahd, SHUTDOWN_PRI_DEFAULT);
		FUNC2(ahd, TRUE);
	}


	return (count);
}