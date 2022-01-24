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
struct sdhci_pci_softc {int num_slots; int quirks; int /*<<< orphan*/ * slots; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int SDHCI_QUIRK_LOWER_FREQUENCY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct sdhci_pci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct sdhci_pci_softc *sc = FUNC1(dev);
	int i, err;

	for (i = 0; i < sc->num_slots; i++)
		FUNC2(&sc->slots[i]);
	err = FUNC0(dev);
	if (err)
		return (err);
	if (sc->quirks & SDHCI_QUIRK_LOWER_FREQUENCY)
		FUNC3(dev);
	return (0);
}