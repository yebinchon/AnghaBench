#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
struct mtk_gpio_softc {TYPE_1__* pins; } ;
struct TYPE_2__ {int pin_flags; int /*<<< orphan*/  intr_polarity; int /*<<< orphan*/  intr_trigger; } ;

/* Variables and functions */
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_INVIN ; 
 int GPIO_PIN_INVOUT ; 
 int GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  INTR_POLARITY_HIGH ; 
 int /*<<< orphan*/  INTR_POLARITY_LOW ; 
 int /*<<< orphan*/  INTR_TRIGGER_EDGE ; 
 unsigned int FUNC4 (struct mtk_gpio_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mtk_gpio_softc *sc, uint32_t pin)
{
	uint32_t mask = (1u << pin);
	uint32_t val;

	/* Clear cached gpio config */
	sc->pins[pin].pin_flags = 0;

	val = FUNC4(sc, FUNC3(sc)) |
	    FUNC4(sc, FUNC1(sc));
	if (val & mask) {
		/* Pin is in interrupt mode */
		sc->pins[pin].intr_trigger = INTR_TRIGGER_EDGE;
		val = FUNC4(sc, FUNC3(sc));
		if (val & mask)
			sc->pins[pin].intr_polarity = INTR_POLARITY_HIGH;
		else
			sc->pins[pin].intr_polarity = INTR_POLARITY_LOW;
	}

	val = FUNC4(sc, FUNC0(sc));
	if (val & mask)
		sc->pins[pin].pin_flags |= GPIO_PIN_OUTPUT;
	else
		sc->pins[pin].pin_flags |= GPIO_PIN_INPUT;

	val = FUNC4(sc, FUNC2(sc));
	if (val & mask) {
		if (sc->pins[pin].pin_flags & GPIO_PIN_INPUT) {
			sc->pins[pin].pin_flags |= GPIO_PIN_INVIN;
		} else {
			sc->pins[pin].pin_flags |= GPIO_PIN_INVOUT;
		}
	}
}