#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rt2560_softc {int sc_invalid; int /*<<< orphan*/  sc_sh; int /*<<< orphan*/  sc_st; } ;
struct TYPE_5__ {struct rt2560_softc sc_rt2560; } ;
struct ral_pci_softc {int /*<<< orphan*/  sc_ih; TYPE_2__* sc_opns; int /*<<< orphan*/ * irq; int /*<<< orphan*/ * mem; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int (* attach ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  intr; } ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ral_pci_softc*,int /*<<< orphan*/ *) ; 
 struct ral_pci_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ ral_msi_disable ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__ ral_rt2560_opns ; 
 TYPE_2__ ral_rt2661_opns ; 
 TYPE_2__ ral_rt2860_opns ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct ral_pci_softc *psc = FUNC4(dev);
	struct rt2560_softc *sc = &psc->u.sc_rt2560;
	int count, error, rid;

	FUNC7(dev);

	switch (FUNC8(dev)) {
	case 0x0201:
		psc->sc_opns = &ral_rt2560_opns;
		break;
	case 0x0301:
	case 0x0302:
	case 0x0401:
		psc->sc_opns = &ral_rt2661_opns;
		break;
	default:
		psc->sc_opns = &ral_rt2860_opns;
		break;
	}

	rid = FUNC0(0);
	psc->mem = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (psc->mem == NULL) {
		FUNC5(dev, "could not allocate memory resource\n");
		return ENXIO;
	}

	sc->sc_st = FUNC12(psc->mem);
	sc->sc_sh = FUNC11(psc->mem);
	sc->sc_invalid = 1;
	
	rid = 0;
	if (ral_msi_disable == 0) {
		count = 1;
		if (FUNC6(dev, &count) == 0)
			rid = 1;
	}
	psc->irq = FUNC1(dev, SYS_RES_IRQ, &rid, RF_ACTIVE |
	    (rid != 0 ? 0 : RF_SHAREABLE));
	if (psc->irq == NULL) {
		FUNC5(dev, "could not allocate interrupt resource\n");
		FUNC9(dev);
		FUNC2(dev, SYS_RES_MEMORY,
		    FUNC13(psc->mem), psc->mem);
		return ENXIO;
	}

	error = (*psc->sc_opns->attach)(dev, FUNC8(dev));
	if (error != 0) {
		(void)FUNC10(dev);
		return error;
	}

	/*
	 * Hook our interrupt after all initialization is complete.
	 */
	error = FUNC3(dev, psc->irq, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, psc->sc_opns->intr, psc, &psc->sc_ih);
	if (error != 0) {
		FUNC5(dev, "could not set up interrupt\n");
		(void)FUNC10(dev);
		return error;
	}
	sc->sc_invalid = 0;
	
	return 0;
}