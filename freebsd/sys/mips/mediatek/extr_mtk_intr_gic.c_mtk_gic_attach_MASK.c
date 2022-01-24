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
struct mtk_gic_softc {int /*<<< orphan*/  gic_res; int /*<<< orphan*/  gic_irqs; int /*<<< orphan*/  nirqs; int /*<<< orphan*/  mutex; int /*<<< orphan*/  gic_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_CLK ; 
 int /*<<< orphan*/  MTK_INTDIS ; 
 int /*<<< orphan*/  MTK_INTPOL ; 
 int /*<<< orphan*/  MTK_INTTRIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_gic_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mtk_gic_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mtk_gic_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 intptr_t FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/  mtk_gic_intr ; 
 scalar_t__ FUNC12 (struct mtk_gic_softc*) ; 
 int /*<<< orphan*/  mtk_gic_spec ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct mtk_gic_softc *sc;
	intptr_t xref = FUNC10(dev);
	int i;

	sc = FUNC8(dev);

	if (FUNC5(dev, mtk_gic_spec, sc->gic_res)) {
		FUNC9(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	sc->gic_dev = dev;

	/* Initialize mutex */
	FUNC13(&sc->mutex, "PIC lock", "", MTX_SPIN);

	/* Set the number of interrupts */
	sc->nirqs = FUNC14(sc->gic_irqs);

	/* Mask all interrupts */
	FUNC4(sc, MTK_INTDIS, 0xFFFFFFFF);

	/* All interrupts are of type level */
	FUNC4(sc, MTK_INTTRIG, 0x00000000);

	/* All interrupts are of positive polarity */
	FUNC4(sc, MTK_INTPOL, 0xFFFFFFFF);

	/*
	 * Route all interrupts to pin 0 on VPE 0;
	 */
	for (i = 0; i < 32; i++) {
		FUNC4(sc, FUNC0(i), FUNC2(0));
		FUNC4(sc, FUNC1(i, 0), FUNC3(0));
	}

	/* Register the interrupts */
	if (FUNC12(sc) != 0) {
		FUNC9(dev, "could not register GIC ISRCs\n");
		goto cleanup;
	}

	/*
	 * Now, when everything is initialized, it's right time to
	 * register interrupt controller to interrupt framefork.
	 */
	if (FUNC11(dev, xref) == NULL) {
		FUNC9(dev, "could not register PIC\n");
		goto cleanup;
	}

	FUNC7("gic", mtk_gic_intr, NULL, sc, 0, INTR_TYPE_CLK,
	    NULL);

	return (0);

cleanup:
	FUNC6(dev, mtk_gic_spec, sc->gic_res);
	return(ENXIO);
}