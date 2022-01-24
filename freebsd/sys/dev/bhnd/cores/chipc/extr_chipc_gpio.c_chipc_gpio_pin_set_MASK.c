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
#define  CC_GPIO_PIN_INPUT 132 
#define  CC_GPIO_PIN_OUTPUT 131 
#define  CC_GPIO_PIN_TRISTATE 130 
 int /*<<< orphan*/  FUNC1 (struct chipc_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct chipc_gpio_softc*,int,int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  GPIOOUT ; 
#define  GPIO_PIN_HIGH 129 
#define  GPIO_PIN_LOW 128 
 int FUNC4 (struct chipc_gpio_softc*,int) ; 
 struct chipc_gpio_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin_num, uint32_t pin_value)
{
	struct chipc_gpio_softc	*sc;
	bool			 pin_high;
	int			 error;

	sc = FUNC5(dev);
	error = 0;

	if (!FUNC2(pin_num))
		return (EINVAL);

	switch (pin_value) {
	case GPIO_PIN_HIGH:
		pin_high = true;
		break;
	case GPIO_PIN_LOW:
		pin_high = false;
		break;
	default:
		return (EINVAL);
	}

	FUNC0(sc);

	switch (FUNC4(sc, pin_num)) {
	case CC_GPIO_PIN_INPUT:
	case CC_GPIO_PIN_TRISTATE:
		error = ENODEV;
		break;

	case CC_GPIO_PIN_OUTPUT:
		FUNC3(sc, pin_num, GPIOOUT, pin_high);
		break;
	}

	FUNC1(sc);

	return (error);
}