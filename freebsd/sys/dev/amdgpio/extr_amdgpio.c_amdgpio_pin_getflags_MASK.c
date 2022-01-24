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
struct TYPE_2__ {size_t gp_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpio_softc*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpio_softc*,size_t) ; 
 struct amdgpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,...) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin, uint32_t *flags)
{
	struct amdgpio_softc *sc;

	sc = FUNC3(dev);


	FUNC4("pin %d\n", pin);
	if (!FUNC2(sc, pin))
		return (EINVAL);

	FUNC0(sc);

	*flags = sc->sc_gpio_pins[pin].gp_flags;

	FUNC4("pin %d flags 0x%x\n", pin, *flags);

	FUNC1(sc);

	return (0);
}