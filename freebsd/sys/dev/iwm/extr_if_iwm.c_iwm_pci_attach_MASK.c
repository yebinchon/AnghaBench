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
typedef  int uint16_t ;
struct iwm_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_dmat; int /*<<< orphan*/ * sc_ih; int /*<<< orphan*/ * sc_irq; int /*<<< orphan*/ * sc_mem; int /*<<< orphan*/  sc_sh; int /*<<< orphan*/  sc_st; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int PCIM_STATUS_INTxSTATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIR_STATUS ; 
 int /*<<< orphan*/  PCI_CFG_RETRY_TIMEOUT ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct iwm_softc*,int /*<<< orphan*/ **) ; 
 struct iwm_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  iwm_intr ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct iwm_softc *sc;
	int count, error, rid;
	uint16_t reg;

	sc = FUNC4(dev);

	/* We disable the RETRY_TIMEOUT register (0x41) to keep
	 * PCI Tx retries from interfering with C3 CPU state */
	FUNC9(dev, PCI_CFG_RETRY_TIMEOUT, 0x00, 1);

	/* Enable bus-mastering and hardware bug workaround. */
	FUNC7(dev);
	reg = FUNC8(dev, PCIR_STATUS, sizeof(reg));
	/* if !MSI */
	if (reg & PCIM_STATUS_INTxSTATE) {
		reg &= ~PCIM_STATUS_INTxSTATE;
	}
	FUNC9(dev, PCIR_STATUS, reg, sizeof(reg));

	rid = FUNC0(0);
	sc->sc_mem = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->sc_mem == NULL) {
		FUNC5(sc->sc_dev, "can't map mem space\n");
		return (ENXIO);
	}
	sc->sc_st = FUNC11(sc->sc_mem);
	sc->sc_sh = FUNC10(sc->sc_mem);

	/* Install interrupt handler. */
	count = 1;
	rid = 0;
	if (FUNC6(dev, &count) == 0)
		rid = 1;
	sc->sc_irq = FUNC1(dev, SYS_RES_IRQ, &rid, RF_ACTIVE |
	    (rid != 0 ? 0 : RF_SHAREABLE));
	if (sc->sc_irq == NULL) {
		FUNC5(dev, "can't map interrupt\n");
			return (ENXIO);
	}
	error = FUNC3(dev, sc->sc_irq, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, iwm_intr, sc, &sc->sc_ih);
	if (sc->sc_ih == NULL) {
		FUNC5(dev, "can't establish interrupt");
			return (ENXIO);
	}
	sc->sc_dmat = FUNC2(sc->sc_dev);

	return (0);
}