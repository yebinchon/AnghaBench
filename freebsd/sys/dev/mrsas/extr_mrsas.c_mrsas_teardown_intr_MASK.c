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
struct mrsas_softc {int msix_vectors; int /*<<< orphan*/  mrsas_dev; int /*<<< orphan*/ ** intr_handle; int /*<<< orphan*/ ** mrsas_irq; int /*<<< orphan*/ * irq_id; int /*<<< orphan*/  msix_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct mrsas_softc *sc)
{
	int i;

	if (!sc->msix_enable) {
		if (sc->intr_handle[0])
			FUNC1(sc->mrsas_dev, sc->mrsas_irq[0], sc->intr_handle[0]);
		if (sc->mrsas_irq[0] != NULL)
			FUNC0(sc->mrsas_dev, SYS_RES_IRQ,
			    sc->irq_id[0], sc->mrsas_irq[0]);
		sc->intr_handle[0] = NULL;
	} else {
		for (i = 0; i < sc->msix_vectors; i++) {
			if (sc->intr_handle[i])
				FUNC1(sc->mrsas_dev, sc->mrsas_irq[i],
				    sc->intr_handle[i]);

			if (sc->mrsas_irq[i] != NULL)
				FUNC0(sc->mrsas_dev, SYS_RES_IRQ,
				    sc->irq_id[i], sc->mrsas_irq[i]);

			sc->intr_handle[i] = NULL;
		}
		FUNC2(sc->mrsas_dev);
	}

}