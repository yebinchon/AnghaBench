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
struct gpio_spi_softc {int sc_cs0; int sc_cs1; int sc_cs2; int sc_cs3; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_busdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC2(struct gpio_spi_softc *sc, int cs)
{

	/* called wth locked gpiobus */
	/*
	 * Put CSx to high
	 */
	switch (cs) {
	case -1:
		/* All CS */
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_cs0, 1);
		if (sc->sc_cs1 == 0xff) break;
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_cs1, 1);
		if (sc->sc_cs2 == 0xff) break;
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_cs2, 1);
		if (sc->sc_cs3 == 0xff) break;
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_cs3, 1);
		break;
	case 0:
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_cs0, 1);
		break;
	case 1:
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_cs1, 1);
		break;
	case 2:
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_cs2, 1);
		break;
	case 3:
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_cs3, 1);
		break;
	default:
		FUNC1(sc->sc_dev, "don't have CS%d\n", cs);
	}
}