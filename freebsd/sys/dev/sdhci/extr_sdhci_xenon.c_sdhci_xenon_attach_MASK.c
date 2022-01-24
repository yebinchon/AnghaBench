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
typedef  int uint32_t ;
struct sdhci_xenon_softc {int slot_id; struct sdhci_slot* slot; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  intrhand; int /*<<< orphan*/  gpio; int /*<<< orphan*/  max_clk; int /*<<< orphan*/  caps; int /*<<< orphan*/  quirks; int /*<<< orphan*/  node; int /*<<< orphan*/  dev; } ;
struct sdhci_slot {int /*<<< orphan*/  max_clk; int /*<<< orphan*/  caps; int /*<<< orphan*/  quirks; int /*<<< orphan*/  opt; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SDHCI_NON_REMOVABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int XENON_AUTO_CLKGATE_DISABLE ; 
 int XENON_MASK_CMD_CONFLICT_ERR ; 
 int XENON_SDCLK_IDLEOFF_ENABLE_SHIFT ; 
 int /*<<< orphan*/  XENON_SYS_EXT_OP_CTRL ; 
 int /*<<< orphan*/  XENON_SYS_OP_CTRL ; 
 scalar_t__ bootverbose ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sdhci_xenon_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct sdhci_xenon_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdhci_slot*,int /*<<< orphan*/ ) ; 
 struct sdhci_slot* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct sdhci_slot*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct sdhci_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  sdhci_xenon_intr ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct sdhci_xenon_softc *sc = FUNC6(dev);
	struct sdhci_slot *slot;
	int err, rid;
	uint32_t reg;

	sc->dev = dev;

	/* Allocate IRQ. */
	rid = 0;
	sc->irq_res = FUNC1(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC7(dev, "Can't allocate IRQ\n");
		return (ENOMEM);
	}

	/* Allocate memory. */
	rid = 0;
	sc->mem_res = FUNC1(dev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC3(dev, SYS_RES_IRQ,
		    FUNC10(sc->irq_res), sc->irq_res);
		FUNC7(dev, "Can't allocate memory for slot\n");
		return (ENOMEM);
	}

	slot = FUNC9(sizeof(*slot), M_DEVBUF, M_ZERO | M_WAITOK);

	/* Check if the device is flagged as non-removable. */
	if (FUNC0(sc->node, "non-removable")) {
		slot->opt |= SDHCI_NON_REMOVABLE;
		if (bootverbose)
			FUNC7(dev, "Non-removable media\n");
	}

	slot->quirks = sc->quirks;
	slot->caps = sc->caps;
	slot->max_clk = sc->max_clk;
	sc->slot = slot;

	/*
	 * Set up any gpio pin handling described in the FDT data. This cannot
	 * fail; see comments in sdhci_fdt_gpio.h for details.
	 */
	sc->gpio = FUNC11(dev, slot);

	if (FUNC12(dev, sc->slot, 0))
		goto fail;

	/* Activate the interrupt */
	err = FUNC4(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, sdhci_xenon_intr, sc, &sc->intrhand);
	if (err) {
		FUNC7(dev, "Cannot setup IRQ\n");
		goto fail;
	}

	/* Disable Auto Clock Gating. */
	reg = FUNC2(sc->mem_res, XENON_SYS_OP_CTRL);
	reg |= XENON_AUTO_CLKGATE_DISABLE;
	FUNC5(sc->mem_res, XENON_SYS_OP_CTRL, reg);

	/* Enable this SD controller. */
	reg |= (1 << sc->slot_id);
	FUNC5(sc->mem_res, XENON_SYS_OP_CTRL, reg);

	/* Enable Parallel Transfer. */
	reg = FUNC2(sc->mem_res, XENON_SYS_EXT_OP_CTRL);
	reg |= (1 << sc->slot_id);
	FUNC5(sc->mem_res, XENON_SYS_EXT_OP_CTRL, reg);

	/* Enable Auto Clock Gating. */
	reg &= ~XENON_AUTO_CLKGATE_DISABLE;
	FUNC5(sc->mem_res, XENON_SYS_OP_CTRL, reg);

	/* Disable SDCLK_IDLEOFF before the card initialization. */
	reg = FUNC2(sc->mem_res, XENON_SYS_OP_CTRL);
	reg &= ~(1 << (XENON_SDCLK_IDLEOFF_ENABLE_SHIFT + sc->slot_id));
	FUNC5(sc->mem_res, XENON_SYS_OP_CTRL, reg);

	/* Mask command conflict errors. */
	reg = FUNC2(sc->mem_res, XENON_SYS_EXT_OP_CTRL);
	reg |= XENON_MASK_CMD_CONFLICT_ERR;
	FUNC5(sc->mem_res, XENON_SYS_EXT_OP_CTRL, reg);

	/* Process cards detection. */
	FUNC13(sc->slot);

	return (0);

fail:
	FUNC3(dev, SYS_RES_IRQ, FUNC10(sc->irq_res),
	    sc->irq_res);
	FUNC3(dev, SYS_RES_MEMORY, FUNC10(sc->mem_res),
	    sc->mem_res);
	FUNC8(sc->slot, M_DEVBUF);
	sc->slot = NULL;

	return (ENXIO);
}