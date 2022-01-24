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
struct mtk_gpio_softc {int dummy; } ;
struct mtk_gpio_pin_irqsrc {unsigned int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_gpio_softc*,int /*<<< orphan*/ ,unsigned int) ; 
 struct mtk_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev, struct intr_irqsrc *isrc)
{
	struct mtk_gpio_softc *sc;
	struct mtk_gpio_pin_irqsrc *pisrc;

	pisrc = (struct mtk_gpio_pin_irqsrc *)isrc;
	sc = FUNC4(dev);
	FUNC1(sc);
	FUNC3(sc, FUNC0(sc), 1u << pisrc->irq);
	FUNC2(sc);
}