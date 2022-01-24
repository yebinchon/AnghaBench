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
typedef  scalar_t__ uint64_t ;
struct pcf_softc {scalar_t__ res_ioport; int pcf_flags; scalar_t__ res_irq; int /*<<< orphan*/  pcf_lock; int /*<<< orphan*/  rid_ioport; int /*<<< orphan*/  rid_irq; int /*<<< orphan*/ * iicbus; int /*<<< orphan*/  intr_cookie; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  own_addr ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pcf_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  IIC_FASTEST ; 
 int IIC_POLLED ; 
 int /*<<< orphan*/  INTR_TYPE_NET ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int FUNC1 (int,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pcf_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcf_intr ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct pcf_softc *sc;
	int rv = ENXIO;
	phandle_t node;
	uint64_t own_addr;

	sc = FUNC0(dev);
	FUNC11(&sc->pcf_lock, FUNC8(dev), "pcf", MTX_DEF);

	/* get OFW node of the pcf */
	if ((node = FUNC12(dev)) == -1) {
		FUNC9(dev, "cannot get OFW node\n");
		goto error;
	}

	/* IO port is mandatory */
	sc->res_ioport = FUNC2(dev, SYS_RES_MEMORY,
	    &sc->rid_ioport, RF_ACTIVE);
	if (sc->res_ioport == 0) {
		FUNC9(dev, "cannot reserve I/O port range\n");
		goto error;
	}

	sc->pcf_flags = FUNC7(dev);

	/*
	 * XXX use poll-mode property?
	 */
	if (!(sc->pcf_flags & IIC_POLLED)) {
		sc->res_irq = FUNC2(dev, SYS_RES_IRQ,
		    &sc->rid_irq, RF_ACTIVE);
		if (sc->res_irq == 0) {
			FUNC9(dev, "can't reserve irq, polled mode.\n");
			sc->pcf_flags |= IIC_POLLED;
		}
	}

	/*
	 * XXX on AXmp there's probably a second IRQ which is the fan fail
	 *     interrupt genererated by the PCF8574 at 0x78.
	 */

	/* get address of the pcf */
	if (FUNC1(node, "own-address", &own_addr, sizeof(own_addr)) ==
	    -1) {
		FUNC9(dev, "cannot get own address\n");
		goto error;
	}
	if (bootverbose)
		FUNC9(dev, "PCF8584 address: 0x%08llx\n", (unsigned
		    long long)own_addr);

	/* reset the chip */
	FUNC13(dev, IIC_FASTEST, own_addr, NULL);

	if (sc->res_irq) {
		rv = FUNC5(dev, sc->res_irq,
		    INTR_TYPE_NET /* | INTR_ENTROPY */, NULL, pcf_intr, sc,
		    &sc->intr_cookie);
		if (rv) {
			FUNC9(dev, "could not setup IRQ\n");
			goto error;
		}
	}

	if ((sc->iicbus = FUNC6(dev, "iicbus", -1)) == NULL)
		FUNC9(dev, "could not allocate iicbus instance\n");

	/* probe and attach the iicbus */
	FUNC3(dev);

	return (0);

error:
	if (sc->res_irq != 0) {
		FUNC4(dev, SYS_RES_IRQ, sc->rid_irq,
		    sc->res_irq);
	}
	if (sc->res_ioport != 0) {
		FUNC4(dev, SYS_RES_MEMORY, sc->rid_ioport,
		    sc->res_ioport);
	}
	FUNC10(&sc->pcf_lock);
	return (rv);
}