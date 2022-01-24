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
struct jz4780_gpio_softc {TYPE_1__* pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {size_t pin_caps; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct jz4780_gpio_softc*) ; 
 size_t JZ4780_GPIO_PINS ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_gpio_softc*) ; 
 struct jz4780_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t pin, uint32_t *caps)
{
	struct jz4780_gpio_softc *sc;

	if (pin >= JZ4780_GPIO_PINS)
		return (EINVAL);

	sc = FUNC2(dev);
	FUNC0(sc);
	*caps = sc->pins[pin].pin_caps;
	FUNC1(sc);

	return (0);
}