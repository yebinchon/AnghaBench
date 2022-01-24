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
struct sdhci_acpi_softc {scalar_t__ mem_res; int /*<<< orphan*/  slot; scalar_t__ irq_res; scalar_t__ intrhand; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct sdhci_acpi_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct sdhci_acpi_softc *sc = FUNC2(dev);

	if (sc->intrhand)
		FUNC1(dev, sc->irq_res, sc->intrhand);
	if (sc->irq_res)
		FUNC0(dev, SYS_RES_IRQ,
		    FUNC3(sc->irq_res), sc->irq_res);

	if (sc->mem_res) {
		FUNC4(&sc->slot);
		FUNC0(dev, SYS_RES_MEMORY,
		    FUNC3(sc->mem_res), sc->mem_res);
	}

	return (0);
}