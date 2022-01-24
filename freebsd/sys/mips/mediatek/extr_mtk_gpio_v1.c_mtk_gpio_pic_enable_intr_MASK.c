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
struct mtk_gpio_pin_irqsrc {unsigned int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ intr_polarity; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_PIOFENA ; 
 int /*<<< orphan*/  GPIO_PIORENA ; 
 scalar_t__ INTR_POLARITY_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_gpio_softc*) ; 
 unsigned int FUNC2 (struct mtk_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_gpio_softc*,int /*<<< orphan*/ ,unsigned int) ; 
 struct mtk_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev, struct intr_irqsrc *isrc)
{
	struct mtk_gpio_softc *sc;
	struct mtk_gpio_pin_irqsrc *pisrc;
	uint32_t pin, mask, val;

	sc = FUNC4(dev);

	pisrc = (struct mtk_gpio_pin_irqsrc *)isrc;
	pin = pisrc->irq;
	mask = 1u << pin;

	FUNC0(sc);

	if (sc->pins[pin].intr_polarity == INTR_POLARITY_LOW) {
		val = FUNC2(sc, GPIO_PIORENA) & ~mask;
		FUNC3(sc, GPIO_PIORENA, val);
		val = FUNC2(sc, GPIO_PIOFENA) | mask;
		FUNC3(sc, GPIO_PIOFENA, val);
	} else {
		val = FUNC2(sc, GPIO_PIOFENA) & ~mask;
		FUNC3(sc, GPIO_PIOFENA, val);
		val = FUNC2(sc, GPIO_PIORENA) | mask;
		FUNC3(sc, GPIO_PIORENA, val);
	}

	FUNC1(sc);
}