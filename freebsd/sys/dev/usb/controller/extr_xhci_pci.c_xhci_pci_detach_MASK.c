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
struct xhci_softc {int /*<<< orphan*/ * sc_msix_res; int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/  sc_callout; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_XHCI_CBMEM ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct xhci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t self)
{
	struct xhci_softc *sc = FUNC3(self);

	/* during module unload there are lots of children leftover */
	FUNC2(self);

	FUNC7(&sc->sc_callout);
	FUNC8(sc);
	FUNC9(sc);

	FUNC4(self);

	if (sc->sc_irq_res && sc->sc_intr_hdl) {
		FUNC1(self, sc->sc_irq_res, sc->sc_intr_hdl);
		sc->sc_intr_hdl = NULL;
	}
	if (sc->sc_irq_res) {
		FUNC0(self, SYS_RES_IRQ,
		    FUNC6(sc->sc_irq_res), sc->sc_irq_res);
		sc->sc_irq_res = NULL;
		FUNC5(self);
	}
	if (sc->sc_io_res) {
		FUNC0(self, SYS_RES_MEMORY, PCI_XHCI_CBMEM,
		    sc->sc_io_res);
		sc->sc_io_res = NULL;
	}
	if (sc->sc_msix_res) {
		FUNC0(self, SYS_RES_MEMORY,
		    FUNC6(sc->sc_msix_res), sc->sc_msix_res);
		sc->sc_msix_res = NULL;
	}

	FUNC10(sc);

	return (0);
}