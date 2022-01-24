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
struct bcm_mips_softc {int /*<<< orphan*/  dev; } ;
struct bcm_mips_cpuirq {scalar_t__ refs; int irq_rid; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * irq_cookie; int /*<<< orphan*/ * sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_mips_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_mips_softc*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct bcm_mips_softc *sc, struct bcm_mips_cpuirq *cpuirq)
{
	int error;

	FUNC0(sc);

	if (cpuirq->sc == NULL) {
		FUNC2(cpuirq->irq_res == NULL, ("leaking cpuirq resource"));

		FUNC1(sc);
		return (0);	/* not initialized */
	}

	if (cpuirq->refs != 0) {
		FUNC1(sc);
		return (EBUSY);
	}

	if (cpuirq->irq_cookie != NULL) {
		FUNC2(cpuirq->irq_res != NULL, ("resource missing"));

		error = FUNC5(sc->dev, cpuirq->irq_res,
			cpuirq->irq_cookie);
		if (error) {
			FUNC1(sc);
			return (error);
		}

		cpuirq->irq_cookie = NULL;
	}

	if (cpuirq->irq_res != NULL) {
		FUNC4(sc->dev, SYS_RES_IRQ, cpuirq->irq_rid,
		    cpuirq->irq_res);
		cpuirq->irq_res = NULL;
	}

	if (cpuirq->irq_rid != -1) {
		FUNC3(sc->dev, SYS_RES_IRQ, cpuirq->irq_rid);
		cpuirq->irq_rid = -1;
	}

	FUNC1(sc);

	return (0);
}