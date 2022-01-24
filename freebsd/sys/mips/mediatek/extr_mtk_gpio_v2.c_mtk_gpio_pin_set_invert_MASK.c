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
struct TYPE_2__ {int pin_flags; } ;

/* Variables and functions */
 int GPIO_PIN_INVIN ; 
 int GPIO_PIN_INVOUT ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_gpio_softc*) ; 
 unsigned int FUNC1 (struct mtk_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_gpio_softc*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int
FUNC3(struct mtk_gpio_softc *sc, uint32_t pin, uint32_t val)
{
	uint32_t regval, mask = (1u << pin);

	regval = FUNC1(sc, FUNC0(sc));
	if (val)
		regval |= mask;
	else
		regval &= ~mask;
	FUNC2(sc, FUNC0(sc), regval);
	sc->pins[pin].pin_flags &= ~(GPIO_PIN_INVIN | GPIO_PIN_INVOUT);
	sc->pins[pin].pin_flags |= val;

	return (0);
}