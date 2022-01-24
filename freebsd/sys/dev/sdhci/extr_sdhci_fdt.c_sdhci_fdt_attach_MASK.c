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
struct sdhci_slot {int /*<<< orphan*/  sdma_boundary; int /*<<< orphan*/  max_clk; int /*<<< orphan*/  caps; int /*<<< orphan*/  quirks; } ;
struct sdhci_fdt_softc {int num_slots; struct sdhci_slot* slots; int /*<<< orphan*/  intrhand; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  sdma_boundary; int /*<<< orphan*/  max_clk; int /*<<< orphan*/  caps; int /*<<< orphan*/  quirks; int /*<<< orphan*/ ** mem_res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 scalar_t__ SDHCI_FDT_RK3399 ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sdhci_fdt_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compat_data ; 
 struct sdhci_fdt_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdhci_fdt_intr ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct sdhci_slot*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_slot*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct sdhci_fdt_softc *sc = FUNC2(dev);
	struct sdhci_slot *slot;
	int err, slots, rid, i;

	sc->dev = dev;

	/* Allocate IRQ. */
	rid = 0;
	sc->irq_res = FUNC0(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC3(dev, "Can't allocate IRQ\n");
		return (ENOMEM);
	}

#ifdef EXT_RESOURCES
	if (ofw_bus_search_compatible(dev, compat_data)->ocd_data ==
	    SDHCI_FDT_RK3399) {
		/* Initialize SDHCI */
		err = sdhci_init_rk3399(dev);
		if (err != 0) {
			device_printf(dev, "Cannot init RK3399 SDHCI\n");
			return (err);
		}
	}
#endif

	/* Scan all slots. */
	slots = sc->num_slots;	/* number of slots determined in probe(). */
	sc->num_slots = 0;
	for (i = 0; i < slots; i++) {
		slot = &sc->slots[sc->num_slots];

		/* Allocate memory. */
		rid = 0;
		sc->mem_res[i] = FUNC0(dev, SYS_RES_MEMORY,
							&rid, RF_ACTIVE);
		if (sc->mem_res[i] == NULL) {
			FUNC3(dev,
			    "Can't allocate memory for slot %d\n", i);
			continue;
		}

		slot->quirks = sc->quirks;
		slot->caps = sc->caps;
		slot->max_clk = sc->max_clk;
		slot->sdma_boundary = sc->sdma_boundary;

		if (FUNC6(dev, slot, i) != 0)
			continue;

		sc->num_slots++;
	}
	FUNC3(dev, "%d slot(s) allocated\n", sc->num_slots);

	/* Activate the interrupt */
	err = FUNC1(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, sdhci_fdt_intr, sc, &sc->intrhand);
	if (err) {
		FUNC3(dev, "Cannot setup IRQ\n");
		return (err);
	}

	/* Process cards detection. */
	for (i = 0; i < sc->num_slots; i++)
		FUNC7(&sc->slots[i]);

	return (0);
}