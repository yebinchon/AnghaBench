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
struct ofw_pci_softc {int /*<<< orphan*/  sc_initialized; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct ofw_pci_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(device_t dev)
{
	struct ofw_pci_softc *sc;
	int error;

	sc = FUNC2(dev);
	if (!sc->sc_initialized) {
		error = FUNC3(dev);
		if (error != 0)
			return (error);
	}

	FUNC1(dev, "pci", -1);
	return (FUNC0(dev));
}