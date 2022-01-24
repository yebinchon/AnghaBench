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
struct bwi_softc {int sc_invalid; int /*<<< orphan*/  sc_mem_res; int /*<<< orphan*/  sc_irq_res; int /*<<< orphan*/  sc_irq_handle; } ;
struct bwi_pci_softc {struct bwi_softc sc_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BS_BAR ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_softc*) ; 
 struct bwi_pci_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct bwi_pci_softc *psc = FUNC5(dev);
	struct bwi_softc *sc = &psc->sc_sc;

	/* check if device was removed */
	sc->sc_invalid = !FUNC0(dev);

	FUNC4(sc);

	FUNC1(dev);
	FUNC3(dev, sc->sc_irq_res, sc->sc_irq_handle);
	FUNC2(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);

	FUNC2(dev, SYS_RES_MEMORY, BS_BAR, sc->sc_mem_res);

	return (0);
}