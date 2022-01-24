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
struct vtpci_softc {int vtpci_flags; } ;
typedef  enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int VTPCI_FLAG_LEGACY ; 
 int VTPCI_FLAG_MSI ; 
 int VTPCI_FLAG_SHARED_MSIX ; 
 scalar_t__ bootverbose ; 
 struct vtpci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct vtpci_softc*) ; 
 int FUNC3 (struct vtpci_softc*) ; 
 int FUNC4 (struct vtpci_softc*) ; 
 int FUNC5 (struct vtpci_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vtpci_softc*) ; 
 scalar_t__ FUNC7 (struct vtpci_softc*,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev, enum intr_type type)
{
	struct vtpci_softc *sc;
	int attempt, error;

	sc = FUNC0(dev);

	for (attempt = 0; attempt < 5; attempt++) {
		/*
		 * Start with the most desirable interrupt configuration and
		 * fallback towards less desirable ones.
		 */
		switch (attempt) {
		case 0:
			error = FUNC4(sc);
			break;
		case 1:
			error = FUNC5(sc);
			break;
		case 2:
			error = FUNC3(sc);
			break;
		case 3:
			error = FUNC2(sc);
			break;
		default:
			FUNC1(dev,
			    "exhausted all interrupt allocation attempts\n");
			return (ENXIO);
		}

		if (error == 0 && FUNC7(sc, type) == 0)
			break;

		FUNC6(sc);
	}

	if (bootverbose) {
		if (sc->vtpci_flags & VTPCI_FLAG_LEGACY)
			FUNC1(dev, "using legacy interrupt\n");
		else if (sc->vtpci_flags & VTPCI_FLAG_MSI)
			FUNC1(dev, "using MSI interrupt\n");
		else if (sc->vtpci_flags & VTPCI_FLAG_SHARED_MSIX)
			FUNC1(dev, "using shared MSIX interrupts\n");
		else
			FUNC1(dev, "using per VQ MSIX interrupts\n");
	}

	return (0);
}