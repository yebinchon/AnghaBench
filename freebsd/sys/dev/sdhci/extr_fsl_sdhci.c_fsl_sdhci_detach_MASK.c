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
struct fsl_sdhci_softc {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * intr_cookie; int /*<<< orphan*/  slot; scalar_t__ slot_init_done; int /*<<< orphan*/  r1bfix_callout; int /*<<< orphan*/ * gpio; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct fsl_sdhci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct fsl_sdhci_softc *sc = FUNC3(dev);

	if (sc->gpio != NULL)
		FUNC6(sc->gpio);

	FUNC2(&sc->r1bfix_callout);

	if (sc->slot_init_done)
		FUNC5(&sc->slot);

	if (sc->intr_cookie != NULL)
		FUNC1(dev, sc->irq_res, sc->intr_cookie);
	if (sc->irq_res != NULL)
		FUNC0(dev, SYS_RES_IRQ,
		    FUNC4(sc->irq_res), sc->irq_res);

	if (sc->mem_res != NULL) {
		FUNC0(dev, SYS_RES_MEMORY,
		    FUNC4(sc->mem_res), sc->mem_res);
	}

	return (0);
}