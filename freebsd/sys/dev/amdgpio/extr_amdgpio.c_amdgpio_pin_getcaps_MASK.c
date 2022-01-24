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
struct amdgpio_softc {TYPE_1__* sc_gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {size_t gp_caps; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpio_softc*,size_t) ; 
 struct amdgpio_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,...) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t pin, uint32_t *caps)
{
	struct amdgpio_softc *sc;

	sc = FUNC1(dev);

	FUNC2("pin %d\n", pin);
	if (!FUNC0(sc, pin))
		return (EINVAL);

	*caps = sc->sc_gpio_pins[pin].gp_caps;

	FUNC2("pin %d caps 0x%x\n", pin, *caps);

	return (0);
}