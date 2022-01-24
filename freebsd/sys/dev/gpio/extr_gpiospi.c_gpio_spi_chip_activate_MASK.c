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
struct gpio_spi_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_cs3; int /*<<< orphan*/  sc_busdev; int /*<<< orphan*/  sc_cs2; int /*<<< orphan*/  sc_cs1; int /*<<< orphan*/  sc_cs0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_spi_softc*) ; 

__attribute__((used)) static void
FUNC3(struct gpio_spi_softc *sc, int cs)
{

	/* called with locked gpiobus */
	switch (cs) {
	case 0:
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_cs0, 0);
		break;
	case 1:
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_cs1, 0);
		break;
	case 2:
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_cs2, 0);
		break;
	case 3:
		FUNC0(sc->sc_busdev, sc->sc_dev,
		    sc->sc_cs3, 0);
		break;
	default:
		FUNC1(sc->sc_dev, "don't have CS%d\n", cs);
	}

	FUNC2(sc);
}