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
struct chipc_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chipc_gpio_softc*) ; 
#define  CC_GPIO_PIN_INPUT 130 
#define  CC_GPIO_PIN_OUTPUT 129 
#define  CC_GPIO_PIN_TRISTATE 128 
 int /*<<< orphan*/  FUNC1 (struct chipc_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct chipc_gpio_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct chipc_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GPIOPD ; 
 int /*<<< orphan*/  GPIOPU ; 
 int /*<<< orphan*/  GPIOTIMEROUTMASK ; 
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_OUTPUT ; 
 int GPIO_PIN_PULLDOWN ; 
 int GPIO_PIN_PULLUP ; 
 int GPIO_PIN_PULSATE ; 
 int GPIO_PIN_TRISTATE ; 
 int /*<<< orphan*/  NO_DCTIMER ; 
 int /*<<< orphan*/  NO_PULLUPDOWN ; 
 int FUNC5 (struct chipc_gpio_softc*,int) ; 
 struct chipc_gpio_softc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, uint32_t pin_num, uint32_t *flags)
{
	struct chipc_gpio_softc *sc = FUNC6(dev);

	if (!FUNC4(pin_num))
		return (EINVAL);

	FUNC0(sc);

	switch (FUNC5(sc, pin_num)) {
	case CC_GPIO_PIN_INPUT:
		*flags = GPIO_PIN_INPUT;

		if (!FUNC1(sc, NO_PULLUPDOWN)) {
			if (FUNC2(sc, pin_num, GPIOPU)) {
				*flags |= GPIO_PIN_PULLUP;
			} else if (FUNC2(sc, pin_num, GPIOPD)) {
				*flags |= GPIO_PIN_PULLDOWN;
			}
		}
		break;

	case CC_GPIO_PIN_OUTPUT:
		*flags = GPIO_PIN_OUTPUT;

		if (!FUNC1(sc, NO_DCTIMER)) {
			if (FUNC2(sc, pin_num, GPIOTIMEROUTMASK))
				*flags |= GPIO_PIN_PULSATE;
		}

		break;

	case CC_GPIO_PIN_TRISTATE:
		*flags = GPIO_PIN_TRISTATE|GPIO_PIN_OUTPUT;
		break;
	}

	FUNC3(sc);

	return (0);
}