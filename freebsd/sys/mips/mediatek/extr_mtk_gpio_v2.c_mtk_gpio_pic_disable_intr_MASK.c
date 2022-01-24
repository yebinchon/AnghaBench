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
typedef  unsigned int uint32_t ;
struct mtk_gpio_softc {int dummy; } ;
struct mtk_gpio_pin_irqsrc {unsigned int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_gpio_softc*) ; 
 unsigned int FUNC4 (struct mtk_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_gpio_softc*,int /*<<< orphan*/ ,unsigned int) ; 
 struct mtk_gpio_softc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(device_t dev, struct intr_irqsrc *isrc)
{
	struct mtk_gpio_softc *sc;
	struct mtk_gpio_pin_irqsrc *pisrc;
	uint32_t pin, mask, val;

	sc = FUNC6(dev);

	pisrc = (struct mtk_gpio_pin_irqsrc *)isrc;
	pin = pisrc->irq;
	mask = 1u << pin;

	FUNC2(sc);

	val = FUNC4(sc, FUNC1(sc)) & ~mask;
	FUNC5(sc, FUNC1(sc), val);
	val = FUNC4(sc, FUNC0(sc)) & ~mask;
	FUNC5(sc, FUNC0(sc), val);

	FUNC3(sc);
}