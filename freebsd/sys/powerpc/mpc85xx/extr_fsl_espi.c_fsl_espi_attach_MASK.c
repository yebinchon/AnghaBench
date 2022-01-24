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
struct fsl_espi_softc {int sc_num_cs; int /*<<< orphan*/  sc_mtx; void* sc_mem_res; void* sc_irq_res; int /*<<< orphan*/  sc_intrhand; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  ESPI_SPIM ; 
 int /*<<< orphan*/  ESPI_SPMODE ; 
 int ESPI_SPMODE_EN ; 
 int ESPI_SPMODE_RXTHR_S ; 
 int ESPI_SPMODE_TXTHR_S ; 
 int /*<<< orphan*/  FUNC0 (struct fsl_espi_softc*,int /*<<< orphan*/ ,int) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fsl_espi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 struct fsl_espi_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fsl_espi_intr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct fsl_espi_softc *sc;
	int rid;
	phandle_t node;

	sc = FUNC7(dev);
	sc->sc_dev = dev;
	node = FUNC10(dev);

	rid = 0;
	sc->sc_mem_res = FUNC2(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC8(dev, "cannot allocate memory resource\n");
		return (ENXIO);
	}

	rid = 0;
	sc->sc_irq_res = FUNC2(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (!sc->sc_irq_res) {
		FUNC4(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC8(dev, "cannot allocate interrupt\n");
		return (ENXIO);
	}

	/* Hook up our interrupt handler. */
	if (FUNC5(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, fsl_espi_intr, sc, &sc->sc_intrhand)) {
		FUNC4(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
		FUNC4(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC8(dev, "cannot setup the interrupt handler\n");
		return (ENXIO);
	}
	if (FUNC1(node, "fsl,espi-num-chipselects",
	    &sc->sc_num_cs, sizeof(sc->sc_num_cs)) < 0 )
		sc->sc_num_cs = 4;

	FUNC9(&sc->sc_mtx, "fsl_espi", NULL, MTX_DEF);

	/* Enable the SPI controller.  */
	FUNC0(sc, ESPI_SPMODE, ESPI_SPMODE_EN | 
	    (16 << ESPI_SPMODE_TXTHR_S) | (15 << ESPI_SPMODE_RXTHR_S));

	/* Disable all interrupts until we start transfers  */
	FUNC0(sc, ESPI_SPIM, 0);

	FUNC6(dev, "spibus", -1);

	return (FUNC3(dev));
}