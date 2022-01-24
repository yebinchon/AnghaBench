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
typedef  int /*<<< orphan*/  uint32_t ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct glxiic_softc {int old_irq; int /*<<< orphan*/ * irq_res; void* irq_rid; int /*<<< orphan*/ * irq_handler; int /*<<< orphan*/ * gpio_res; void* gpio_rid; int /*<<< orphan*/ * smb_res; void* smb_rid; int /*<<< orphan*/ * iicbus; int /*<<< orphan*/  callout; int /*<<< orphan*/  timeout; int /*<<< orphan*/  mtx; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  ich_func_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RWTUN ; 
 int ENXIO ; 
 int /*<<< orphan*/  GLXIIC_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct glxiic_softc*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLXIIC_MSR_PIC_YSEL_HIGH ; 
 int /*<<< orphan*/  GLXIIC_STATE_IDLE ; 
 int /*<<< orphan*/  IIC_FASTEST ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  OID_AUTO ; 
 void* FUNC3 (int) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int,int,int,int) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int) ; 
 scalar_t__ bus_generic_attach ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct glxiic_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct glxiic_softc* FUNC16 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC17 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC21 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  glxiic_intr ; 
 int /*<<< orphan*/  FUNC23 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC24 (struct glxiic_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (char*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (char*,int,char*,int*) ; 

__attribute__((used)) static int
FUNC29(device_t dev)
{
	struct glxiic_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;
	int error, irq, unit;
	uint32_t irq_map;

	sc = FUNC16(dev);
	sc->dev = dev;
	sc->state = GLXIIC_STATE_IDLE;
	error = 0;

	FUNC1(sc);
	FUNC12(&sc->callout, &sc->mtx, 0);

	sc->smb_rid = FUNC3(0);
	sc->smb_res = FUNC7(dev, SYS_RES_IOPORT, &sc->smb_rid,
	    RF_ACTIVE);
	if (sc->smb_res == NULL) {
		FUNC20(dev, "Could not allocate SMBus I/O port\n");
		error = ENXIO;
		goto out;
	}

	sc->gpio_rid = FUNC3(1);
	sc->gpio_res = FUNC7(dev, SYS_RES_IOPORT,
	    &sc->gpio_rid, RF_SHAREABLE | RF_ACTIVE);
	if (sc->gpio_res == NULL) {
		FUNC20(dev, "Could not allocate GPIO I/O port\n");
		error = ENXIO;
		goto out;
	}

	/* Ensure the controller is not enabled by firmware. */
	FUNC23(sc);

	/* Read the existing IRQ map. */
	irq_map = FUNC27(GLXIIC_MSR_PIC_YSEL_HIGH);
	sc->old_irq = FUNC2(irq_map);

	unit = FUNC19(dev);
	if (FUNC28("glxiic", unit, "irq", &irq) == 0) {
		if (irq < 1 || irq > 15) {
			FUNC20(dev, "Bad value %d for glxiic.%d.irq\n",
			    irq, unit);
			error = ENXIO;
			goto out;
		}

		if (bootverbose)
			FUNC20(dev, "Using irq %d set by hint\n", irq);
	} else if (sc->old_irq != 0) {
		if (bootverbose)
			FUNC20(dev, "Using irq %d set by firmware\n",
			    irq);
		irq = sc->old_irq;
	} else {
		FUNC20(dev, "No irq mapped by firmware");
		FUNC26(" and no glxiic.%d.irq hint provided\n", unit);
		error = ENXIO;
		goto out;
	}

	/* Map the SMBus interrupt to the requested legacy IRQ. */
	FUNC25(irq);

	sc->irq_rid = 0;
	sc->irq_res = FUNC6(dev, SYS_RES_IRQ, &sc->irq_rid,
	    irq, irq, 1, RF_SHAREABLE | RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC20(dev, "Could not allocate IRQ %d\n", irq);
		error = ENXIO;
		goto out;
	}

	error = FUNC9(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, glxiic_intr, sc, &(sc->irq_handler));
	if (error != 0) {
		FUNC20(dev, "Could not setup IRQ handler\n");
		error = ENXIO;
		goto out;
	}

	if ((sc->iicbus = FUNC14(dev, "iicbus", -1)) == NULL) {
		FUNC20(dev, "Could not allocate iicbus instance\n");
		error = ENXIO;
		goto out;
	}

	ctx = FUNC17(dev);
	tree = FUNC18(dev);

	sc->timeout = GLXIIC_DEFAULT_TIMEOUT;
	FUNC4(ctx, FUNC5(tree), OID_AUTO,
	    "timeout", CTLFLAG_RWTUN, &sc->timeout, 0,
	    "activity timeout in ms");

	FUNC22(sc);
	FUNC24(sc, IIC_FASTEST, 0);

	/* Probe and attach the iicbus when interrupts are available. */
	FUNC13((ich_func_t)bus_generic_attach, dev);
	error = 0;

out:
	if (error != 0) {
		FUNC11(&sc->callout);

		if (sc->iicbus != NULL)
			FUNC15(dev, sc->iicbus);
		if (sc->smb_res != NULL) {
			FUNC23(sc);
			FUNC8(dev, SYS_RES_IOPORT, sc->smb_rid,
			    sc->smb_res);
		}
		if (sc->gpio_res != NULL) {
			FUNC21(sc);
			FUNC8(dev, SYS_RES_IOPORT, sc->gpio_rid,
			    sc->gpio_res);
		}
		if (sc->irq_handler != NULL)
			FUNC10(dev, sc->irq_res, sc->irq_handler);
		if (sc->irq_res != NULL)
			FUNC8(dev, SYS_RES_IRQ, sc->irq_rid,
			    sc->irq_res);

		/* Restore the old SMBus interrupt mapping. */
		FUNC25(sc->old_irq);

		FUNC0(sc);
	}

	return (error);
}