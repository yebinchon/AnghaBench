#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_4__ {int sec; int sub; } ;
struct cbb_softc {int domain; int pribus; int subbus; int /*<<< orphan*/  mtx; int /*<<< orphan*/ * base_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  dev; int /*<<< orphan*/  sc_root_token; int /*<<< orphan*/  event_thread; TYPE_2__* exca; int /*<<< orphan*/  intrhand; int /*<<< orphan*/ * cbdev; TYPE_1__ bus; int /*<<< orphan*/  (* chipinit ) (struct cbb_softc*) ;int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  rl; int /*<<< orphan*/  chipset; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int /*<<< orphan*/ * pccarddev; int /*<<< orphan*/  chipset; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_OFF ; 
 int CBBR_SOCKBASE ; 
 int /*<<< orphan*/  CBB_EXCA_OFFSET ; 
 int /*<<< orphan*/  CBB_SOCKET_EVENT ; 
 int /*<<< orphan*/  CBB_SOCKET_MASK ; 
 int /*<<< orphan*/  CBB_SOCKET_MASK_CD ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EXCA_CARDBUS ; 
 int /*<<< orphan*/  EXCA_HAS_MEMREG_WIN ; 
 int /*<<< orphan*/  EXCA_INTR ; 
 int /*<<< orphan*/  EXCA_INTR_RESET ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_AV ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  PCIR_PRIBUS_2 ; 
 int /*<<< orphan*/  PCIR_SECBUS_2 ; 
 int /*<<< orphan*/  PCIR_SUBBUS_2 ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct cbb_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cbb_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cbb_event_thread ; 
 int /*<<< orphan*/  FUNC9 (struct cbb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cbb_pci_filt ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cbb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cbb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC18 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,struct cbb_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 void* FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct cbb_softc*) ; 

__attribute__((used)) static int
FUNC39(device_t brdev)
{
#if !(defined(NEW_PCIB) && defined(PCI_RES_BUS))
	static int curr_bus_number = 2; /* XXX EVILE BAD (see below) */
	uint32_t pribus;
#endif
	struct cbb_softc *sc = (struct cbb_softc *)FUNC17(brdev);
	struct sysctl_ctx_list *sctx;
	struct sysctl_oid *soid;
	int rid;
	device_t parent;

	parent = FUNC16(brdev);
	FUNC26(&sc->mtx, FUNC15(brdev), "cbb", MTX_DEF);
	sc->chipset = FUNC8(FUNC28(brdev), NULL);
	sc->dev = brdev;
	sc->cbdev = NULL;
	sc->exca[0].pccarddev = NULL;
	sc->domain = FUNC29(brdev);
	sc->pribus = FUNC32(parent);
#if defined(NEW_PCIB) && defined(PCI_RES_BUS)
	pci_write_config(brdev, PCIR_PRIBUS_2, sc->pribus, 1);
	pcib_setup_secbus(brdev, &sc->bus, 1);
#else
	sc->bus.sec = FUNC30(brdev, PCIR_SECBUS_2, 1);
	sc->bus.sub = FUNC30(brdev, PCIR_SUBBUS_2, 1);
#endif
	FUNC1(&sc->rl);

	rid = CBBR_SOCKBASE;
	sc->base_res = FUNC4(brdev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->base_res) {
		FUNC20(brdev, "Could not map register memory\n");
		FUNC25(&sc->mtx);
		return (ENOMEM);
	} else {
		FUNC0((brdev, "Found memory at %jx\n",
		    FUNC36(sc->base_res)));
	}

	sc->bst = FUNC35(sc->base_res);
	sc->bsh = FUNC34(sc->base_res);
	FUNC23(&sc->exca[0], brdev, sc->bst, sc->bsh, CBB_EXCA_OFFSET);
	sc->exca[0].flags |= EXCA_HAS_MEMREG_WIN;
	sc->exca[0].chipset = EXCA_CARDBUS;
	sc->chipinit = cbb_chipinit;
	sc->chipinit(sc);

	/*Sysctls*/
	sctx = FUNC18(brdev);
	soid = FUNC19(brdev);
	FUNC2(sctx, FUNC3(soid), OID_AUTO, "domain",
	    CTLFLAG_RD, &sc->domain, 0, "Domain number");
	FUNC2(sctx, FUNC3(soid), OID_AUTO, "pribus",
	    CTLFLAG_RD, &sc->pribus, 0, "Primary bus number");
	FUNC2(sctx, FUNC3(soid), OID_AUTO, "secbus",
	    CTLFLAG_RD, &sc->bus.sec, 0, "Secondary bus number");
	FUNC2(sctx, FUNC3(soid), OID_AUTO, "subbus",
	    CTLFLAG_RD, &sc->bus.sub, 0, "Subordinate bus number");
#if 0
	SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "memory",
	    CTLFLAG_RD, &sc->subbus, 0, "Memory window open");
	SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "premem",
	    CTLFLAG_RD, &sc->subbus, 0, "Prefetch memory window open");
	SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "io1",
	    CTLFLAG_RD, &sc->subbus, 0, "io range 1 open");
	SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "io2",
	    CTLFLAG_RD, &sc->subbus, 0, "io range 2 open");
#endif

#if !(defined(NEW_PCIB) && defined(PCI_RES_BUS))
	/*
	 * This is a gross hack.  We should be scanning the entire pci
	 * tree, assigning bus numbers in a way such that we (1) can
	 * reserve 1 extra bus just in case and (2) all sub buses
	 * are in an appropriate range.
	 */
	FUNC0((brdev, "Secondary bus is %d\n", sc->bus.sec));
	pribus = FUNC30(brdev, PCIR_PRIBUS_2, 1);
	if (sc->bus.sec == 0 || sc->pribus != pribus) {
		if (curr_bus_number <= sc->pribus)
			curr_bus_number = sc->pribus + 1;
		if (pribus != sc->pribus) {
			FUNC0((brdev, "Setting primary bus to %d\n",
			    sc->pribus));
			FUNC31(brdev, PCIR_PRIBUS_2, sc->pribus, 1);
		}
		sc->bus.sec = curr_bus_number++;
		sc->bus.sub = curr_bus_number++;
		FUNC0((brdev, "Secondary bus set to %d subbus %d\n",
		    sc->bus.sec, sc->bus.sub));
		FUNC31(brdev, PCIR_SECBUS_2, sc->bus.sec, 1);
		FUNC31(brdev, PCIR_SUBBUS_2, sc->bus.sub, 1);
	}
#endif

	/* attach children */
	sc->cbdev = FUNC14(brdev, "cardbus", -1);
	if (sc->cbdev == NULL)
		FUNC0((brdev, "WARNING: cannot add cardbus bus.\n"));
	else if (FUNC21(sc->cbdev) != 0)
		FUNC0((brdev, "WARNING: cannot attach cardbus bus!\n"));

	sc->exca[0].pccarddev = FUNC14(brdev, "pccard", -1);
	if (sc->exca[0].pccarddev == NULL)
		FUNC0((brdev, "WARNING: cannot add pccard bus.\n"));
	else if (FUNC21(sc->exca[0].pccarddev) != 0)
		FUNC0((brdev, "WARNING: cannot attach pccard bus.\n"));

	/* Map and establish the interrupt. */
	rid = 0;
	sc->irq_res = FUNC4(brdev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC20(brdev, "Unable to map IRQ...\n");
		goto err;
	}

	if (FUNC6(brdev, sc->irq_res, INTR_TYPE_AV | INTR_MPSAFE,
	    cbb_pci_filt, NULL, sc, &sc->intrhand)) {
		FUNC20(brdev, "couldn't establish interrupt\n");
		goto err;
	}

	/* reset 16-bit pcmcia bus */
	FUNC22(&sc->exca[0], EXCA_INTR, EXCA_INTR_RESET);

	/* turn off power */
	FUNC10(brdev, CARD_OFF);

	/* CSC Interrupt: Card detect interrupt on */
	FUNC13(sc, CBB_SOCKET_MASK, CBB_SOCKET_MASK_CD);

	/* reset interrupt */
	FUNC12(sc, CBB_SOCKET_EVENT, FUNC9(sc, CBB_SOCKET_EVENT));

	if (bootverbose)
		FUNC11(brdev);

	/* Start the thread */
	if (FUNC24(cbb_event_thread, sc, &sc->event_thread, 0, 0,
	    "%s event thread", FUNC15(brdev))) {
		FUNC20(brdev, "unable to create event thread.\n");
		FUNC27("cbb_create_event_thread");
	}
	sc->sc_root_token = FUNC37(FUNC15(sc->dev));
	return (0);
err:
	if (sc->irq_res)
		FUNC5(brdev, SYS_RES_IRQ, 0, sc->irq_res);
	if (sc->base_res) {
		FUNC5(brdev, SYS_RES_MEMORY, CBBR_SOCKBASE,
		    sc->base_res);
	}
	FUNC25(&sc->mtx);
	return (ENOMEM);
}