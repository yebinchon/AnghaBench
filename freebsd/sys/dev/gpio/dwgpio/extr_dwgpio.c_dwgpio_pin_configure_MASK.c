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
struct gpio_pin {unsigned int gp_flags; int gp_pin; } ;
struct dwgpio_softc {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwgpio_softc*) ; 
 unsigned int GPIO_PIN_INPUT ; 
 unsigned int GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwgpio_softc*) ; 
 int FUNC3 (struct dwgpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dwgpio_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct dwgpio_softc *sc,
    struct gpio_pin *pin, unsigned int flags)
{
	int reg;

	FUNC0(sc);

	/*
	 * Manage input/output
	 */

	reg = FUNC3(sc, FUNC1(sc->port));
	if (flags & (GPIO_PIN_INPUT|GPIO_PIN_OUTPUT)) {
		pin->gp_flags &= ~(GPIO_PIN_INPUT|GPIO_PIN_OUTPUT);
		if (flags & GPIO_PIN_OUTPUT) {
			pin->gp_flags |= GPIO_PIN_OUTPUT;
			reg |= (1 << pin->gp_pin);
		} else {
			pin->gp_flags |= GPIO_PIN_INPUT;
			reg &= ~(1 << pin->gp_pin);
		}
	}

	FUNC4(sc, FUNC1(sc->port), reg);
	FUNC2(sc);
}