#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct gpiobus_softc {size_t sc_npins; TYPE_1__* sc_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int mapped; } ;

/* Variables and functions */
 struct gpiobus_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,...) ; 

int
FUNC2(device_t bus, uint32_t pin)
{
	struct gpiobus_softc *sc;

	sc = FUNC0(bus);
	/* Consistency check. */
	if (pin >= sc->sc_npins) {
		FUNC1(bus,
		    "invalid pin %d, max: %d\n", pin, sc->sc_npins - 1);
		return (-1);
	}
	/* Mark pin as mapped and give warning if it's already mapped. */
	if (sc->sc_pins[pin].mapped) {
		FUNC1(bus, "warning: pin %d is already mapped\n", pin);
		return (-1);
	}
	sc->sc_pins[pin].mapped = 1;

	return (0);
}