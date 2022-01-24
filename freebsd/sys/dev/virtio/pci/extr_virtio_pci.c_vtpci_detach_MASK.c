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
struct vtpci_softc {int /*<<< orphan*/ * vtpci_res; int /*<<< orphan*/ * vtpci_msix_res; int /*<<< orphan*/ * vtpci_child_dev; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vtpci_softc* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vtpci_softc*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct vtpci_softc *sc;
	device_t child;
	int error;

	sc = FUNC3(dev);

	if ((child = sc->vtpci_child_dev) != NULL) {
		error = FUNC2(dev, child);
		if (error)
			return (error);
		sc->vtpci_child_dev = NULL;
	}

	FUNC4(sc);

	if (sc->vtpci_msix_res != NULL) {
		FUNC1(dev, SYS_RES_MEMORY, FUNC0(1),
		    sc->vtpci_msix_res);
		sc->vtpci_msix_res = NULL;
	}

	if (sc->vtpci_res != NULL) {
		FUNC1(dev, SYS_RES_IOPORT, FUNC0(0),
		    sc->vtpci_res);
		sc->vtpci_res = NULL;
	}

	return (0);
}