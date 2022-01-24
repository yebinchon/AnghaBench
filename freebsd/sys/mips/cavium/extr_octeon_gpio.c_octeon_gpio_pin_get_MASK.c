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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct octeon_gpio_softc {int gpio_npins; TYPE_1__* gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int gp_pin; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_gpio_softc*) ; 
 int FUNC2 () ; 
 struct octeon_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, unsigned int *val)
{
	struct octeon_gpio_softc *sc = FUNC3(dev);
	int i;
	uint64_t state;

	for (i = 0; i < sc->gpio_npins; i++) {
		if (sc->gpio_pins[i].gp_pin == pin)
			break;
	}

	if (i >= sc->gpio_npins)
		return (EINVAL);

	FUNC0(sc);
	state = FUNC2();
	*val = (state & (1 << pin)) ? 1 : 0;
	FUNC1(sc);

	return (0);
}