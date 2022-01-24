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
struct TYPE_2__ {scalar_t__ pin_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jz4780_gpio_softc*,int /*<<< orphan*/ ,unsigned int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_gpio_softc*) ; 
 unsigned int JZ4780_GPIO_PINS ; 
 int /*<<< orphan*/  FUNC2 (struct jz4780_gpio_softc*) ; 
 scalar_t__ JZ_FUNC_GPIO ; 
 int /*<<< orphan*/  JZ_GPIO_PAT0C ; 
 int /*<<< orphan*/  JZ_GPIO_PAT0S ; 
 struct jz4780_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, unsigned int value)
{
	struct jz4780_gpio_softc *sc;
	uint32_t mask;
	int retval;

	if (pin >= JZ4780_GPIO_PINS)
		return (EINVAL);

	retval = EINVAL;
	mask = (1u << pin);
	sc = FUNC3(dev);
	FUNC1(sc);
	if (sc->pins[pin].pin_func == JZ_FUNC_GPIO) {
		FUNC0(sc, value ? JZ_GPIO_PAT0S : JZ_GPIO_PAT0C, mask);
		retval = 0;
	}
	FUNC2(sc);

	return (retval);
}