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
struct usb_ether {int dummy; } ;
struct axe_softc {scalar_t__ sc_phyno; struct usb_ether sc_ue; } ;

/* Variables and functions */
 scalar_t__ AXE_772_PHY_NO_EPHY ; 
 int /*<<< orphan*/  AXE_CMD_SW_PHY_SELECT ; 
 int /*<<< orphan*/  AXE_CMD_SW_RESET_REG ; 
 int AXE_SW_PHY_SELECT_EMBEDDED ; 
 int AXE_SW_PHY_SELECT_EXT ; 
 int AXE_SW_PHY_SELECT_SS_ENB ; 
 int AXE_SW_PHY_SELECT_SS_MII ; 
 int AXE_SW_RESET_CLEAR ; 
 int AXE_SW_RESET_IPPD ; 
 int AXE_SW_RESET_IPRL ; 
 int /*<<< orphan*/  FUNC0 (struct axe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ether*,int) ; 

__attribute__((used)) static void
FUNC2(struct axe_softc *sc)
{
	struct usb_ether *ue;

	ue = &sc->sc_ue;
	if (sc->sc_phyno == AXE_772_PHY_NO_EPHY) {
		/* Manually select internal(embedded) PHY - MAC mode. */
		FUNC0(sc, AXE_CMD_SW_PHY_SELECT, 0, AXE_SW_PHY_SELECT_SS_ENB |
		    AXE_SW_PHY_SELECT_EMBEDDED | AXE_SW_PHY_SELECT_SS_MII,
		    NULL);
		FUNC1(&sc->sc_ue, hz / 32);
	} else {
		/*
		 * Manually select external PHY - MAC mode.
		 * Reverse MII/RMII is for AX88772A PHY mode.
		 */
		FUNC0(sc, AXE_CMD_SW_PHY_SELECT, 0, AXE_SW_PHY_SELECT_SS_ENB |
		    AXE_SW_PHY_SELECT_EXT | AXE_SW_PHY_SELECT_SS_MII, NULL);
		FUNC1(&sc->sc_ue, hz / 32);
	}
	/* Take PHY out of power down. */
	FUNC0(sc, AXE_CMD_SW_RESET_REG, 0, AXE_SW_RESET_IPPD |
	    AXE_SW_RESET_IPRL, NULL);
	FUNC1(&sc->sc_ue, hz / 4);
	FUNC0(sc, AXE_CMD_SW_RESET_REG, 0, AXE_SW_RESET_IPRL, NULL);
	FUNC1(&sc->sc_ue, hz);
	FUNC0(sc, AXE_CMD_SW_RESET_REG, 0, AXE_SW_RESET_CLEAR, NULL);
	FUNC1(&sc->sc_ue, hz / 32);
	FUNC0(sc, AXE_CMD_SW_RESET_REG, 0, AXE_SW_RESET_IPRL, NULL);
	FUNC1(&sc->sc_ue, hz / 32);
}