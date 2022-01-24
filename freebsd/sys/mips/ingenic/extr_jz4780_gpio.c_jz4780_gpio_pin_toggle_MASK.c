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
typedef  unsigned int uint32_t ;
struct jz4780_gpio_softc {TYPE_1__* pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ pin_func; int pin_flags; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct jz4780_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_gpio_softc*,int /*<<< orphan*/ ,unsigned int) ; 
 int EINVAL ; 
 int GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC2 (struct jz4780_gpio_softc*) ; 
 unsigned int JZ4780_GPIO_PINS ; 
 int /*<<< orphan*/  FUNC3 (struct jz4780_gpio_softc*) ; 
 scalar_t__ JZ_FUNC_GPIO ; 
 int /*<<< orphan*/  JZ_GPIO_PAT0C ; 
 int /*<<< orphan*/  JZ_GPIO_PAT0S ; 
 int /*<<< orphan*/  JZ_GPIO_PIN ; 
 struct jz4780_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin)
{
	struct jz4780_gpio_softc *sc;
	uint32_t data, mask;
	int retval;

	if (pin >= JZ4780_GPIO_PINS)
		return (EINVAL);

	retval = EINVAL;
	mask = (1u << pin);
	sc = FUNC4(dev);
	FUNC2(sc);
	if (sc->pins[pin].pin_func == JZ_FUNC_GPIO &&
	    sc->pins[pin].pin_flags & GPIO_PIN_OUTPUT) {
		data = FUNC0(sc, JZ_GPIO_PIN);
		FUNC1(sc, (data & mask) ? JZ_GPIO_PAT0C : JZ_GPIO_PAT0S,
		    mask);
		retval = 0;
	}
	FUNC3(sc);

	return (retval);
}