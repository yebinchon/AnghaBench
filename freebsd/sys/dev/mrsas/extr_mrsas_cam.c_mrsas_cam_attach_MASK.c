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
struct mrsas_softc {int max_scsi_cmds; int /*<<< orphan*/  mrsas_dev; int /*<<< orphan*/  sim_lock; int /*<<< orphan*/ * sim_1; int /*<<< orphan*/  path_1; int /*<<< orphan*/ * sim_0; int /*<<< orphan*/  path_0; int /*<<< orphan*/  ev_tq; int /*<<< orphan*/  ev_task; } ;
struct cam_devq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int ENOMEM ; 
 int ENXIO ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,struct mrsas_softc*) ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mrsas_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cam_devq* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mrsas_action ; 
 scalar_t__ mrsas_aen_handler ; 
 scalar_t__ FUNC9 (struct mrsas_softc*) ; 
 int /*<<< orphan*/  mrsas_cam_poll ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC17(struct mrsas_softc *sc)
{
	struct cam_devq *devq;
	int mrsas_cam_depth;

	mrsas_cam_depth = sc->max_scsi_cmds;

	if ((devq = FUNC4(mrsas_cam_depth)) == NULL) {
		FUNC8(sc->mrsas_dev, "Cannot allocate SIM queue\n");
		return (ENOMEM);
	}
	/*
	 * Create SIM for bus 0 and register, also create path
	 */
	sc->sim_0 = FUNC1(mrsas_action, mrsas_cam_poll, "mrsas", sc,
	    FUNC7(sc->mrsas_dev), &sc->sim_lock, mrsas_cam_depth,
	    mrsas_cam_depth, devq);
	if (sc->sim_0 == NULL) {
		FUNC5(devq);
		FUNC8(sc->mrsas_dev, "Cannot register SIM\n");
		return (ENXIO);
	}
	/* Initialize taskqueue for Event Handling */
	FUNC0(&sc->ev_task, 0, (void *)mrsas_aen_handler, sc);
	sc->ev_tq = FUNC12("mrsas_taskq", M_NOWAIT | M_ZERO,
	    taskqueue_thread_enqueue, &sc->ev_tq);

	/* Run the task queue with lowest priority */
	FUNC13(&sc->ev_tq, 1, 255, "%s taskq",
	    FUNC6(sc->mrsas_dev));
	FUNC10(&sc->sim_lock);
	if (FUNC15(sc->sim_0, sc->mrsas_dev, 0) != CAM_SUCCESS) {
		FUNC2(sc->sim_0, TRUE);	/* passing true frees the devq */
		FUNC11(&sc->sim_lock);
		return (ENXIO);
	}
	if (FUNC16(&sc->path_0, NULL, FUNC3(sc->sim_0),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC14(FUNC3(sc->sim_0));
		FUNC2(sc->sim_0, TRUE);	/* passing true will free the
						 * devq */
		FUNC11(&sc->sim_lock);
		return (ENXIO);
	}
	FUNC11(&sc->sim_lock);

	/*
	 * Create SIM for bus 1 and register, also create path
	 */
	sc->sim_1 = FUNC1(mrsas_action, mrsas_cam_poll, "mrsas", sc,
	    FUNC7(sc->mrsas_dev), &sc->sim_lock, mrsas_cam_depth,
	    mrsas_cam_depth, devq);
	if (sc->sim_1 == NULL) {
		FUNC5(devq);
		FUNC8(sc->mrsas_dev, "Cannot register SIM\n");
		return (ENXIO);
	}
	FUNC10(&sc->sim_lock);
	if (FUNC15(sc->sim_1, sc->mrsas_dev, 1) != CAM_SUCCESS) {
		FUNC2(sc->sim_1, TRUE);	/* passing true frees the devq */
		FUNC11(&sc->sim_lock);
		return (ENXIO);
	}
	if (FUNC16(&sc->path_1, NULL, FUNC3(sc->sim_1),
	    CAM_TARGET_WILDCARD,
	    CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC14(FUNC3(sc->sim_1));
		FUNC2(sc->sim_1, TRUE);
		FUNC11(&sc->sim_lock);
		return (ENXIO);
	}
	FUNC11(&sc->sim_lock);

#if (__FreeBSD_version <= 704000)
	if (FUNC9(sc)) {
		FUNC8(sc->mrsas_dev, "Error in bus scan.\n");
		return (1);
	}
#endif
	return (0);
}