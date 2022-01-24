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
 int CHVGPIO_PAD_CFG0_GPIORXSTATE ; 
 int /*<<< orphan*/  FUNC1 (struct chvgpio_softc*) ; 
 int EINVAL ; 
 unsigned int GPIO_PIN_HIGH ; 
 unsigned int GPIO_PIN_LOW ; 
 int FUNC2 (struct chvgpio_softc*,int) ; 
 scalar_t__ FUNC3 (struct chvgpio_softc*,int) ; 
 struct chvgpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin, unsigned int *value)
{
	struct chvgpio_softc *sc;
	uint32_t val;

	sc = FUNC4(dev);
	if (FUNC3(sc, pin) != 0)
		return (EINVAL);

	FUNC0(sc);

	/* Read pin value */
	val = FUNC2(sc, pin);
	if (val & CHVGPIO_PAD_CFG0_GPIORXSTATE)
		*value = GPIO_PIN_HIGH;
	else
		*value = GPIO_PIN_LOW;

	FUNC1(sc);

	return (0);
}