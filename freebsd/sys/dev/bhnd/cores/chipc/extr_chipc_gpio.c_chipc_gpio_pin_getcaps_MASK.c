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
 int /*<<< orphan*/  FUNC0 (struct chipc_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_OUTPUT ; 
 int GPIO_PIN_PULLDOWN ; 
 int GPIO_PIN_PULLUP ; 
 int GPIO_PIN_PULSATE ; 
 int GPIO_PIN_TRISTATE ; 
 int /*<<< orphan*/  NO_DCTIMER ; 
 int /*<<< orphan*/  NO_PULLUPDOWN ; 
 struct chipc_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t pin_num, uint32_t *caps)
{
	struct chipc_gpio_softc	*sc = FUNC2(dev);

	if (!FUNC1(pin_num))
		return (EINVAL);

	*caps = (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT | GPIO_PIN_TRISTATE);

	if (!FUNC0(sc, NO_PULLUPDOWN))
		*caps |= (GPIO_PIN_PULLUP | GPIO_PIN_PULLDOWN);

	if (!FUNC0(sc, NO_DCTIMER))
		*caps |= GPIO_PIN_PULSATE;

	return (0);
}