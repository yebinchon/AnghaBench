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
struct umass_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_unit; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_sim; } ;
struct cam_devq {int dummy; } ;

/* Variables and functions */
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  DEVNAME_SIM ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct umass_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct cam_devq*) ; 
 struct cam_devq* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  umass_cam_action ; 
 int /*<<< orphan*/  umass_cam_poll ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct umass_softc *sc)
{
	struct cam_devq *devq;		/* Per device Queue */

	/*
	 * A HBA is attached to the CAM layer.
	 *
	 * The CAM layer will then after a while start probing for devices on
	 * the bus. The number of SIMs is limited to one.
	 */

	devq = FUNC1(1 /* maximum openings */ );
	if (devq == NULL) {
		return (ENOMEM);
	}
	sc->sc_sim = FUNC0
	    (&umass_cam_action, &umass_cam_poll,
	    DEVNAME_SIM,
	    sc /* priv */ ,
	    sc->sc_unit /* unit number */ ,
	    &sc->sc_mtx /* mutex */ ,
	    1 /* maximum device openings */ ,
	    0 /* maximum tagged device openings */ ,
	    devq);

	if (sc->sc_sim == NULL) {
		FUNC2(devq);
		return (ENOMEM);
	}

	FUNC3(&sc->sc_mtx);

	if (FUNC5(sc->sc_sim, sc->sc_dev,
	    sc->sc_unit) != CAM_SUCCESS) {
		FUNC4(&sc->sc_mtx);
		return (ENOMEM);
	}
	FUNC4(&sc->sc_mtx);

	return (0);
}