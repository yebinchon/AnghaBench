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
struct jz4780_pic_softc {int /*<<< orphan*/ * pic_res; int /*<<< orphan*/  pic_intrhand; int /*<<< orphan*/  pic_irqs; int /*<<< orphan*/  nirqs; int /*<<< orphan*/  pic_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_CLK ; 
 int /*<<< orphan*/  JZ_ICMR0 ; 
 int /*<<< orphan*/  JZ_ICMR1 ; 
 int /*<<< orphan*/  FUNC0 (struct jz4780_pic_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct jz4780_pic_softc*,int /*<<< orphan*/ *) ; 
 struct jz4780_pic_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/  jz4780_pic_intr ; 
 scalar_t__ FUNC8 (struct jz4780_pic_softc*) ; 
 int /*<<< orphan*/  jz4780_pic_spec ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 intptr_t FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct jz4780_pic_softc *sc;
	intptr_t xref;

	xref = FUNC10(dev);

	sc = FUNC4(dev);

	if (FUNC1(dev, jz4780_pic_spec, sc->pic_res)) {
		FUNC5(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	sc->pic_dev = dev;

	/* Set the number of interrupts */
	sc->nirqs = FUNC9(sc->pic_irqs);

	/* Mask all interrupts */
	FUNC0(sc, JZ_ICMR0, 0xFFFFFFFF);
	FUNC0(sc, JZ_ICMR1, 0xFFFFFFFF);

	/* Register the interrupts */
	if (FUNC8(sc) != 0) {
		FUNC5(dev, "could not register PIC ISRCs\n");
		goto cleanup;
	}

	/*
	 * Now, when everything is initialized, it's right time to
	 * register interrupt controller to interrupt framefork.
	 */
	if (FUNC7(dev, xref) == NULL) {
		FUNC5(dev, "could not register PIC\n");
		goto cleanup;
	}

	if (FUNC3(dev, sc->pic_res[1], INTR_TYPE_CLK,
	    jz4780_pic_intr, NULL, sc, &sc->pic_intrhand)) {
		FUNC5(dev, "could not setup irq handler\n");
		FUNC6(dev, xref);
		goto cleanup;
	}

	return (0);

cleanup:
	FUNC2(dev, jz4780_pic_spec, sc->pic_res);

	return(ENXIO);
}