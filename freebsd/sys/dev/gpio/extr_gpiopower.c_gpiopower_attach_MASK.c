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
struct gpiopower_softc {int sc_rbmask; int /*<<< orphan*/ * sc_pin; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int RB_HALT ; 
 int RB_POWEROFF ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_LAST ; 
 struct gpiopower_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpiopower_assert ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  shutdown_final ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct gpiopower_softc *sc;
	phandle_t node;

	sc = FUNC1(dev);

	if ((node = FUNC4(dev)) == -1)
		return (ENXIO);

	FUNC6(dev, "gpios", &sc->sc_pin);
	if (sc->sc_pin == NULL) {
		FUNC2(dev, "failed to map GPIO pin\n");
		return (ENXIO);
	}

	if (FUNC5(dev, "gpio-poweroff"))
		sc->sc_rbmask = RB_HALT | RB_POWEROFF;
	else
		sc->sc_rbmask = 0;
	FUNC0(shutdown_final, gpiopower_assert, dev,
	    SHUTDOWN_PRI_LAST);
	FUNC3(sc->sc_pin, GPIO_PIN_OUTPUT);

	return (0);
}