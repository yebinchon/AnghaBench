#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct intr_pic {int dummy; } ;
struct bcm_mips_softc {size_t num_cpuirqs; size_t timer_irq; TYPE_1__* cpuirqs; TYPE_1__* isrcs; int /*<<< orphan*/  dev; } ;
typedef  size_t rman_res_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int irq_rid; int /*<<< orphan*/  isrc; } ;

/* Variables and functions */
 size_t BCM_MIPS_IRQ_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_mips_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_mips_softc*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 size_t INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_mips_softc*,TYPE_1__*) ; 
 int FUNC3 (struct bcm_mips_softc*,TYPE_1__*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bcm_mips_softc*,TYPE_1__*) ; 
 uintptr_t FUNC5 (struct bcm_mips_softc*) ; 
 int FUNC6 (struct bcm_mips_softc*) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 struct bcm_mips_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intr_pic* FUNC12 (int /*<<< orphan*/ ,uintptr_t) ; 
 size_t FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,size_t) ; 

int
FUNC15(device_t dev, u_int num_cpuirqs, u_int timer_irq,
    driver_filter_t filter)
{
	struct bcm_mips_softc	*sc;
	struct intr_pic		*pic;
	uintptr_t		 xref;
	u_int			 irq_rid;
	rman_res_t		 irq;
	int			 error;

	sc = FUNC8(dev);
	sc->dev = dev;
	sc->num_cpuirqs = num_cpuirqs;
	sc->timer_irq = timer_irq;

	/* Must not exceed the actual size of our fixed IRQ array */
	if (sc->num_cpuirqs > FUNC13(sc->cpuirqs)) {
		FUNC9(dev, "%u nirqs exceeds maximum supported %zu",
		    sc->num_cpuirqs, FUNC13(sc->cpuirqs));
		return (ENXIO);
	}

	pic = NULL;
	xref = FUNC5(sc);

	FUNC1(sc);

	/* Register our interrupt sources */
	if ((error = FUNC6(sc))) {
		FUNC0(sc);
		return (error);
	}

	/* Initialize our CPU interrupt state */
	irq_rid = FUNC7(dev); /* last bhnd-assigned RID + 1 */
	irq = 0;
	for (u_int i = 0; i < sc->num_cpuirqs; i++) {
		/* Must not overflow signed resource ID representation */
		if (irq_rid >= INT_MAX) {
			FUNC9(dev, "exhausted IRQ resource IDs\n");
			error = ENOMEM;
			goto failed;
		}

		if (irq == sc->timer_irq) {
			/* Mark the CPU timer's IRQ as unavailable */
			error = FUNC4(sc,
			    &sc->cpuirqs[i]);
		} else {
			/* Initialize state */
			error = FUNC3(sc, &sc->cpuirqs[i],
			    irq_rid, irq, filter);
		}

		if (error)
			goto failed;

		/* Increment IRQ and resource ID for next allocation */
		irq_rid++;
		irq++;
	}

	/* Sanity check; our shared IRQ must be available */
	if (sc->num_cpuirqs <= BCM_MIPS_IRQ_SHARED)
		FUNC14("missing shared interrupt %d\n", BCM_MIPS_IRQ_SHARED);

	if (sc->cpuirqs[BCM_MIPS_IRQ_SHARED].irq_rid == -1)
		FUNC14("shared interrupt %d unavailable", BCM_MIPS_IRQ_SHARED);

	/* Register PIC */
	if ((pic = FUNC12(dev, xref)) == NULL) {
		FUNC9(dev, "error registering PIC\n");
		error = ENXIO;
		goto failed;
	}

	return (0);

failed:
	/* Deregister PIC before performing any other cleanup */
	if (pic != NULL)
		FUNC11(dev, 0);

	/* Deregister all interrupt sources */
	for (size_t i = 0; i < FUNC13(sc->isrcs); i++)
		FUNC10(&sc->isrcs[i].isrc);

	/* Free our MIPS CPU interrupt handler state */
	for (u_int i = 0; i < sc->num_cpuirqs; i++)
		FUNC2(sc, &sc->cpuirqs[i]);

	FUNC0(sc);
	return (error);
}