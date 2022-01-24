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
struct sdhci_pci_softc {int num_slots; int quirks; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * slots; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  intrhand; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int SDHCI_QUIRK_LOWER_FREQUENCY ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sdhci_pci_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct sdhci_pci_softc *sc = FUNC2(dev);
	int i;

	FUNC1(dev, sc->irq_res, sc->intrhand);
	FUNC0(dev, SYS_RES_IRQ,
	    FUNC4(sc->irq_res), sc->irq_res);
	FUNC3(dev);

	for (i = 0; i < sc->num_slots; i++) {
		FUNC5(&sc->slots[i]);
		FUNC0(dev, SYS_RES_MEMORY,
		    FUNC4(sc->mem_res[i]), sc->mem_res[i]);
	}
	if (sc->quirks & SDHCI_QUIRK_LOWER_FREQUENCY)
		FUNC6(dev);
	return (0);
}