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
struct cmx_softc {int /*<<< orphan*/ * ioport; int /*<<< orphan*/  ioport_rid; int /*<<< orphan*/ * irq; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/ * ih; int /*<<< orphan*/  mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct cmx_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(device_t dev)
{
	struct cmx_softc *sc = FUNC3(dev);

	FUNC4(&sc->mtx);

#ifdef CMX_INTR
	if (sc->ih) {
		bus_teardown_intr(dev, sc->irq, sc->ih);
		sc->ih = NULL;
	}
	if (sc->irq) {
		bus_release_resource(dev, SYS_RES_IRQ,
				sc->irq_rid, sc->irq);
		sc->irq = NULL;
	}
#endif

	if (sc->ioport) {
		FUNC0(dev, SYS_RES_IOPORT,
				sc->ioport_rid, sc->ioport);
		FUNC1(dev, SYS_RES_IOPORT,
				sc->ioport_rid, sc->ioport);
		sc->ioport = NULL;
	}
	return;
}