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
struct cmx_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/  ch; int /*<<< orphan*/  ih; void* irq; int /*<<< orphan*/  irq_rid; void* ioport; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  ioport_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INTR_TYPE_TTY ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cmx_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmx_intr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct cmx_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

int
FUNC9(device_t dev)
{
	struct cmx_softc *sc = FUNC4(dev);
#ifdef CMX_INTR
	int rv;
#endif

	sc->ioport = FUNC0(dev, SYS_RES_IOPORT,
			&sc->ioport_rid, RF_ACTIVE);
	if (!sc->ioport) {
		FUNC5(dev, "failed to allocate io port\n");
		return ENOMEM;
	}
	sc->bst = FUNC8(sc->ioport);
	sc->bsh = FUNC7(sc->ioport);

#ifdef CMX_INTR
	sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
			&sc->irq_rid, RF_ACTIVE);
	if (!sc->irq) {
		device_printf(dev, "failed to allocate irq\n");
		return ENOMEM;
	}
	if ((rv = bus_setup_intr(dev, sc->irq, INTR_TYPE_TTY,
			cmx_intr, sc, &sc->ih)) != 0) {
		device_printf(dev, "failed to set up irq\n");
		return ENOMEM;
	}
#endif

	FUNC6(&sc->mtx, FUNC3(dev),
			"cmx softc lock",
			MTX_DEF | MTX_RECURSE);
	FUNC2(&sc->ch, &sc->mtx, 0);

	return 0;
}