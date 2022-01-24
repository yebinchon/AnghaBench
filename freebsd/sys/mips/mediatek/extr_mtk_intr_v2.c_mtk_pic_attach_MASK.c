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
struct mtk_pic_softc {int /*<<< orphan*/ * pic_res; int /*<<< orphan*/  pic_intrhand; int /*<<< orphan*/  pic_irqs; int /*<<< orphan*/  nirqs; int /*<<< orphan*/  mutex; int /*<<< orphan*/  pic_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_CLK ; 
 int /*<<< orphan*/  MTK_INTDIS ; 
 int /*<<< orphan*/  MTK_INTENA ; 
 int /*<<< orphan*/  MTK_INTTYPE ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_pic_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mtk_pic_softc*,int /*<<< orphan*/ *) ; 
 struct mtk_pic_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/  mtk_pic_intr ; 
 scalar_t__ FUNC8 (struct mtk_pic_softc*) ; 
 int /*<<< orphan*/  mtk_pic_spec ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 intptr_t FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct mtk_pic_softc *sc;
	intptr_t xref = FUNC11(dev);

	sc = FUNC4(dev);

	if (FUNC1(dev, mtk_pic_spec, sc->pic_res)) {
		FUNC5(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	sc->pic_dev = dev;

	/* Initialize mutex */
	FUNC9(&sc->mutex, "PIC lock", "", MTX_SPIN);

	/* Set the number of interrupts */
	sc->nirqs = FUNC10(sc->pic_irqs);

	/* Mask all interrupts */
	FUNC0(sc, MTK_INTDIS, 0xFFFFFFFF);

	/* But enable interrupt generation/masking */
	FUNC0(sc, MTK_INTENA, 0x00000000);

	/* Set all interrupts to type 0 */
	FUNC0(sc, MTK_INTTYPE, 0xFFFFFFFF);

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
	    mtk_pic_intr, NULL, sc, &sc->pic_intrhand)) {
		FUNC5(dev, "could not setup irq handler\n");
		FUNC6(dev, xref);
		goto cleanup;
	}
	return (0);

cleanup:
	FUNC2(dev, mtk_pic_spec, sc->pic_res);
	return(ENXIO);
}