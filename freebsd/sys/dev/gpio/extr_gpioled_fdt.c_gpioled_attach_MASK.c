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
struct gpioleds_softc {size_t sc_total_leds; int /*<<< orphan*/ * sc_leds; int /*<<< orphan*/  sc_busdev; int /*<<< orphan*/  sc_dev; } ;
struct gpioled {int dummy; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct gpioleds_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gpioleds_softc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct gpioleds_softc *sc;
	phandle_t child, leds;
	int total_leds;

	if ((leds = FUNC7(dev)) == -1)
		return (ENXIO);

	sc = FUNC4(dev);
	sc->sc_dev = dev;
	sc->sc_busdev = FUNC3(dev);

	/* Traverse the 'gpio-leds' node and count leds */
	total_leds = 0;
	for (child = FUNC0(leds); child != 0; child = FUNC2(child)) {
		if (!FUNC1(child, "gpios"))
			continue;
		total_leds++;
	}

	if (total_leds) {
		sc->sc_leds =  FUNC6(sizeof(struct gpioled) * total_leds,
		    M_DEVBUF, M_WAITOK | M_ZERO);

		sc->sc_total_leds = 0;
		/* Traverse the 'gpio-leds' node and count leds */
		for (child = FUNC0(leds); child != 0; child = FUNC2(child)) {
			if (!FUNC1(child, "gpios"))
				continue;
			FUNC5(sc, child, &sc->sc_leds[sc->sc_total_leds]);
			sc->sc_total_leds++;
		}
	}

	return (0);
}