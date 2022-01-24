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
struct wi_softc {scalar_t__ wi_bus_type; int iobase_rid; int mem_rid; int irq_rid; int /*<<< orphan*/  sc_unit; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * irq; int /*<<< orphan*/ * mem; void* wi_bhandle; void* wi_btag; int /*<<< orphan*/ * iobase; int /*<<< orphan*/  wi_io_addr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ WI_BUS_PCCARD ; 
 scalar_t__ WI_BUS_PCI_NATIVE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 struct wi_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(device_t dev, int rid)
{
	struct wi_softc	*sc = FUNC2(dev);

	if (sc->wi_bus_type != WI_BUS_PCI_NATIVE) {
		sc->iobase_rid = rid;
		sc->iobase = FUNC1(dev, SYS_RES_IOPORT,
		    &sc->iobase_rid, (1 << 6),
		    FUNC8(1 << 6) | RF_ACTIVE);
		if (sc->iobase == NULL) {
			FUNC4(dev, "No I/O space?!\n");
			return ENXIO;
		}

		sc->wi_io_addr = FUNC7(sc->iobase);
		sc->wi_btag = FUNC6(sc->iobase);
		sc->wi_bhandle = FUNC5(sc->iobase);
	} else {
		sc->mem_rid = rid;
		sc->mem = FUNC0(dev, SYS_RES_MEMORY,
		    &sc->mem_rid, RF_ACTIVE);
		if (sc->mem == NULL) {
			FUNC4(dev, "No Mem space on prism2.5?\n");
			return ENXIO;
		}

		sc->wi_btag = FUNC6(sc->mem);
		sc->wi_bhandle = FUNC5(sc->mem);
	}

	sc->irq_rid = 0;
	sc->irq = FUNC0(dev, SYS_RES_IRQ, &sc->irq_rid,
	    RF_ACTIVE |
	    ((sc->wi_bus_type == WI_BUS_PCCARD) ? 0 : RF_SHAREABLE));
	if (sc->irq == NULL) {
		FUNC9(dev);
		FUNC4(dev, "No irq?!\n");
		return ENXIO;
	}

	sc->sc_dev = dev;
	sc->sc_unit = FUNC3(dev);
	return 0;
}