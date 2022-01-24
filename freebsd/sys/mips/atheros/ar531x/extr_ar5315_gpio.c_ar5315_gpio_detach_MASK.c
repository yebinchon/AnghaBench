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
struct ar5315_gpio_softc {int /*<<< orphan*/  gpio_mtx; scalar_t__ gpio_pins; scalar_t__ gpio_mem_res; int /*<<< orphan*/  gpio_mem_rid; scalar_t__ gpio_irq_res; int /*<<< orphan*/  gpio_irq_rid; scalar_t__ gpio_ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct ar5315_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct ar5315_gpio_softc *sc = FUNC3(dev);

	FUNC0(FUNC7(&sc->gpio_mtx), ("gpio mutex not initialized"));

	FUNC5(dev);
	if (sc->gpio_ih)
		FUNC2(dev, sc->gpio_irq_res, sc->gpio_ih);
	if (sc->gpio_irq_res)
		FUNC1(dev, SYS_RES_IRQ, sc->gpio_irq_rid,
		    sc->gpio_irq_res);
	if (sc->gpio_mem_res)
		FUNC1(dev, SYS_RES_MEMORY, sc->gpio_mem_rid,
		    sc->gpio_mem_res);
	if (sc->gpio_pins)
		FUNC4(sc->gpio_pins, M_DEVBUF);
	FUNC6(&sc->gpio_mtx);

	return(0);
}