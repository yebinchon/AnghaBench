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
 int /*<<< orphan*/  FUNC4 (struct chipc_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  GPIOOUT ; 
 int FUNC5 (struct chipc_gpio_softc*,int /*<<< orphan*/ ) ; 
 struct chipc_gpio_softc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, uint32_t pin_num)
{
	struct chipc_gpio_softc	*sc;
	bool			 pin_high;
	int			 error;

	if (!FUNC3(pin_num))
		return (EINVAL);

	sc = FUNC6(dev);
	error = 0;

	FUNC0(sc);

	switch (FUNC5(sc, pin_num)) {
	case CC_GPIO_PIN_INPUT:
	case CC_GPIO_PIN_TRISTATE:
		error = ENODEV;
		break;

	case CC_GPIO_PIN_OUTPUT:
		pin_high = FUNC1(sc, pin_num, GPIOOUT);
		FUNC4(sc, pin_num, GPIOOUT, !pin_high);
		break;
	}

	FUNC2(sc);

	return (error);
}