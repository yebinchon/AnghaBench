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
typedef  int uint32_t ;
struct ar5315_gpio_softc {int gpio_npins; TYPE_1__* gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int gp_pin; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ar5315_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct ar5315_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t pin, unsigned int *val)
{
	struct ar5315_gpio_softc *sc = FUNC2(dev);
	int i;

	for (i = 0; i < sc->gpio_npins; i++) {
		if (sc->gpio_pins[i].gp_pin == pin)
			break;
	}

	if (i >= sc->gpio_npins)
		return (EINVAL);

	*val = (FUNC0(sc, FUNC1()) & (1 << pin)) ? 1 : 0;

	return (0);
}