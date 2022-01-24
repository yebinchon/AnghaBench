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
struct sdhci_xenon_softc {int /*<<< orphan*/ * slot; int /*<<< orphan*/  mem_res; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  intrhand; int /*<<< orphan*/ * gpio; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sdhci_xenon_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct sdhci_xenon_softc *sc = FUNC3(dev);

	if (sc->gpio != NULL)
		FUNC7(sc->gpio);

	FUNC0(dev);
	FUNC2(dev, sc->irq_res, sc->intrhand);
	FUNC1(dev, SYS_RES_IRQ, FUNC5(sc->irq_res),
	    sc->irq_res);
	FUNC6(sc->slot);
	FUNC1(dev, SYS_RES_MEMORY, FUNC5(sc->mem_res),
	    sc->mem_res);
	FUNC4(sc->slot, M_DEVBUF);
	sc->slot = NULL;

	return (0);
}