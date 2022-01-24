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
struct gpio_pin {int gp_pin; unsigned int gp_flags; } ;
struct ar5315_gpio_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar5315_gpio_softc*,int /*<<< orphan*/ ,int) ; 
 unsigned int GPIO_PIN_INPUT ; 
 unsigned int GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (struct ar5315_gpio_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(struct ar5315_gpio_softc *sc, struct gpio_pin *pin,
    unsigned int flags)
{
	uint32_t mask;

	mask = 1 << pin->gp_pin;

	/*
	 * Manage input/output
	 */
	if (flags & (GPIO_PIN_INPUT|GPIO_PIN_OUTPUT)) {
		pin->gp_flags &= ~(GPIO_PIN_INPUT|GPIO_PIN_OUTPUT);
		if (flags & GPIO_PIN_OUTPUT) {
			pin->gp_flags |= GPIO_PIN_OUTPUT;
			FUNC1(sc, FUNC2(), mask);
		}
		else {
			pin->gp_flags |= GPIO_PIN_INPUT;
			FUNC0(sc, FUNC2(), mask);
		}
	}
}