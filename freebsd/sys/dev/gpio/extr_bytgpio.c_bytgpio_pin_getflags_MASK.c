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
struct bytgpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct bytgpio_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bytgpio_softc*) ; 
 int /*<<< orphan*/  BYTGPIO_PAD_VAL ; 
 int BYTGPIO_PAD_VAL_I_INPUT_ENABLED ; 
 int BYTGPIO_PAD_VAL_I_OUTPUT_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (struct bytgpio_softc*) ; 
 int EINVAL ; 
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC3 (struct bytgpio_softc*,int) ; 
 int FUNC4 (struct bytgpio_softc*,int) ; 
 scalar_t__ FUNC5 (struct bytgpio_softc*,int) ; 
 struct bytgpio_softc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, uint32_t pin, uint32_t *flags)
{
	struct bytgpio_softc *sc;
	uint32_t reg, val;

	sc = FUNC6(dev);
	if (FUNC5(sc, pin) != 0)
		return (EINVAL);

	*flags = 0;
	if (!FUNC3(sc, pin))
		return (0);

	/* Get the current pin state */
	FUNC1(sc);
	reg = FUNC0(sc, pin, BYTGPIO_PAD_VAL);
	val = FUNC4(sc, reg);
	if ((val & BYTGPIO_PAD_VAL_I_OUTPUT_ENABLED) == 0)
		*flags |= GPIO_PIN_OUTPUT;
	/*
	 * this bit can be cleared to read current output value
	 * sou output bit takes precedense
	 */
	else if ((val & BYTGPIO_PAD_VAL_I_INPUT_ENABLED) == 0)
		*flags |= GPIO_PIN_INPUT;
	FUNC2(sc);

	return (0);
}