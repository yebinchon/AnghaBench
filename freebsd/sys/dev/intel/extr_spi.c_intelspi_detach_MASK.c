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
struct intelspi_softc {int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_irq_rid; int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_mem_rid; scalar_t__ sc_irq_ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intelspi_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 struct intelspi_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct intelspi_softc	*sc;

	sc = FUNC4(dev);

	FUNC0(sc);

	if (sc->sc_irq_ih)
		FUNC3(dev, sc->sc_irq_res, sc->sc_irq_ih);

	if (sc->sc_mem_res != NULL)
		FUNC2(dev, SYS_RES_MEMORY,
		    sc->sc_mem_rid, sc->sc_mem_res);

	if (sc->sc_irq_res != NULL)
		FUNC2(dev, SYS_RES_IRQ,
		    sc->sc_irq_rid, sc->sc_irq_res);

	return (FUNC1(dev));
}