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
struct rc_softc {int sc_irqrid; int /*<<< orphan*/ ** sc_port; int /*<<< orphan*/ * sc_irq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IOBASE_ADDRS ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct rc_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t dev)
{
	struct rc_softc *sc;
	int i;

	sc = FUNC1(dev);
	if (sc->sc_irq != NULL) {
		FUNC0(dev, SYS_RES_IRQ, sc->sc_irqrid,
		    sc->sc_irq);
		sc->sc_irq = NULL;
	}
	for (i = 0; i < IOBASE_ADDRS; i++) {
		if (sc->sc_port[i] == NULL)
			break;
		FUNC0(dev, SYS_RES_IOPORT, i, sc->sc_port[i]);
		sc->sc_port[i] = NULL;
	}
}