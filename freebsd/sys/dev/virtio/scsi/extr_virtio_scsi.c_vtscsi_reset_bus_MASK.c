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
struct vtscsi_softc {int /*<<< orphan*/  vtscsi_flags; int /*<<< orphan*/  vtscsi_dev; int /*<<< orphan*/  vtscsi_sim; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_BUS_RESET ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  VTSCSI_FLAG_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct vtscsi_softc*) ; 
 int VTSCSI_REQUEST ; 
 int VTSCSI_REQUEST_VQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtscsi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ vtscsi_bus_reset_disable ; 
 int /*<<< orphan*/  FUNC3 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtscsi_softc*) ; 
 int FUNC5 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vtscsi_softc*) ; 
 scalar_t__ FUNC7 (struct vtscsi_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct vtscsi_softc *sc)
{
	int error;

	FUNC0(sc);

	if (vtscsi_bus_reset_disable != 0) {
		FUNC1(sc->vtscsi_dev, "bus reset disabled\n");
		return (0);
	}

	sc->vtscsi_flags |= VTSCSI_FLAG_RESET;

	/*
	 * vtscsi_stop() will cause the in-flight requests to be canceled.
	 * Those requests are then completed here so CAM will retry them
	 * after the reset is complete.
	 */
	FUNC6(sc);
	FUNC3(sc);

	/* Rid the virtqueues of any remaining requests. */
	FUNC4(sc);

	/*
	 * Any resource shortage that froze the SIMQ cannot persist across
	 * a bus reset so ensure it gets thawed here.
	 */
	if (FUNC7(sc, VTSCSI_REQUEST | VTSCSI_REQUEST_VQ) != 0)
		FUNC8(sc->vtscsi_sim, 0);

	error = FUNC5(sc);
	if (error) {
		FUNC1(sc->vtscsi_dev,
		    "reinitialization failed, stopping device...\n");
		FUNC6(sc);
	} else
		FUNC2(sc, AC_BUS_RESET, CAM_TARGET_WILDCARD,
		    CAM_LUN_WILDCARD);

	sc->vtscsi_flags &= ~VTSCSI_FLAG_RESET;

	return (error);
}