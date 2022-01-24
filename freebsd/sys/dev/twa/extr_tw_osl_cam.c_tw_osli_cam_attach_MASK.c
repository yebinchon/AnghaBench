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
struct twa_softc {int /*<<< orphan*/  sim_lock; int /*<<< orphan*/ * sim; int /*<<< orphan*/  path; int /*<<< orphan*/  bus_dev; } ;
struct cam_devq {int dummy; } ;
typedef  int /*<<< orphan*/  TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 int /*<<< orphan*/  TW_OSLI_MAX_NUM_IOS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct twa_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cam_devq* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct twa_softc*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct twa_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twa_action ; 
 int /*<<< orphan*/  twa_poll ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

TW_INT32
FUNC13(struct twa_softc *sc)
{
	struct cam_devq		*devq;

	FUNC8(3, sc, "entered");

	/*
	 * Create the device queue for our SIM.
	 */
	if ((devq = FUNC3(TW_OSLI_MAX_NUM_IOS)) == NULL) {
		FUNC9(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x2100,
			"Failed to create SIM device queue",
			ENOMEM);
		return(ENOMEM);
	}

	/*
	 * Create a SIM entry.  Though we can support TW_OSLI_MAX_NUM_REQUESTS
	 * simultaneous requests, we claim to be able to handle only
	 * TW_OSLI_MAX_NUM_IOS (two less), so that we always have a request
	 * packet available to service ioctls and AENs.
	 */
	FUNC8(3, sc, "Calling cam_sim_alloc");
	sc->sim = FUNC0(twa_action, twa_poll, "twa", sc,
			FUNC5(sc->bus_dev), sc->sim_lock,
			TW_OSLI_MAX_NUM_IOS, 1, devq);
	if (sc->sim == NULL) {
		FUNC4(devq);
		FUNC9(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x2101,
			"Failed to create a SIM entry",
			ENOMEM);
		return(ENOMEM);
	}

	/*
	 * Register the bus.
	 */
	FUNC8(3, sc, "Calling xpt_bus_register");
	FUNC6(sc->sim_lock);
	if (FUNC11(sc->sim, sc->bus_dev, 0) != CAM_SUCCESS) {
		FUNC1(sc->sim, TRUE);
		sc->sim = NULL; /* so cam_detach will not try to free it */
		FUNC9(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x2102,
			"Failed to register the bus",
			ENXIO);
		FUNC7(sc->sim_lock);
		return(ENXIO);
	}

	FUNC8(3, sc, "Calling xpt_create_path");
	if (FUNC12(&sc->path, NULL,
				FUNC2(sc->sim),
				CAM_TARGET_WILDCARD,
				CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC10(FUNC2 (sc->sim));
		/* Passing TRUE to cam_sim_free will free the devq as well. */
		FUNC1(sc->sim, TRUE);
		FUNC9(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x2103,
			"Failed to create path",
			ENXIO);
		FUNC7(sc->sim_lock);
		return(ENXIO);
	}
	FUNC7(sc->sim_lock);

	FUNC8(3, sc, "exiting");
	return(0);
}