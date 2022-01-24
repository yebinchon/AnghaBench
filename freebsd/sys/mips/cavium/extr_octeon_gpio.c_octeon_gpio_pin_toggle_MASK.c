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
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct octeon_gpio_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin)
{
	int i;
	uint64_t state;
	struct octeon_gpio_softc *sc = FUNC5(dev);

	for (i = 0; i < sc->gpio_npins; i++) {
		if (sc->gpio_pins[i].gp_pin == pin)
			break;
	}

	if (i >= sc->gpio_npins)
		return (EINVAL);

	FUNC0(sc);
	/*
	 * XXX: Need to check if read returns actual state of output 
	 * pins or we need to keep this information by ourself
	 */
	state = FUNC3();
	if (state & (1 << pin))
		FUNC2(1 << pin);
	else
		FUNC4(1 << pin);
	FUNC1(sc);

	return (0);
}