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
typedef  scalar_t__ uint32_t ;
struct mtk_gpio_softc {scalar_t__ num_pins; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ GPIO_PIN_INPUT ; 
 scalar_t__ GPIO_PIN_INVIN ; 
 scalar_t__ GPIO_PIN_INVOUT ; 
 scalar_t__ GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_gpio_softc*) ; 
 struct mtk_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mtk_gpio_softc*,scalar_t__,scalar_t__) ; 
 int FUNC4 (struct mtk_gpio_softc*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin, uint32_t flags)
{
	struct mtk_gpio_softc *sc;
	int retval;

	sc = FUNC2(dev);

	if (pin >= sc->num_pins)
		return (EINVAL);

	FUNC0(sc);
	retval = FUNC3(sc, pin,
	    flags & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT));
	if (retval == 0)
		retval = FUNC4(sc, pin,
		    flags & (GPIO_PIN_INVIN | GPIO_PIN_INVOUT));
	FUNC1(sc);

	return (retval);
}