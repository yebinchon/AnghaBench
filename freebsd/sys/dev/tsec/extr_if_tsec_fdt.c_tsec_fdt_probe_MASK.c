#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  bst; int /*<<< orphan*/  bsh; } ;
struct tsec_softc {int is_etsec; int /*<<< orphan*/ * sc_rres; scalar_t__ sc_rrid; TYPE_1__ sc_bas; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int TSEC_ETSEC_ID ; 
 int FUNC0 (struct tsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSEC_REG_ID ; 
 int /*<<< orphan*/  TSEC_REG_ID2 ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 struct tsec_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct tsec_softc *sc;
	uint32_t id;

	if (!FUNC8(dev))
		return (ENXIO);

	if (FUNC6(dev) == NULL ||
	    FUNC11(FUNC6(dev), "network") != 0)
		return (ENXIO);

	if (!FUNC7(dev, "gianfar") &&
	    !FUNC7(dev, "fsl,etsec2"))
		return (ENXIO);

	sc = FUNC3(dev);

	/*
	 * Device trees with "fsl,etsec2" compatible nodes don't have a reg
	 * property, as it's been relegated to the queue-group children.
	 */
	if (FUNC7(dev, "fsl,etsec2"))
		sc->is_etsec = 1;
	else {
		sc->sc_rrid = 0;
		sc->sc_rres = FUNC1(dev, SYS_RES_MEMORY, &sc->sc_rrid,
		    RF_ACTIVE);
		if (sc->sc_rres == NULL)
			return (ENXIO);

		sc->sc_bas.bsh = FUNC9(sc->sc_rres);
		sc->sc_bas.bst = FUNC10(sc->sc_rres);

		/* Check if we are eTSEC (enhanced TSEC) */
		id = FUNC0(sc, TSEC_REG_ID);
		sc->is_etsec = ((id >> 16) == TSEC_ETSEC_ID) ? 1 : 0;
		id |= FUNC0(sc, TSEC_REG_ID2);

		FUNC2(dev, SYS_RES_MEMORY, sc->sc_rrid, sc->sc_rres);

		if (id == 0) {
			FUNC4(dev, "could not identify TSEC type\n");
			return (ENXIO);
		}
	}

	if (sc->is_etsec)
		FUNC5(dev, "Enhanced Three-Speed Ethernet Controller");
	else
		FUNC5(dev, "Three-Speed Ethernet Controller");

	return (BUS_PROBE_DEFAULT);
}