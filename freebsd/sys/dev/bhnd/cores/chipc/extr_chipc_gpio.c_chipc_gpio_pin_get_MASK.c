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
typedef  int /*<<< orphan*/  uint32_t ;
struct chipc_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chipc_gpio_softc*) ; 
#define  CC_GPIO_PIN_INPUT 130 
#define  CC_GPIO_PIN_OUTPUT 129 
#define  CC_GPIO_PIN_TRISTATE 128 
 int FUNC1 (struct chipc_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct chipc_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GPIOIN ; 
 int /*<<< orphan*/  GPIOOUT ; 
 int /*<<< orphan*/  GPIO_PIN_HIGH ; 
 int /*<<< orphan*/  GPIO_PIN_LOW ; 
 int FUNC4 (struct chipc_gpio_softc*,int /*<<< orphan*/ ) ; 
 struct chipc_gpio_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin_num, uint32_t *pin_value)
{
	struct chipc_gpio_softc	*sc;
	bool			 pin_high;

	if (!FUNC3(pin_num))
		return (EINVAL);

	sc = FUNC5(dev);
	pin_high = false;

	FUNC0(sc);

	switch (FUNC4(sc, pin_num)) {
	case CC_GPIO_PIN_INPUT:
		pin_high = FUNC1(sc, pin_num, GPIOIN);
		break;

	case CC_GPIO_PIN_OUTPUT:
		pin_high = FUNC1(sc, pin_num, GPIOOUT);
		break;

	case CC_GPIO_PIN_TRISTATE:
		pin_high = false;
		break;
	}

	FUNC2(sc);

	*pin_value = pin_high ? GPIO_PIN_HIGH : GPIO_PIN_LOW;

	return (0);
}