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
struct TYPE_2__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int EINVAL ; 
 struct gpiobus_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIOMAXNAME ; 
 int FUNC1 (int /*<<< orphan*/ ,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, char *name)
{
	struct gpiobus_softc *sc;

	sc = FUNC0(dev);
	if (pin > sc->sc_npins)
		return (EINVAL);
	/* Did we have a name for this pin ? */
	if (sc->sc_pins[pin].name != NULL) {
		FUNC3(name, sc->sc_pins[pin].name, GPIOMAXNAME);
		return (0);
	}

	/* Return the default pin name. */
	return (FUNC1(FUNC2(dev), pin, name));
}