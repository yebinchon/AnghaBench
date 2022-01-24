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
struct octeon_gpio_softc {int /*<<< orphan*/  gpio_mtx; scalar_t__* gpio_irq_res; int /*<<< orphan*/ * gpio_irq_rid; scalar_t__* gpio_ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int OCTEON_GPIO_IRQS ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct octeon_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct octeon_gpio_softc *sc = FUNC3(dev);
	int i;

	FUNC0(FUNC6(&sc->gpio_mtx), ("gpio mutex not initialized"));

	for ( i = 0; i < OCTEON_GPIO_IRQS; i++) {
		if (sc->gpio_ih[i])
			FUNC2(dev, sc->gpio_irq_res[i],
			    sc->gpio_ih[i]);
		if (sc->gpio_irq_res[i])
			FUNC1(dev, SYS_RES_IRQ,
			    sc->gpio_irq_rid[i], sc->gpio_irq_res[i]);
	}
	FUNC4(dev);
	FUNC5(&sc->gpio_mtx);

	return(0);
}