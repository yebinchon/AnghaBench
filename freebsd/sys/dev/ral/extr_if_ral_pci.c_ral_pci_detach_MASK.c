#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rt2560_softc {int sc_invalid; } ;
struct TYPE_4__ {struct rt2560_softc sc_rt2560; } ;
struct ral_pci_softc {int /*<<< orphan*/  mem; int /*<<< orphan*/  irq; TYPE_1__* sc_opns; int /*<<< orphan*/ * sc_ih; TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* detach ) (struct ral_pci_softc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ral_pci_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ral_pci_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct ral_pci_softc *psc = FUNC4(dev);
	struct rt2560_softc *sc = &psc->u.sc_rt2560;
	
	/* check if device was removed */
	sc->sc_invalid = !FUNC0(dev);

	if (psc->sc_ih != NULL)
		FUNC3(dev, psc->irq, psc->sc_ih);
	(*psc->sc_opns->detach)(psc);

	FUNC1(dev);
	FUNC2(dev, SYS_RES_IRQ, FUNC6(psc->irq),
	    psc->irq);
	FUNC5(dev);

	FUNC2(dev, SYS_RES_MEMORY, FUNC6(psc->mem),
	    psc->mem);

	return 0;
}