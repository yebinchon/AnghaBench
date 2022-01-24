#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lance_softc {int /*<<< orphan*/  sc_mem; } ;
struct TYPE_2__ {struct lance_softc lsc; } ;
struct le_pci_softc {int /*<<< orphan*/  sc_rres; int /*<<< orphan*/  sc_ires; int /*<<< orphan*/  sc_pdmat; int /*<<< orphan*/  sc_dmat; int /*<<< orphan*/  sc_dmam; TYPE_1__ sc_am79900; int /*<<< orphan*/  sc_ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lance_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct le_pci_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct le_pci_softc *lesc;
	struct lance_softc *sc;

	lesc = FUNC7(dev);
	sc = &lesc->sc_am79900.lsc;

	FUNC6(dev, lesc->sc_ires, lesc->sc_ih);
	FUNC1(&lesc->sc_am79900);
	FUNC3(lesc->sc_dmat, lesc->sc_dmam);
	FUNC4(lesc->sc_dmat, sc->sc_mem, lesc->sc_dmam);
	FUNC2(lesc->sc_dmat);
	FUNC2(lesc->sc_pdmat);
	FUNC5(dev, SYS_RES_IRQ,
	    FUNC8(lesc->sc_ires), lesc->sc_ires);
	FUNC5(dev, SYS_RES_IOPORT,
	    FUNC8(lesc->sc_rres), lesc->sc_rres);
	FUNC0(sc);

	return (0);
}