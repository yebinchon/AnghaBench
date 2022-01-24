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
struct tws_softc {int /*<<< orphan*/  sim_lock; int /*<<< orphan*/ * sim; int /*<<< orphan*/  path; int /*<<< orphan*/  tws_dev; } ;
struct cam_devq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_SIMQ_ALLOC ; 
 int /*<<< orphan*/  CAM_SIM_ALLOC ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  TRUE ; 
 int TWS_RESERVED_REQS ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int,...) ; 
 int /*<<< orphan*/  TWS_XPT_BUS_REGISTER ; 
 int /*<<< orphan*/  TWS_XPT_CREATE_PATH ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct tws_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cam_devq* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tws_action ; 
 int tws_cam_depth ; 
 int /*<<< orphan*/  FUNC9 (struct tws_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tws_poll ; 
 int tws_queue_depth ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC13(struct tws_softc *sc)
{
    struct cam_devq *devq;

    FUNC0(sc, "entry", 0, sc);
    /* Create a device queue for sim */

    /* 
     * if the user sets cam depth to less than 1 
     * cam may get confused 
     */
    if ( tws_cam_depth < 1 )
        tws_cam_depth = 1;
    if ( tws_cam_depth > (tws_queue_depth - TWS_RESERVED_REQS)  )
        tws_cam_depth = tws_queue_depth - TWS_RESERVED_REQS;

    FUNC0(sc, "depths,ctlr,cam", tws_queue_depth, tws_cam_depth);

    if ((devq = FUNC4(tws_cam_depth)) == NULL) {
        FUNC9(sc, CAM_SIMQ_ALLOC);
        return(ENOMEM);
    }

   /*
    * Create a SIM entry.  Though we can support tws_cam_depth
    * simultaneous requests, we claim to be able to handle only
    * (tws_cam_depth), so that we always have reserved  requests
    * packet available to service ioctls and internal commands.
    */
    sc->sim = FUNC1(tws_action, tws_poll, "tws", sc,
                      FUNC6(sc->tws_dev), 
                      &sc->sim_lock,
                      tws_cam_depth, 1, devq);
                      /* 1, 1, devq); */
    if (sc->sim == NULL) {
        FUNC5(devq);
        FUNC9(sc, CAM_SIM_ALLOC);
    }
    /* Register the bus. */
    FUNC7(&sc->sim_lock);
    if (FUNC11(sc->sim, 
                         sc->tws_dev, 
                         0) != CAM_SUCCESS) {
        FUNC2(sc->sim, TRUE); /* passing true will free the devq */
        sc->sim = NULL; /* so cam_detach will not try to free it */
        FUNC8(&sc->sim_lock);
        FUNC9(sc, TWS_XPT_BUS_REGISTER);
        return(ENXIO);
    }
    if (FUNC12(&sc->path, NULL, FUNC3(sc->sim),
                         CAM_TARGET_WILDCARD,
                         CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
        FUNC10(FUNC3(sc->sim));
        /* Passing TRUE to cam_sim_free will free the devq as well. */
        FUNC2(sc->sim, TRUE);
        FUNC9(sc, TWS_XPT_CREATE_PATH);
        FUNC8(&sc->sim_lock);
        return(ENXIO);
    }
    FUNC8(&sc->sim_lock);

    return(0);
}