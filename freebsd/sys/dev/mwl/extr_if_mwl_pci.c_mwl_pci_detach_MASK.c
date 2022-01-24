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
struct mwl_softc {int sc_invalid; int /*<<< orphan*/  sc_dmat; } ;
struct mwl_pci_softc {int /*<<< orphan*/  sc_sr0; int /*<<< orphan*/  sc_sr1; int /*<<< orphan*/  sc_irq; int /*<<< orphan*/  sc_ih; struct mwl_softc sc_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BS_BAR0 ; 
 int /*<<< orphan*/  BS_BAR1 ; 
 int /*<<< orphan*/  FUNC0 (struct mwl_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mwl_pci_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mwl_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct mwl_pci_softc *psc = FUNC6(dev);
	struct mwl_softc *sc = &psc->sc_sc;

	/* check if device was removed */
	sc->sc_invalid = !FUNC1(dev);

	FUNC7(sc);

	FUNC3(dev);
	FUNC5(dev, psc->sc_irq, psc->sc_ih);
	FUNC4(dev, SYS_RES_IRQ, 0, psc->sc_irq);

	FUNC2(sc->sc_dmat);
	FUNC4(dev, SYS_RES_MEMORY, BS_BAR1, psc->sc_sr1);
	FUNC4(dev, SYS_RES_MEMORY, BS_BAR0, psc->sc_sr0);

	FUNC0(sc);

	return (0);
}