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
struct TYPE_4__ {void* func_code; } ;
struct ccb_setasync {struct cam_sim* callback_arg; void* callback; void* event_enable; TYPE_2__ ccb_h; } ;
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct cam_devq {int dummy; } ;
struct ahc_softc {int features; int flags; TYPE_1__* platform_data; int /*<<< orphan*/  dev_softc; } ;
struct TYPE_3__ {int /*<<< orphan*/  eh; struct cam_path* path_b; struct cam_sim* sim_b; struct cam_path* path; struct cam_sim* sim; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 void* AC_LOST_DEVICE ; 
 int /*<<< orphan*/  AHC_MAX_QUEUE ; 
 int AHC_PRIMARY_CHANNEL ; 
 int AHC_TWIN ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_DEFAULT ; 
 int /*<<< orphan*/  TRUE ; 
 void* XPT_SASYNC_CB ; 
 int /*<<< orphan*/  ahc_action ; 
 void* ahc_async ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*) ; 
 int /*<<< orphan*/  ahc_poll ; 
 int /*<<< orphan*/  ahc_shutdown ; 
 scalar_t__ FUNC4 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*) ; 
 struct cam_sim* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_sim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cam_sim*) ; 
 struct cam_devq* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  shutdown_final ; 
 int /*<<< orphan*/  FUNC13 (union ccb*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct cam_sim*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,struct cam_path*,int) ; 

int
FUNC18(struct ahc_softc *ahc)
{
	char   ahc_info[256];
	struct ccb_setasync csa;
	struct cam_devq *devq;
	int bus_id;
	int bus_id2;
	struct cam_sim *sim;
	struct cam_sim *sim2;
	struct cam_path *path;
	struct cam_path *path2;
	int count;

	count = 0;
	sim = NULL;
	sim2 = NULL;
	path = NULL;
	path2 = NULL;


	/*
	 * Create a thread to perform all recovery.
	 */
	if (FUNC4(ahc) != 0)
		goto fail;

	FUNC1(ahc, ahc_info);
	FUNC12("%s\n", ahc_info);
	FUNC3(ahc);

	/*
	 * Attach secondary channel first if the user has
	 * declared it the primary channel.
	 */
	if ((ahc->features & AHC_TWIN) != 0
	 && (ahc->flags & AHC_PRIMARY_CHANNEL) != 0) {
		bus_id = 1;
		bus_id2 = 0;
	} else {
		bus_id = 0;
		bus_id2 = 1;
	}

	/*
	 * Create the device queue for our SIM(s).
	 */
	devq = FUNC9(AHC_MAX_QUEUE);
	if (devq == NULL)
		goto fail;

	/*
	 * Construct our first channel SIM entry
	 */
	sim = FUNC6(ahc_action, ahc_poll, "ahc", ahc,
			    FUNC11(ahc->dev_softc),
			    &ahc->platform_data->mtx, 1, AHC_MAX_QUEUE, devq);
	if (sim == NULL) {
		FUNC10(devq);
		goto fail;
	}

	if (FUNC15(sim, ahc->dev_softc, bus_id) != CAM_SUCCESS) {
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
	csa.callback = ahc_async;
	csa.callback_arg = sim;
	FUNC13((union ccb *)&csa);
	count++;

	if (ahc->features & AHC_TWIN) {
		sim2 = FUNC6(ahc_action, ahc_poll, "ahc",
				    ahc, FUNC11(ahc->dev_softc),
				    &ahc->platform_data->mtx, 1,
				    AHC_MAX_QUEUE, devq);

		if (sim2 == NULL) {
			FUNC12("ahc_attach: Unable to attach second "
			       "bus due to resource shortage");
			goto fail;
		}
		
		if (FUNC15(sim2, ahc->dev_softc, bus_id2) !=
		    CAM_SUCCESS) {
			FUNC12("ahc_attach: Unable to attach second "
			       "bus due to resource shortage");
			/*
			 * We do not want to destroy the device queue
			 * because the first bus is using it.
			 */
			FUNC7(sim2, /*free_devq*/FALSE);
			goto fail;
		}

		if (FUNC16(&path2, /*periph*/NULL,
				    FUNC8(sim2),
				    CAM_TARGET_WILDCARD,
				    CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
			FUNC14(FUNC8(sim2));
			FUNC7(sim2, /*free_devq*/FALSE);
			sim2 = NULL;
			goto fail;
		}
		FUNC17(&csa.ccb_h, path2, /*priority*/5);
		csa.ccb_h.func_code = XPT_SASYNC_CB;
		csa.event_enable = AC_LOST_DEVICE;
		csa.callback = ahc_async;
		csa.callback_arg = sim2;
		FUNC13((union ccb *)&csa);
		count++;
	}

fail:
	if ((ahc->features & AHC_TWIN) != 0
	 && (ahc->flags & AHC_PRIMARY_CHANNEL) != 0) {
		ahc->platform_data->sim_b = sim;
		ahc->platform_data->path_b = path;
		ahc->platform_data->sim = sim2;
		ahc->platform_data->path = path2;
	} else {
		ahc->platform_data->sim = sim;
		ahc->platform_data->path = path;
		ahc->platform_data->sim_b = sim2;
		ahc->platform_data->path_b = path2;
	}
	FUNC5(ahc);

	if (count != 0) {
		/* We have to wait until after any system dumps... */
		ahc->platform_data->eh =
		    FUNC0(shutdown_final, ahc_shutdown,
					  ahc, SHUTDOWN_PRI_DEFAULT);
		FUNC2(ahc, TRUE);
	}

	return (count);
}