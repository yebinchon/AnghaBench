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
typedef  int uint64_t ;
struct schizo_softc {scalar_t__ sc_mode; int sc_flags; int sc_mrev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int PCIM_HDRTYPE ; 
 int PCIM_HDRTYPE_BRIDGE ; 
 scalar_t__ PCIR_HDRTYPE ; 
 scalar_t__ PCIXR_COMMAND ; 
 int /*<<< orphan*/  PCIY_PCIX ; 
 int SCHIZO_FLAGS_XMODE ; 
 scalar_t__ SCHIZO_MODE_XMS ; 
 int FUNC1 (struct schizo_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct schizo_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STX_PCI_CTRL ; 
 int STX_PCI_CTRL_ARB_PARK ; 
 int /*<<< orphan*/  XMS_PCI_X_DIAG ; 
 int XMS_PCI_X_DIAG_BUGCNTL_MASK ; 
 int XMS_PCI_X_DIAG_BUGCNTL_SHIFT ; 
 struct schizo_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static void
FUNC8(device_t bus, device_t child)
{
	struct schizo_softc *sc;
	uint64_t reg;
	int capreg;

	sc = FUNC3(bus);
	/*
	 * Disable bus parking in order to work around a bus hang caused by
	 * Casinni/Skyhawk combinations.
	 */
	if (FUNC0(FUNC4(child), "pci-req-removal") >= 0)
		FUNC2(sc, STX_PCI_CTRL, FUNC1(sc,
		    STX_PCI_CTRL) & ~STX_PCI_CTRL_ARB_PARK);

	if (sc->sc_mode == SCHIZO_MODE_XMS) {
		/* XMITS NCPQ WAR: set outstanding split transactions to 1. */
		if ((sc->sc_flags & SCHIZO_FLAGS_XMODE) != 0 &&
		    (FUNC6(child, PCIR_HDRTYPE, 1) &
		    PCIM_HDRTYPE) != PCIM_HDRTYPE_BRIDGE &&
		    FUNC5(child, PCIY_PCIX, &capreg) == 0)
			FUNC7(child, capreg + PCIXR_COMMAND,
			    FUNC6(child, capreg + PCIXR_COMMAND,
			    2) & 0x7c, 2);
		/* XMITS 3.x WAR: set BUGCNTL iff value is unexpected. */
		if (sc->sc_mrev >= 4) {
			reg = ((sc->sc_flags & SCHIZO_FLAGS_XMODE) != 0 ?
			    0xa0UL : 0xffUL) << XMS_PCI_X_DIAG_BUGCNTL_SHIFT;
			if ((FUNC1(sc, XMS_PCI_X_DIAG) &
			    XMS_PCI_X_DIAG_BUGCNTL_MASK) != reg)
				FUNC2(sc, XMS_PCI_X_DIAG, reg);
		}
	}
}