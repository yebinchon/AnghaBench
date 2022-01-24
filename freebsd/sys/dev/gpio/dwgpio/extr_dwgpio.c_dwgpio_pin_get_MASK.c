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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwgpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwgpio_softc*) ; 
 int FUNC3 (struct dwgpio_softc*,int /*<<< orphan*/ ) ; 
 struct dwgpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin, unsigned int *val)
{
	struct dwgpio_softc *sc;
	int i;

	sc = FUNC4(dev);
	for (i = 0; i < sc->gpio_npins; i++) {
		if (sc->gpio_pins[i].gp_pin == pin)
			break;
	}

	if (i >= sc->gpio_npins)
		return (EINVAL);

	FUNC1(sc);
	*val = (FUNC3(sc, FUNC0(sc->port)) & (1 << i)) ? 1 : 0;
	FUNC2(sc);

	return (0);
}