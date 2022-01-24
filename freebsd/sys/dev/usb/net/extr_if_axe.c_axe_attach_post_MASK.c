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
struct usb_ether {int* ue_eaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  ue_dev; } ;
struct axe_softc {int* sc_phyaddrs; int sc_phyno; int sc_flags; int* sc_ipgs; TYPE_1__ sc_ue; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXE_172_CMD_READ_NODEID ; 
 int /*<<< orphan*/  AXE_178_CMD_READ_NODEID ; 
 int /*<<< orphan*/  AXE_CMD_READ_IPG012 ; 
 int /*<<< orphan*/  AXE_CMD_READ_PHYID ; 
 int AXE_FLAG_178 ; 
 int AXE_FLAG_772 ; 
 int AXE_FLAG_772A ; 
 int AXE_FLAG_772B ; 
 int /*<<< orphan*/  AXE_PHY_SEL_PRI ; 
 int /*<<< orphan*/  AXE_PHY_SEL_SEC ; 
 int /*<<< orphan*/  FUNC0 (struct axe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct axe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct axe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct axe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct axe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 void* FUNC5 (struct axe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 struct axe_softc* FUNC7 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC8(struct usb_ether *ue)
{
	struct axe_softc *sc = FUNC7(ue);

	/*
	 * Load PHY indexes first. Needed by axe_xxx_init().
	 */
	FUNC4(sc, AXE_CMD_READ_PHYID, 0, 0, sc->sc_phyaddrs);
	if (bootverbose)
		FUNC6(sc->sc_ue.ue_dev, "PHYADDR 0x%02x:0x%02x\n",
		    sc->sc_phyaddrs[0], sc->sc_phyaddrs[1]);
	sc->sc_phyno = FUNC5(sc, AXE_PHY_SEL_PRI);
	if (sc->sc_phyno == -1)
		sc->sc_phyno = FUNC5(sc, AXE_PHY_SEL_SEC);
	if (sc->sc_phyno == -1) {
		FUNC6(sc->sc_ue.ue_dev,
		    "no valid PHY address found, assuming PHY address 0\n");
		sc->sc_phyno = 0;
	}

	/* Initialize controller and get station address. */
	if (sc->sc_flags & AXE_FLAG_178) {
		FUNC0(sc);
		FUNC4(sc, AXE_178_CMD_READ_NODEID, 0, 0, ue->ue_eaddr);
	} else if (sc->sc_flags & AXE_FLAG_772) {
		FUNC1(sc);
		FUNC4(sc, AXE_178_CMD_READ_NODEID, 0, 0, ue->ue_eaddr);
	} else if (sc->sc_flags & AXE_FLAG_772A) {
		FUNC2(sc);
		FUNC4(sc, AXE_178_CMD_READ_NODEID, 0, 0, ue->ue_eaddr);
	} else if (sc->sc_flags & AXE_FLAG_772B) {
		FUNC3(sc);
	} else
		FUNC4(sc, AXE_172_CMD_READ_NODEID, 0, 0, ue->ue_eaddr);

	/*
	 * Fetch IPG values.
	 */
	if (sc->sc_flags & (AXE_FLAG_772A | AXE_FLAG_772B)) {
		/* Set IPG values. */
		sc->sc_ipgs[0] = 0x15;
		sc->sc_ipgs[1] = 0x16;
		sc->sc_ipgs[2] = 0x1A;
	} else
		FUNC4(sc, AXE_CMD_READ_IPG012, 0, 0, sc->sc_ipgs);
}