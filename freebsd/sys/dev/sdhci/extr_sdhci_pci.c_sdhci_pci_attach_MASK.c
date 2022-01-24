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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct sdhci_slot {int quirks; } ;
struct sdhci_pci_softc {int quirks; size_t num_slots; struct sdhci_slot* slots; int /*<<< orphan*/  intrhand; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ ** mem_res; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int model; int subvendor; int quirks; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PCI_SLOT_INFO ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SDHCI_QUIRK_LOWER_FREQUENCY ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sdhci_pci_softc*,int /*<<< orphan*/ *) ; 
 struct sdhci_pci_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__* sdhci_devices ; 
 scalar_t__ sdhci_enable_msi ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct sdhci_slot*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdhci_pci_intr ; 
 int sdhci_quirk_clear ; 
 int sdhci_quirk_set ; 
 int /*<<< orphan*/  FUNC16 (struct sdhci_slot*) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct sdhci_pci_softc *sc = FUNC5(dev);
	struct sdhci_slot *slot;
	uint32_t model;
	uint16_t subvendor;
	int bar, err, rid, slots, i;

	model = (uint32_t)FUNC9(dev) << 16;
	model |= (uint32_t)FUNC11(dev) & 0x0000ffff;
	subvendor = FUNC10(dev);
	/* Apply chip specific quirks. */
	for (i = 0; sdhci_devices[i].model != 0; i++) {
		if (sdhci_devices[i].model == model &&
		    (sdhci_devices[i].subvendor == 0xffff ||
		    sdhci_devices[i].subvendor == subvendor)) {
			sc->quirks = sdhci_devices[i].quirks;
			break;
		}
	}
	sc->quirks &= ~sdhci_quirk_clear;
	sc->quirks |= sdhci_quirk_set;

	/* Some controllers need to be bumped into the right mode. */
	if (sc->quirks & SDHCI_QUIRK_LOWER_FREQUENCY)
		FUNC15(dev);
	/* Read slots info from PCI registers. */
	slots = FUNC12(dev, PCI_SLOT_INFO, 1);
	bar = FUNC1(slots);
	slots = FUNC2(slots);
	if (slots > 6 || bar > 5) {
		FUNC6(dev, "Incorrect slots information (%d, %d).\n",
		    slots, bar);
		return (EINVAL);
	}
	/* Allocate IRQ. */
	i = 1;
	rid = 0;
	if (sdhci_enable_msi != 0 && FUNC7(dev, &i) == 0)
		rid = 1;
	sc->irq_res = FUNC3(dev, SYS_RES_IRQ, &rid,
		RF_ACTIVE | (rid != 0 ? 0 : RF_SHAREABLE));
	if (sc->irq_res == NULL) {
		FUNC6(dev, "Can't allocate IRQ\n");
		FUNC13(dev);
		return (ENOMEM);
	}
	/* Scan all slots. */
	for (i = 0; i < slots; i++) {
		slot = &sc->slots[sc->num_slots];

		/* Allocate memory. */
		rid = FUNC0(bar + i);
		sc->mem_res[i] = FUNC3(dev, SYS_RES_MEMORY,
		    &rid, RF_ACTIVE);
		if (sc->mem_res[i] == NULL) {
			FUNC6(dev,
			    "Can't allocate memory for slot %d\n", i);
			continue;
		}

		slot->quirks = sc->quirks;

		if (FUNC14(dev, slot, i) != 0)
			continue;

		sc->num_slots++;
	}
	FUNC6(dev, "%d slot(s) allocated\n", sc->num_slots);
	/* Activate the interrupt */
	err = FUNC4(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, sdhci_pci_intr, sc, &sc->intrhand);
	if (err)
		FUNC6(dev, "Can't setup IRQ\n");
	FUNC8(dev);
	/* Process cards detection. */
	for (i = 0; i < sc->num_slots; i++) {
		FUNC16(&sc->slots[i]);
	}

	return (0);
}