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
struct TYPE_3__ {char* rm_descr; int /*<<< orphan*/  rm_type; } ;
struct ciu_softc {TYPE_1__ irq_rman; int /*<<< orphan*/ * ciu_irq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CIU_IRQ_EN0_BEGIN ; 
 unsigned int CIU_IRQ_EN0_COUNT ; 
 int CIU_IRQ_EN1_BEGIN ; 
 unsigned int CIU_IRQ_EN1_COUNT ; 
 int /*<<< orphan*/  CIU_IRQ_EN1_END ; 
 int CIU_IRQ_HARD ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MAXCOMLEN ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RMAN_ARRAY ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ciu_softc*,int /*<<< orphan*/ *) ; 
 void** ciu_en0_intrcnt ; 
 void** ciu_en1_intrcnt ; 
 int /*<<< orphan*/  ciu_intr ; 
 struct ciu_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC6 (char*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	char name[MAXCOMLEN + 1];
	struct ciu_softc *sc;
	unsigned i;
	int error;
	int rid;

	sc = FUNC4(dev);

	rid = 0;
	sc->ciu_irq = FUNC0(dev, SYS_RES_IRQ, &rid, CIU_IRQ_HARD,
					 CIU_IRQ_HARD, 1, RF_ACTIVE);
	if (sc->ciu_irq == NULL) {
		FUNC5(dev, "could not allocate irq%d\n", CIU_IRQ_HARD);
		return (ENXIO);
	}

	error = FUNC3(dev, sc->ciu_irq, INTR_TYPE_MISC, ciu_intr,
			       NULL, sc, NULL);
	if (error != 0) {
		FUNC5(dev, "bus_setup_intr failed: %d\n", error);
		return (error);
	}

	sc->irq_rman.rm_type = RMAN_ARRAY;
	sc->irq_rman.rm_descr = "CIU IRQ";
	
	error = FUNC7(&sc->irq_rman);
	if (error != 0)
		return (error);

	/*
	 * We have two contiguous IRQ regions, use a single rman.
	 */
	error = FUNC8(&sc->irq_rman, CIU_IRQ_EN0_BEGIN,
				   CIU_IRQ_EN1_END);
	if (error != 0)
		return (error);

	for (i = 0; i < CIU_IRQ_EN0_COUNT; i++) {
		FUNC9(name, sizeof name, "int%d:", i + CIU_IRQ_EN0_BEGIN);
		ciu_en0_intrcnt[i] = FUNC6(name);
	}

	for (i = 0; i < CIU_IRQ_EN1_COUNT; i++) {
		FUNC9(name, sizeof name, "int%d:", i + CIU_IRQ_EN1_BEGIN);
		ciu_en1_intrcnt[i] = FUNC6(name);
	}

	FUNC2(dev);
	FUNC1(dev);

	return (0);
}