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
struct TYPE_2__ {int /*<<< orphan*/ * dbi_res; } ;
struct pci_mv_softc {int /*<<< orphan*/  intr_cookie; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk_reg; int /*<<< orphan*/  clk_core; TYPE_1__ dw_sc; int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pci_mv_softc*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct pci_mv_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_mv_softc*) ; 
 int /*<<< orphan*/  pci_mv_intr ; 
 int FUNC10 (struct pci_mv_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct pci_mv_softc *sc;
	phandle_t node;
	int rv;
	int rid;

	sc = FUNC5(dev);
	node = FUNC7(dev);
	sc->dev = dev;
	sc->node = node;
	
	rid = 0;
	sc->dw_sc.dbi_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->dw_sc.dbi_res == NULL) {
		FUNC6(dev, "Cannot allocate DBI memory\n");
		rv = ENXIO;
		goto out;
	}

	/* PCI interrupt */
	rid = 0;
	sc->irq_res = FUNC0(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->irq_res == NULL) {
		FUNC6(dev, "Cannot allocate IRQ resources\n");
		rv = ENXIO;
		goto out;
	}

	/* Clocks */
	rv = FUNC4(sc->dev, 0, "core", &sc->clk_core);
	if (rv != 0) {
		FUNC6(sc->dev, "Cannot get 'core' clock\n");
		rv = ENXIO;
		goto out;
	}

	rv = FUNC4(sc->dev, 0, "reg", &sc->clk_reg);
	if (rv != 0) {
		FUNC6(sc->dev, "Cannot get 'reg' clock\n");
		rv = ENXIO;
		goto out;
	}


	rv = FUNC3(sc->clk_core);
	if (rv != 0) {
		FUNC6(sc->dev, "Cannot enable 'core' clock\n");
		rv = ENXIO;
		goto out;
	}

	rv = FUNC3(sc->clk_reg);
	if (rv != 0) {
		FUNC6(sc->dev, "Cannot enable 'reg' clock\n");
		rv = ENXIO;
		goto out;
	}

	rv = FUNC10(sc);
	if (rv)
		goto out;

	rv = FUNC8(dev);
	if (rv != 0)
		goto out;

	FUNC9(sc);

	/* Setup interrupt  */
	if (FUNC2(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
		    pci_mv_intr, NULL, sc, &sc->intr_cookie)) {
		FUNC6(dev, "cannot setup interrupt handler\n");
		rv = ENXIO;
		goto out;
	}

	return (FUNC1(dev));
out:
	/* XXX Cleanup */
	return (rv);
}