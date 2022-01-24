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
struct gpiobus_softc {int /*<<< orphan*/ * sc_owner; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpiobus_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct gpiobus_softc* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct gpiobus_softc*) ; 

__attribute__((used)) static void
FUNC7(device_t busdev, device_t child)
{
	struct gpiobus_softc *sc;

	sc = FUNC4(busdev);
	FUNC0(sc);
	FUNC1(sc);
	if (sc->sc_owner == NULL)
		FUNC5("%s: %s releasing unowned bus.",
		    FUNC3(busdev),
		    FUNC3(child));
	if (sc->sc_owner != child)
		FUNC5("%s: %s trying to release bus owned by %s",
		    FUNC3(busdev),
		    FUNC3(child),
		    FUNC3(sc->sc_owner));
	sc->sc_owner = NULL;
	FUNC6(sc);
	FUNC2(sc);
}