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
struct qoriq_gpio_softc {int /*<<< orphan*/  sc_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIO_GPDIR ; 
 int /*<<< orphan*/  GPIO_GPODR ; 
 int /*<<< orphan*/  FUNC0 (struct qoriq_gpio_softc*) ; 
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_OPENDRAIN ; 
 int GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (struct qoriq_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct qoriq_gpio_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin, uint32_t flags)
{
	struct qoriq_gpio_softc *sc = FUNC5(dev);
	uint32_t reg;

	if (!FUNC2(pin))
		return (EINVAL);

	if ((flags & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) ==
	    (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT))
		return (EINVAL);

	FUNC0(sc);
	if (flags & GPIO_PIN_INPUT) {
		reg = FUNC3(sc->sc_mem, GPIO_GPDIR);
		reg &= ~(1 << (31 - pin));
		FUNC4(sc->sc_mem, GPIO_GPDIR, reg);
	}
	else if (flags & GPIO_PIN_OUTPUT) {
		reg = FUNC3(sc->sc_mem, GPIO_GPDIR);
		reg |= (1 << (31 - pin));
		FUNC4(sc->sc_mem, GPIO_GPDIR, reg);
		reg = FUNC3(sc->sc_mem, GPIO_GPODR);
		if (flags & GPIO_PIN_OPENDRAIN)
			reg |= (1 << (31 - pin));
		else
			reg &= ~(1 << (31 - pin));
		FUNC4(sc->sc_mem, GPIO_GPODR, reg);
	}
	FUNC1(sc);
	return (0);
}