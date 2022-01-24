#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* rm_descr; void* rm_type; } ;
struct apb_softc {int /*<<< orphan*/ * sc_intr_counter; int /*<<< orphan*/  sc_misc_ih; int /*<<< orphan*/ * sc_misc_irq; TYPE_1__ apb_irq_rman; TYPE_1__ apb_mem_rman; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 size_t APB_INTR_PMC ; 
 scalar_t__ APB_IRQ_BASE ; 
 scalar_t__ APB_IRQ_END ; 
 scalar_t__ AR71XX_APB_BASE ; 
 scalar_t__ AR71XX_APB_SIZE ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_MISC ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 void* RMAN_ARRAY ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  apb_filter ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct apb_softc*,int /*<<< orphan*/ *) ; 
 struct apb_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct apb_softc *sc = FUNC6(dev);
	int rid = 0;

	FUNC8(dev, "APB Bus bridge");

	sc->apb_mem_rman.rm_type = RMAN_ARRAY;
	sc->apb_mem_rman.rm_descr = "APB memory window";

	if (FUNC11(&sc->apb_mem_rman) != 0 ||
	    FUNC12(&sc->apb_mem_rman, 
			AR71XX_APB_BASE, 
			AR71XX_APB_BASE + AR71XX_APB_SIZE - 1) != 0)
		FUNC10("apb_attach: failed to set up memory rman");

	sc->apb_irq_rman.rm_type = RMAN_ARRAY;
	sc->apb_irq_rman.rm_descr = "APB IRQ";

	if (FUNC11(&sc->apb_irq_rman) != 0 ||
	    FUNC12(&sc->apb_irq_rman, 
			APB_IRQ_BASE, APB_IRQ_END) != 0)
		FUNC10("apb_attach: failed to set up IRQ rman");

	if ((sc->sc_misc_irq = FUNC1(dev, SYS_RES_IRQ, &rid, 
	    RF_SHAREABLE | RF_ACTIVE)) == NULL) {
		FUNC7(dev, "unable to allocate IRQ resource\n");
		return (ENXIO);
	}

	if ((FUNC5(dev, sc->sc_misc_irq, INTR_TYPE_MISC, 
	    apb_filter, NULL, sc, &sc->sc_misc_ih))) {
		FUNC7(dev,
		    "WARNING: unable to register interrupt handler\n");
		return (ENXIO);
	}

	FUNC4(dev);
	FUNC2(dev);
	FUNC3(dev);

	/*
	 * Unmask performance counter IRQ
	 */
	FUNC0((void*)APB_INTR_PMC);
	sc->sc_intr_counter[APB_INTR_PMC] = FUNC9("apb irq5: pmc");

	return (0);
}