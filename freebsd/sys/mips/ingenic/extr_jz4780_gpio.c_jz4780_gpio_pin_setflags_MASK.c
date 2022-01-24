#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct jz4780_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_OUTPUT ; 
 int GPIO_PIN_PULLDOWN ; 
 int GPIO_PIN_PULLUP ; 
 int /*<<< orphan*/  FUNC0 (struct jz4780_gpio_softc*) ; 
 int JZ4780_GPIO_PINS ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_gpio_softc*) ; 
 struct jz4780_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct jz4780_gpio_softc*,int,int) ; 
 int FUNC4 (struct jz4780_gpio_softc*,int,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin, uint32_t flags)
{
	struct jz4780_gpio_softc *sc;
	int retval;

	if (pin >= JZ4780_GPIO_PINS)
		return (EINVAL);

	sc = FUNC2(dev);
	FUNC0(sc);
	retval = FUNC4(sc, pin,
	    flags & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT));
	if (retval == 0)
		retval = FUNC3(sc, pin,
		    flags & (GPIO_PIN_PULLDOWN | GPIO_PIN_PULLUP));
	FUNC1(sc);

	return (retval);
}