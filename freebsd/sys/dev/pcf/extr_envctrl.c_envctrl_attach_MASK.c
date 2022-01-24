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
struct pcf_softc {scalar_t__ res_ioport; int pcf_flags; scalar_t__ res_irq; int /*<<< orphan*/  pcf_lock; int /*<<< orphan*/  rid_ioport; int /*<<< orphan*/  rid_irq; int /*<<< orphan*/ * iicbus; int /*<<< orphan*/  intr_cookie; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pcf_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  IIC_FASTEST ; 
 int IIC_POLLED ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  PCF_DEFAULT_ADDR ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pcf_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcf_intr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct pcf_softc *sc;
	int rv = ENXIO;

	sc = FUNC0(dev);
	FUNC10(&sc->pcf_lock, FUNC7(dev), "pcf", MTX_DEF);

	/* IO port is mandatory */
	sc->res_ioport = FUNC1(dev, SYS_RES_MEMORY,
						&sc->rid_ioport, RF_ACTIVE);
	if (sc->res_ioport == 0) {
		FUNC8(dev, "cannot reserve I/O port range\n");
		goto error;
	}

	sc->pcf_flags = FUNC6(dev);

	if (!(sc->pcf_flags & IIC_POLLED)) {
		sc->res_irq = FUNC1(dev, SYS_RES_IRQ, &sc->rid_irq,
						     RF_ACTIVE);
		if (sc->res_irq == 0) {
			FUNC8(dev, "can't reserve irq, polled mode.\n");
			sc->pcf_flags |= IIC_POLLED;
		}
	}

	/* reset the chip */
	FUNC11(dev, IIC_FASTEST, PCF_DEFAULT_ADDR, NULL);

	rv = FUNC4(dev, sc->res_irq,
			    INTR_TYPE_NET | INTR_MPSAFE /* | INTR_ENTROPY */,
			    NULL, pcf_intr, sc, &sc->intr_cookie);
	if (rv) {
		FUNC8(dev, "could not setup IRQ\n");
		goto error;
	}

	if ((sc->iicbus = FUNC5(dev, "iicbus", -1)) == NULL)
		FUNC8(dev, "could not allocate iicbus instance\n");

	/* probe and attach the iicbus */
	FUNC2(dev);

	return (0);

error:
	if (sc->res_irq != 0) {
		FUNC3(dev, SYS_RES_IRQ, sc->rid_irq,
				     sc->res_irq);
	}
	if (sc->res_ioport != 0) {
		FUNC3(dev, SYS_RES_MEMORY, sc->rid_ioport,
				     sc->res_ioport);
	}
	FUNC9(&sc->pcf_lock);
	return (rv);
}