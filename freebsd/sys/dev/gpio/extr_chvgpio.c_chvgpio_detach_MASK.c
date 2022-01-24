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
struct chvgpio_softc {int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_mem_rid; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_irq_rid; int /*<<< orphan*/ * intr_handle; int /*<<< orphan*/  sc_dev; scalar_t__ sc_busdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chvgpio_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct chvgpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct chvgpio_softc *sc;
	sc = FUNC3(dev);

	if (sc->sc_busdev)
		FUNC4(dev);

	if (sc->intr_handle != NULL)
	    FUNC2(sc->sc_dev, sc->sc_irq_res, sc->intr_handle);
	if (sc->sc_irq_res != NULL)
		FUNC1(dev, SYS_RES_IRQ, sc->sc_irq_rid, sc->sc_irq_res);
	if (sc->sc_mem_res != NULL)
		FUNC1(dev, SYS_RES_MEMORY, sc->sc_mem_rid, sc->sc_mem_res);

	FUNC0(sc);

    return (0);
}