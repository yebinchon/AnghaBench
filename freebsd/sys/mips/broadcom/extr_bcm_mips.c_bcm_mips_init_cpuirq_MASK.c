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
typedef  scalar_t__ u_int ;
struct resource {int dummy; } ;
struct bcm_mips_softc {int /*<<< orphan*/  dev; } ;
struct bcm_mips_cpuirq {int irq_rid; scalar_t__ refs; int /*<<< orphan*/ * isrc_solo; void* irq_cookie; struct resource* irq_res; scalar_t__ mips_irq; struct bcm_mips_softc* sc; } ;
typedef  int /*<<< orphan*/  driver_filter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_mips_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_mips_softc*) ; 
 int EINVAL ; 
 int ENXIO ; 
 int INTR_EXCL ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ NHARD_IRQS ; 
 scalar_t__ NSOFT_IRQS ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 struct resource* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct resource*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct bcm_mips_cpuirq*,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

__attribute__((used)) static int
FUNC10(struct bcm_mips_softc *sc, struct bcm_mips_cpuirq *cpuirq,
    int rid, u_int irq, driver_filter_t filter)
{
	struct resource	*res;
	void		*cookie;
	u_int		 irq_real;
	int		 error;

	/* Must fall within MIPS HW IRQ range */
	if (irq >= NHARD_IRQS)
		return (EINVAL);

	/* HW IRQs are numbered relative to SW IRQs */
	irq_real = irq + NSOFT_IRQS;

	/* Try to assign and allocate the resource */
	FUNC0(sc);

	FUNC2(cpuirq->sc == NULL, ("cpuirq already initialized"));

	error = FUNC6(sc->dev, SYS_RES_IRQ, rid, irq_real, 1);
	if (error) {
		FUNC1(sc);
		FUNC8(sc->dev, "failed to assign interrupt %u: "
		    "%d\n", irq, error);
		return (error);
	}

	res = FUNC3(sc->dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
	if (res == NULL) {
		FUNC1(sc);
		FUNC8(sc->dev, "failed to allocate interrupt "
			"%u resource\n", irq);
		FUNC4(sc->dev, SYS_RES_IRQ, rid);
		return (ENXIO);
	}

	error = FUNC7(sc->dev, res,
	    INTR_TYPE_MISC | INTR_MPSAFE | INTR_EXCL, filter, NULL, cpuirq,
	    &cookie);
	if (error) {
		FUNC1(sc);

		FUNC9("failed to setup internal interrupt handler: %d\n",
		    error);

		FUNC5(sc->dev, SYS_RES_IRQ, rid, res);
		FUNC4(sc->dev, SYS_RES_IRQ, rid);

		return (error);
	}

	/* Initialize CPU IRQ state */
	cpuirq->sc = sc;
	cpuirq->mips_irq = irq;
	cpuirq->irq_rid = rid;
	cpuirq->irq_res = res;
	cpuirq->irq_cookie = cookie;
	cpuirq->isrc_solo = NULL;
	cpuirq->refs = 0;

	FUNC1(sc);
	return (0);
}