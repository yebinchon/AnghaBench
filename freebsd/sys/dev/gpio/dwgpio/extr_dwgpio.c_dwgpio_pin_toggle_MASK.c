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
typedef  scalar_t__ uint32_t ;
struct dwgpio_softc {int gpio_npins; int /*<<< orphan*/  port; TYPE_1__* gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ gp_pin; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dwgpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwgpio_softc*) ; 
 int FUNC3 (struct dwgpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dwgpio_softc*,int /*<<< orphan*/ ,int) ; 
 struct dwgpio_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin)
{
	struct dwgpio_softc *sc;
	int reg;
	int i;

	sc = FUNC5(dev);
	for (i = 0; i < sc->gpio_npins; i++) {
		if (sc->gpio_pins[i].gp_pin == pin)
			break;
	}

	if (i >= sc->gpio_npins)
		return (EINVAL);

	FUNC0(sc);
	reg = FUNC3(sc, FUNC1(sc->port));
	if (reg & (1 << i))
		reg &= ~(1 << i);
	else
		reg |= (1 << i);
	FUNC4(sc, FUNC1(sc->port), reg);
	FUNC2(sc);

	return (0);
}