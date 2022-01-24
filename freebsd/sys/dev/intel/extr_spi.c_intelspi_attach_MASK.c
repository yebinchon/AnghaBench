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
struct intelspi_softc {int /*<<< orphan*/ * sc_irq_res; scalar_t__ sc_irq_rid; int /*<<< orphan*/ * sc_mem_res; scalar_t__ sc_mem_rid; int /*<<< orphan*/  sc_irq_ih; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct intelspi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct intelspi_softc*) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct intelspi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 struct intelspi_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct intelspi_softc*) ; 
 int /*<<< orphan*/  intelspi_intr ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct intelspi_softc	*sc;

	sc = FUNC8(dev);
	sc->sc_dev = dev;
	sc->sc_handle = FUNC2(dev);

	FUNC1(sc);

	sc->sc_mem_rid = 0;
	sc->sc_mem_res = FUNC3(sc->sc_dev,
	    SYS_RES_MEMORY, &sc->sc_mem_rid, RF_ACTIVE);
	if (sc->sc_mem_res == NULL) {
		FUNC9(dev, "can't allocate memory resource\n");
		goto error;
	}

	sc->sc_irq_rid = 0;
	sc->sc_irq_res = FUNC3(sc->sc_dev,
	    SYS_RES_IRQ, &sc->sc_irq_rid, RF_ACTIVE);
	if (sc->sc_irq_res == NULL) {
		FUNC9(dev, "can't allocate IRQ resource\n");
		goto error;
	}

	/* Hook up our interrupt handler. */
	if (FUNC6(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, intelspi_intr, sc, &sc->sc_irq_ih)) {
		FUNC9(dev, "cannot setup the interrupt handler\n");
		goto error;
	}

	FUNC10(sc);

	FUNC7(dev, "spibus", -1);

	return (FUNC4(dev));

error:
	FUNC0(sc);

	if (sc->sc_mem_res != NULL)
		FUNC5(dev, SYS_RES_MEMORY,
		    sc->sc_mem_rid, sc->sc_mem_res);

	if (sc->sc_irq_res != NULL)
		FUNC5(dev, SYS_RES_IRQ,
		    sc->sc_irq_rid, sc->sc_irq_res);

	return (ENXIO);
}