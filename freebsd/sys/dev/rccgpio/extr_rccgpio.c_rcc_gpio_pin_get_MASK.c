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
struct rcc_gpio_softc {scalar_t__ sc_gpio_npins; scalar_t__ sc_output; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int caps; int pin; } ;

/* Variables and functions */
 int EINVAL ; 
 int GPIO_PIN_INPUT ; 
 int /*<<< orphan*/  RCC_GPIO_GP_LVL ; 
 int /*<<< orphan*/  FUNC0 (struct rcc_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rcc_gpio_softc*) ; 
 scalar_t__ FUNC2 (struct rcc_gpio_softc*,int /*<<< orphan*/ ) ; 
 struct rcc_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* rcc_pins ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, unsigned int *val)
{
	struct rcc_gpio_softc *sc;
	uint32_t value;

	sc = FUNC3(dev);
	if (pin >= sc->sc_gpio_npins)
		return (EINVAL);

	FUNC0(sc);
	if (rcc_pins[pin].caps & GPIO_PIN_INPUT)
		value = FUNC2(sc, RCC_GPIO_GP_LVL);
	else
		value = sc->sc_output;
	FUNC1(sc);
	*val = (value & (1 << rcc_pins[pin].pin)) ? 1 : 0;

	return (0);
}