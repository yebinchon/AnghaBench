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
struct bce_softc {int bce_flags; int /*<<< orphan*/  bce_mtx; int /*<<< orphan*/ * bce_ifp; int /*<<< orphan*/ * bce_res_mem; int /*<<< orphan*/ * bce_res_irq; int /*<<< orphan*/ * bce_intrhand; int /*<<< orphan*/  bce_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCE_INFO_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct bce_softc*) ; 
 int BCE_USING_MSIX_FLAG ; 
 int BCE_USING_MSI_FLAG ; 
 int /*<<< orphan*/  BCE_VERBOSE_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bce_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC5 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct bce_softc *sc)
{
	device_t dev;

	FUNC1(BCE_VERBOSE_RESET);

	dev = sc->bce_dev;

	FUNC5(sc);

	if (sc->bce_intrhand != NULL) {
		FUNC3(sc, BCE_INFO_RESET, "Removing interrupt handler.\n");
		FUNC7(dev, sc->bce_res_irq, sc->bce_intrhand);
	}

	if (sc->bce_res_irq != NULL) {
		FUNC3(sc, BCE_INFO_RESET, "Releasing IRQ.\n");
		FUNC6(dev, SYS_RES_IRQ,
		    FUNC11(sc->bce_res_irq), sc->bce_res_irq);
	}

	if (sc->bce_flags & (BCE_USING_MSI_FLAG | BCE_USING_MSIX_FLAG)) {
		FUNC3(sc, BCE_INFO_RESET, "Releasing MSI/MSI-X vector.\n");
		FUNC10(dev);
	}

	if (sc->bce_res_mem != NULL) {
		FUNC3(sc, BCE_INFO_RESET, "Releasing PCI memory.\n");
		    FUNC6(dev, SYS_RES_MEMORY, FUNC4(0),
		    sc->bce_res_mem);
	}

	if (sc->bce_ifp != NULL) {
		FUNC3(sc, BCE_INFO_RESET, "Releasing IF.\n");
		FUNC8(sc->bce_ifp);
	}

	if (FUNC9(&sc->bce_mtx))
		FUNC0(sc);

	FUNC2(BCE_VERBOSE_RESET);
}