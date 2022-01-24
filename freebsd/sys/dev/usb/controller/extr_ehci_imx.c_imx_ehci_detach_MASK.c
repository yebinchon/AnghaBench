#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int sc_flags; int /*<<< orphan*/  sc_bus; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/  sc_irq_res; } ;
struct imx_ehci_softc {int /*<<< orphan*/ * ehci_mem_res; int /*<<< orphan*/ * ehci_irq_res; TYPE_1__ ehci_softc; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EHCI_SCFLG_DONEINIT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct imx_ehci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct imx_ehci_softc *sc;
	ehci_softc_t *esc;
	int err;

	sc = FUNC3(dev);

	esc = &sc->ehci_softc;

	/* First detach all children; we can't detach if that fails. */
	if ((err = FUNC2(dev)) != 0)
		return (err);

	if (esc->sc_flags & EHCI_SCFLG_DONEINIT)
		FUNC4(esc);
	if (esc->sc_intr_hdl != NULL)
		FUNC1(dev, esc->sc_irq_res, 
		    esc->sc_intr_hdl);
	if (sc->ehci_irq_res != NULL)
		FUNC0(dev, SYS_RES_IRQ, 0, 
		    sc->ehci_irq_res);
	if (sc->ehci_mem_res != NULL)
		FUNC0(dev, SYS_RES_MEMORY, 0,
		    sc->ehci_mem_res);

	FUNC5(&esc->sc_bus, &ehci_iterate_hw_softc);

	return (0);
}