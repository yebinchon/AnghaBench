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
struct ieee80211com {int /*<<< orphan*/  ic_name; } ;
struct rtwn_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;
struct rtwn_pci_softc {int /*<<< orphan*/  pc_ih; int /*<<< orphan*/ * irq; int /*<<< orphan*/ * mem; int /*<<< orphan*/  pc_sh; int /*<<< orphan*/  pc_st; struct rtwn_softc pc_sc; } ;
struct rtwn_pci_ident {int /*<<< orphan*/  chip; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  PCIEM_LINK_CTL_ASPMC ; 
 scalar_t__ PCIER_LINK_CTL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int RTWN_PCI_NTXQUEUES ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rtwn_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct rtwn_pci_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct rtwn_softc*) ; 
 int FUNC15 (struct rtwn_softc*) ; 
 int FUNC16 (struct rtwn_softc*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct rtwn_pci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtwn_pci_intr ; 
 struct rtwn_pci_ident* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct rtwn_softc*) ; 

__attribute__((used)) static int
FUNC22(device_t dev)
{
	const struct rtwn_pci_ident *ident;
	struct rtwn_pci_softc *pc = FUNC4(dev);
	struct rtwn_softc *sc = &pc->pc_sc;
	struct ieee80211com *ic = &sc->sc_ic;
	uint32_t lcsr;
	int cap_off, i, error, rid;

	ident = FUNC20(dev);
	if (ident == NULL)
		return (ENXIO);

	/*
	 * Get the offset of the PCI Express Capability Structure in PCI
	 * Configuration Space.
	 */
	error = FUNC9(dev, PCIY_EXPRESS, &cap_off);
	if (error != 0) {
		FUNC5(dev, "PCIe capability structure not found!\n");
		return (error);
	}

	/* Enable bus-mastering. */
	FUNC8(dev);

	rid = FUNC0(2);
	pc->mem = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (pc->mem == NULL) {
		FUNC5(dev, "can't map mem space\n");
		return (ENOMEM);
	}
	pc->pc_st = FUNC13(pc->mem);
	pc->pc_sh = FUNC12(pc->mem);

	/* Install interrupt handler. */
	rid = 1;
	if (FUNC7(dev, &rid) == 0)
		rid = 1;
	else
		rid = 0;
	pc->irq = FUNC1(dev, SYS_RES_IRQ, &rid, RF_ACTIVE |
	    (rid != 0 ? 0 : RF_SHAREABLE));
	if (pc->irq == NULL) {
		FUNC5(dev, "can't map interrupt\n");
		goto detach;
	}

	/* Disable PCIe Active State Power Management (ASPM). */
	lcsr = FUNC10(dev, cap_off + PCIER_LINK_CTL, 4);
	lcsr &= ~PCIEM_LINK_CTL_ASPMC;
	FUNC11(dev, cap_off + PCIER_LINK_CTL, lcsr, 4);

	sc->sc_dev = dev;
	ic->ic_name = FUNC3(dev);

	/* Need to be initialized early. */
	FUNC21(sc);
	FUNC6(&sc->sc_mtx, ic->ic_name, MTX_NETWORK_LOCK, MTX_DEF);

	FUNC17(sc);
	FUNC18(pc, ident->chip);

	/* Allocate Tx/Rx buffers. */
	error = FUNC15(sc);
	if (error != 0) {
		FUNC5(dev,
		    "could not allocate Rx buffers, error %d\n",
		    error);
		goto detach;
	}
	for (i = 0; i < RTWN_PCI_NTXQUEUES; i++) {
		error = FUNC16(sc, i);
		if (error != 0) {
			FUNC5(dev,
			    "could not allocate Tx buffers, error %d\n",
			    error);
			goto detach;
		}
	}

	/* Generic attach. */
	error = FUNC14(sc);
	if (error != 0)
		goto detach;

	/*
	 * Hook our interrupt after all initialization is complete.
	 */
	error = FUNC2(dev, pc->irq, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, rtwn_pci_intr, sc, &pc->pc_ih);
	if (error != 0) {
		FUNC5(dev, "can't establish interrupt, error %d\n",
		    error);
		goto detach;
	}

	return (0);

detach:
	FUNC19(dev);		/* failure */
	return (ENXIO);
}