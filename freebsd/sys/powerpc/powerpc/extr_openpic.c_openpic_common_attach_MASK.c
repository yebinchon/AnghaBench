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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_int32_t ;
typedef  void* u_int ;
struct resource_list {int dummy; } ;
struct openpic_softc {char* sc_version; int sc_ncpu; int sc_nirq; int sc_quirks; int /*<<< orphan*/ * sc_intr; scalar_t__ sc_psim; int /*<<< orphan*/  sc_icookie; scalar_t__ sc_irq; int /*<<< orphan*/ * sc_memr; int /*<<< orphan*/  sc_bh; int /*<<< orphan*/  sc_bt; scalar_t__ sc_rid; void* sc_dev; } ;
typedef  void* device_t ;

/* Variables and functions */
 struct resource_list* FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  OPENPIC_CONFIG ; 
 int OPENPIC_CONFIG_8259_PASSTHRU_DISABLE ; 
 int OPENPIC_CONFIG_RESET ; 
 int /*<<< orphan*/  OPENPIC_FEATURE ; 
 int OPENPIC_FEATURE_LAST_CPU_MASK ; 
 int OPENPIC_FEATURE_LAST_CPU_SHIFT ; 
 int OPENPIC_FEATURE_LAST_IRQ_MASK ; 
 int OPENPIC_FEATURE_LAST_IRQ_SHIFT ; 
 int OPENPIC_FEATURE_VERSION_MASK ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int OPENPIC_IMASK ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* OPENPIC_IRQMAX ; 
 void* OPENPIC_NIPIS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int OPENPIC_POLARITY_NEGATIVE ; 
 int OPENPIC_PRIORITY_SHIFT ; 
 int OPENPIC_QUIRK_HIDDEN_IRQS ; 
 int OPENPIC_SENSE_LEVEL ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 void* FUNC8 (void*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 struct openpic_softc* FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*,char*,...) ; 
 int /*<<< orphan*/  openpic_intr ; 
 int FUNC13 (struct openpic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct openpic_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (void*,int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 void* root_pic ; 

int
FUNC20(device_t dev, uint32_t node)
{
	struct openpic_softc *sc;
	u_int     cpu, ipi, irq;
	u_int32_t x;

	sc = FUNC11(dev);
	sc->sc_dev = dev;

	sc->sc_rid = 0;
	sc->sc_memr = FUNC8(dev, SYS_RES_MEMORY, &sc->sc_rid,
	    RF_ACTIVE);

	if (sc->sc_memr == NULL) {
		FUNC12(dev, "Could not alloc mem resource!\n");
		return (ENXIO);
	}

	sc->sc_bt = FUNC19(sc->sc_memr);
	sc->sc_bh = FUNC18(sc->sc_memr);

	/* Reset the PIC */
	x = FUNC13(sc, OPENPIC_CONFIG);
	x |= OPENPIC_CONFIG_RESET;
	FUNC14(sc, OPENPIC_CONFIG, x);

	while (FUNC13(sc, OPENPIC_CONFIG) & OPENPIC_CONFIG_RESET) {
		FUNC16();
		FUNC1(100);
	}

	/* Check if this is a cascaded PIC */
	sc->sc_irq = 0;
	sc->sc_intr = NULL;
	do {
		struct resource_list *rl;

		rl = FUNC0(FUNC10(dev), dev);
		if (rl == NULL)
			break;
		if (FUNC17(rl, SYS_RES_IRQ, 0) == NULL)
			break;

		sc->sc_intr = FUNC8(dev, SYS_RES_IRQ,
		    &sc->sc_irq, RF_ACTIVE);

		/* XXX Cascaded PICs pass NULL trapframes! */
		FUNC9(dev, sc->sc_intr, INTR_TYPE_MISC | INTR_MPSAFE,
		    openpic_intr, NULL, dev, &sc->sc_icookie);
	} while (0);

	/* Reset the PIC */
	x = FUNC13(sc, OPENPIC_CONFIG);
	x |= OPENPIC_CONFIG_RESET;
	FUNC14(sc, OPENPIC_CONFIG, x);

	while (FUNC13(sc, OPENPIC_CONFIG) & OPENPIC_CONFIG_RESET) {
		FUNC16();
		FUNC1(100);
	}

	x = FUNC13(sc, OPENPIC_FEATURE);
	switch (x & OPENPIC_FEATURE_VERSION_MASK) {
	case 1:
		sc->sc_version = "1.0";
		break;
	case 2:
		sc->sc_version = "1.2";
		break;
	case 3:
		sc->sc_version = "1.3";
		break;
	default:
		sc->sc_version = "unknown";
		break;
	}

	sc->sc_ncpu = ((x & OPENPIC_FEATURE_LAST_CPU_MASK) >>
	    OPENPIC_FEATURE_LAST_CPU_SHIFT) + 1;
	sc->sc_nirq = ((x & OPENPIC_FEATURE_LAST_IRQ_MASK) >>
	    OPENPIC_FEATURE_LAST_IRQ_SHIFT) + 1;

	/*
	 * PSIM seems to report 1 too many IRQs and CPUs
	 */
	if (sc->sc_psim) {
		sc->sc_nirq--;
		sc->sc_ncpu--;
	}

	if (bootverbose)
		FUNC12(dev,
		    "Version %s, supports %d CPUs and %d irqs\n",
		    sc->sc_version, sc->sc_ncpu, sc->sc_nirq);

	/*
	 * Allow more IRQs than what the PIC says it handles.  Some Freescale PICs
	 * have MSIs that show up above the PIC's self-described 196 IRQs
	 * (P5020 starts MSI IRQs at 224).
	 */
	if (sc->sc_quirks & OPENPIC_QUIRK_HIDDEN_IRQS)
		sc->sc_nirq = OPENPIC_IRQMAX - OPENPIC_NIPIS;

	for (cpu = 0; cpu < sc->sc_ncpu; cpu++)
		FUNC14(sc, FUNC6(cpu), 15);

	/* Reset and disable all interrupts. */
	for (irq = 0; irq < sc->sc_nirq; irq++) {
		x = irq;                /* irq == vector. */
		x |= OPENPIC_IMASK;
		x |= OPENPIC_POLARITY_NEGATIVE;
		x |= OPENPIC_SENSE_LEVEL;
		x |= 8 << OPENPIC_PRIORITY_SHIFT;
		FUNC14(sc, FUNC7(irq), x);
	}

	/* Reset and disable all IPIs. */
	for (ipi = 0; ipi < OPENPIC_NIPIS; ipi++) {
		x = sc->sc_nirq + ipi;
		x |= OPENPIC_IMASK;
		x |= 15 << OPENPIC_PRIORITY_SHIFT;
		FUNC14(sc, FUNC3(ipi), x);
	}

	/* we don't need 8259 passthrough mode */
	x = FUNC13(sc, OPENPIC_CONFIG);
	x |= OPENPIC_CONFIG_8259_PASSTHRU_DISABLE;
	FUNC14(sc, OPENPIC_CONFIG, x);

	/* send all interrupts to cpu 0 */
	for (irq = 0; irq < sc->sc_nirq; irq++)
		FUNC14(sc, FUNC2(irq), 1 << 0);

	/* clear all pending interrupts from cpu 0 */
	for (irq = 0; irq < sc->sc_nirq; irq++) {
		(void)FUNC13(sc, FUNC5(0));
		FUNC14(sc, FUNC4(0), 0);
	}

	for (cpu = 0; cpu < sc->sc_ncpu; cpu++)
		FUNC14(sc, FUNC6(cpu), 0);

	FUNC15(dev, node, sc->sc_nirq, OPENPIC_NIPIS, FALSE);

	/* If this is not a cascaded PIC, it must be the root PIC */
	if (sc->sc_intr == NULL)
		root_pic = dev;

	return (0);
}