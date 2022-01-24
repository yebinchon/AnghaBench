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
struct chvgpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chvgpio_softc*) ; 
 int CHVGPIO_PAD_CFG0_GPIOCFG_GPI ; 
 int CHVGPIO_PAD_CFG0_GPIOCFG_GPIO ; 
 int CHVGPIO_PAD_CFG0_GPIOCFG_GPO ; 
 int /*<<< orphan*/  FUNC1 (struct chvgpio_softc*) ; 
 int EINVAL ; 
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_OUTPUT ; 
 int FUNC2 (struct chvgpio_softc*,int) ; 
 int FUNC3 (struct chvgpio_softc*,int) ; 
 scalar_t__ FUNC4 (struct chvgpio_softc*,int) ; 
 struct chvgpio_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin, uint32_t *flags)
{
	struct chvgpio_softc *sc;
	uint32_t val;

	sc = FUNC5(dev);
	if (FUNC4(sc, pin) != 0)
		return (EINVAL);

	*flags = 0;

	/* Get the current pin state */
	FUNC0(sc);
	val = FUNC2(sc, pin);

	if (val & CHVGPIO_PAD_CFG0_GPIOCFG_GPIO ||
		val & CHVGPIO_PAD_CFG0_GPIOCFG_GPO)
		*flags |= GPIO_PIN_OUTPUT;

	if (val & CHVGPIO_PAD_CFG0_GPIOCFG_GPIO ||
		val & CHVGPIO_PAD_CFG0_GPIOCFG_GPI)
		*flags |= GPIO_PIN_INPUT;

	val = FUNC3(sc, pin);

	FUNC1(sc);
	return (0);
}