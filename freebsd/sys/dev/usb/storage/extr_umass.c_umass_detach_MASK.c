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
struct umass_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct umass_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  UDMASS_USB ; 
 int /*<<< orphan*/  UMASS_T_MAX ; 
 struct umass_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct umass_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct umass_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct umass_softc *sc = FUNC1(dev);

	FUNC0(sc, UDMASS_USB, "\n");

	/* teardown our statemachine */

	FUNC7(sc->sc_xfer, UMASS_T_MAX);

	FUNC3(&sc->sc_mtx);

	/* cancel any leftover CCB's */

	FUNC6(sc);

	FUNC5(sc);

	FUNC4(&sc->sc_mtx);

	FUNC2(&sc->sc_mtx);

	return (0);			/* success */
}