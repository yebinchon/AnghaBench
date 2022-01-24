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
typedef  char u_int ;
struct pswitch_softc {int /*<<< orphan*/ * sc_irq; scalar_t__ sc_irqrid; int /*<<< orphan*/  sc_ih; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  irq ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_MISC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,char,char,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pswitch_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pswitch_intr ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct		pswitch_softc *sc;
	phandle_t	node, child;
	char		type[32];
	u_int		irq[2];

	sc = FUNC6(dev);
	node = FUNC8(dev);

	for (child = FUNC0(node); child != 0; child = FUNC2(child)) {
		if (FUNC1(child, "device_type", type, 32) == -1)
			continue;

		if (FUNC9(type, "programmer-switch") == 0)
			break;
	}

	if (child == 0) {
		FUNC7(dev, "could not find correct node\n");
		return (ENXIO);
	}

	if (FUNC1(child, "interrupts", irq, sizeof(irq)) == -1) {
		FUNC7(dev, "could not get interrupt\n");
		return (ENXIO);
	}

	sc->sc_irqrid = 0;
	sc->sc_irq = FUNC3(dev, SYS_RES_IRQ, &sc->sc_irqrid,
	    irq[0], irq[0], 1, RF_ACTIVE);
	if (sc->sc_irq == NULL) {
		FUNC7(dev, "could not allocate interrupt\n");
		return (ENXIO);
	}

	if (FUNC5(dev, sc->sc_irq, INTR_TYPE_MISC,
	    pswitch_intr, NULL, dev, &sc->sc_ih) != 0) {
		FUNC7(dev, "could not setup interrupt\n");
		FUNC4(dev, SYS_RES_IRQ, sc->sc_irqrid,
		    sc->sc_irq);
		return (ENXIO);
	}

	return (0);
}