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
struct TYPE_2__ {int gp_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpio_softc*) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpio_softc*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 unsigned int GPIO_PIN_HIGH ; 
 unsigned int GPIO_PIN_LOW ; 
 int GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  OUTPUT_VALUE_OFF ; 
 int /*<<< orphan*/  PIN_STS_OFF ; 
 size_t FUNC4 (struct amdgpio_softc*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpio_softc*,size_t) ; 
 struct amdgpio_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,...) ; 

__attribute__((used)) static int
FUNC8(device_t dev, uint32_t pin, unsigned int *value)
{
	struct amdgpio_softc *sc;
	uint32_t reg, val;

	sc = FUNC6(dev);

	FUNC7("pin %d\n", pin);
	if (!FUNC5(sc, pin))
		return (EINVAL);

	*value = 0;

	FUNC0(sc);

	reg = FUNC1(pin);
	val = FUNC4(sc, reg);

	if ((sc->sc_gpio_pins[pin].gp_flags & GPIO_PIN_OUTPUT) != 0) {
		if (val & FUNC3(OUTPUT_VALUE_OFF))
			*value = GPIO_PIN_HIGH;
		else
			*value = GPIO_PIN_LOW;
	} else {
		if (val & FUNC3(PIN_STS_OFF))
			*value = GPIO_PIN_HIGH;
		else
			*value = GPIO_PIN_LOW;
	}

	FUNC7("pin %d value 0x%x\n", pin, *value);

	FUNC2(sc);

	return (0);
}