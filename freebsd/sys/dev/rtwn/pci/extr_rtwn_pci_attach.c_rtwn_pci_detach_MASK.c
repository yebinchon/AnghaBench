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
struct rtwn_softc {int /*<<< orphan*/  sc_mtx; } ;
struct rtwn_pci_softc {int /*<<< orphan*/ * mem; int /*<<< orphan*/ * irq; int /*<<< orphan*/  pc_ih; struct rtwn_softc pc_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int RTWN_PCI_NTXQUEUES ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rtwn_pci_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtwn_softc*,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct rtwn_pci_softc *pc = FUNC2(dev);
	struct rtwn_softc *sc = &pc->pc_sc;
	int i;

	/* Generic detach. */
	FUNC6(sc);

	/* Uninstall interrupt handler. */
	if (pc->irq != NULL) {
		FUNC1(dev, pc->irq, pc->pc_ih);
		FUNC0(dev, SYS_RES_IRQ, FUNC5(pc->irq),
		    pc->irq);
		FUNC4(dev);
	}

	/* Free Tx/Rx buffers. */
	for (i = 0; i < RTWN_PCI_NTXQUEUES; i++)
		FUNC9(sc, i);
	FUNC8(sc);

	if (pc->mem != NULL)
		FUNC0(dev, SYS_RES_MEMORY,
		    FUNC5(pc->mem), pc->mem);

	FUNC7(sc);
	FUNC3(&sc->sc_mtx);

	return (0);
}