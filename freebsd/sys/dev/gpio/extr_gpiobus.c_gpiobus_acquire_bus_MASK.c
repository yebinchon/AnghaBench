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
struct gpiobus_softc {int /*<<< orphan*/ * sc_owner; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct gpiobus_softc*) ; 
 int GPIOBUS_DONTWAIT ; 
 int /*<<< orphan*/  FUNC1 (struct gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct gpiobus_softc* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gpiobus_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t busdev, device_t child, int how)
{
	struct gpiobus_softc *sc;

	sc = FUNC4(busdev);
	FUNC0(sc);
	FUNC1(sc);
	if (sc->sc_owner != NULL) {
		if (sc->sc_owner == child)
			FUNC6("%s: %s still owns the bus.",
			    FUNC3(busdev),
			    FUNC3(child));
		if (how == GPIOBUS_DONTWAIT) {
			FUNC2(sc);
			return (EWOULDBLOCK);
		}
		while (sc->sc_owner != NULL)
			FUNC5(sc, &sc->sc_mtx, 0, "gpiobuswait", 0);
	}
	sc->sc_owner = child;
	FUNC2(sc);

	return (0);
}