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
struct sdhci_fdt_softc {int num_slots; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * slots; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  intrhand; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sdhci_fdt_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct sdhci_fdt_softc *sc = FUNC3(dev);
	int i;

	FUNC0(dev);
	FUNC2(dev, sc->irq_res, sc->intrhand);
	FUNC1(dev, SYS_RES_IRQ, FUNC4(sc->irq_res),
	    sc->irq_res);

	for (i = 0; i < sc->num_slots; i++) {
		FUNC5(&sc->slots[i]);
		FUNC1(dev, SYS_RES_MEMORY,
		    FUNC4(sc->mem_res[i]), sc->mem_res[i]);
	}

	return (0);
}