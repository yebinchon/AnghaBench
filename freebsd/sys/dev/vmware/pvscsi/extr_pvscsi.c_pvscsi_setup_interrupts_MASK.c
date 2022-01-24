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
struct pvscsi_softc {int use_msi_or_msix; int irq_id; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_handler; int /*<<< orphan*/ * irq_res; } ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_CAM ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pvscsi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pvscsi_softc*) ; 
 int FUNC9 (struct pvscsi_softc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvscsi_intr ; 
 int /*<<< orphan*/  pvscsi_use_msi ; 
 int /*<<< orphan*/  pvscsi_use_msix ; 

__attribute__((used)) static int
FUNC10(struct pvscsi_softc *sc)
{
	int error;
	int flags;
	int use_msix;
	int use_msi;
	int count;

	sc->use_msi_or_msix = 0;

	use_msix = FUNC9(sc, "use_msix", pvscsi_use_msix);
	use_msi = FUNC9(sc, "use_msi", pvscsi_use_msi);

	if (use_msix && FUNC6(sc->dev) > 0) {
		count = 1;
		if (FUNC4(sc->dev, &count) == 0 && count == 1) {
			sc->use_msi_or_msix = 1;
			FUNC2(sc->dev, "Interrupt: MSI-X\n");
		} else {
			FUNC7(sc->dev);
		}
	}

	if (sc->use_msi_or_msix == 0 && use_msi && FUNC5(sc->dev) > 0) {
		count = 1;
		if (FUNC3(sc->dev, &count) == 0 && count == 1) {
			sc->use_msi_or_msix = 1;
			FUNC2(sc->dev, "Interrupt: MSI\n");
		} else {
			FUNC7(sc->dev);
		}
	}

	flags = RF_ACTIVE;
	if (sc->use_msi_or_msix) {
		sc->irq_id = 1;
	} else {
		FUNC2(sc->dev, "Interrupt: INT\n");
		sc->irq_id = 0;
		flags |= RF_SHAREABLE;
	}

	sc->irq_res = FUNC0(sc->dev, SYS_RES_IRQ, &sc->irq_id,
	    flags);
	if (sc->irq_res == NULL) {
		FUNC2(sc->dev, "IRQ allocation failed\n");
		if (sc->use_msi_or_msix) {
			FUNC7(sc->dev);
		}
		return (ENXIO);
	}

	error = FUNC1(sc->dev, sc->irq_res,
	    INTR_TYPE_CAM | INTR_MPSAFE, NULL, pvscsi_intr, sc,
	    &sc->irq_handler);
	if (error) {
		FUNC2(sc->dev, "IRQ handler setup failed\n");
		FUNC8(sc);
		return (error);
	}

	return (0);
}