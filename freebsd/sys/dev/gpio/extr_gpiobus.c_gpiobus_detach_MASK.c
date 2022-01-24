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
struct gpiobus_softc {int sc_npins; struct gpiobus_ivar* sc_pins; int /*<<< orphan*/  sc_intr_rman; int /*<<< orphan*/  sc_mtx; } ;
struct gpiobus_ivar {struct gpiobus_ivar* name; int /*<<< orphan*/  rl; } ;
typedef  struct gpiobus_ivar device_t ;

/* Variables and functions */
 struct gpiobus_ivar* FUNC0 (struct gpiobus_ivar) ; 
 int /*<<< orphan*/  FUNC1 (struct gpiobus_softc*) ; 
 struct gpiobus_softc* FUNC2 (struct gpiobus_ivar) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_TEMP ; 
 int FUNC4 (struct gpiobus_ivar) ; 
 int /*<<< orphan*/  FUNC5 (struct gpiobus_ivar,struct gpiobus_ivar) ; 
 int FUNC6 (struct gpiobus_ivar,struct gpiobus_ivar**,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct gpiobus_ivar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gpiobus_ivar*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct gpiobus_softc *sc;
	struct gpiobus_ivar *devi;
	device_t *devlist;
	int i, err, ndevs;

	sc = FUNC2(dev);
	FUNC3(FUNC9(&sc->sc_mtx),
	    ("gpiobus mutex not initialized"));
	FUNC1(sc);

	if ((err = FUNC4(dev)) != 0)
		return (err);

	if ((err = FUNC6(dev, &devlist, &ndevs)) != 0)
		return (err);
	for (i = 0; i < ndevs; i++) {
		devi = FUNC0(devlist[i]);
		FUNC8(devi);
		FUNC10(&devi->rl);
		FUNC7(devi, M_DEVBUF);
		FUNC5(dev, devlist[i]);
	}
	FUNC7(devlist, M_TEMP);
	FUNC11(&sc->sc_intr_rman);
	if (sc->sc_pins) {
		for (i = 0; i < sc->sc_npins; i++) {
			if (sc->sc_pins[i].name != NULL)
				FUNC7(sc->sc_pins[i].name, M_DEVBUF);
			sc->sc_pins[i].name = NULL;
		}
		FUNC7(sc->sc_pins, M_DEVBUF);
		sc->sc_pins = NULL;
	}

	return (0);
}