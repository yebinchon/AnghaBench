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
typedef  int uint16_t ;
struct usb_ether {int /*<<< orphan*/  ue_tq; } ;
struct axge_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; struct usb_ether sc_ue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AXGE_ACCESS_MAC ; 
 int /*<<< orphan*/  AXGE_CLK_SELECT ; 
 int /*<<< orphan*/  AXGE_EPPRCR ; 
 int /*<<< orphan*/  FUNC0 (struct axge_softc*) ; 
 int /*<<< orphan*/  AXGE_N_TRANSFER ; 
 int /*<<< orphan*/  AXGE_RCR ; 
 int /*<<< orphan*/  FUNC1 (struct axge_softc*) ; 
 int EPPRCR_BZ ; 
 int EPPRCR_IPRL ; 
 int FUNC2 (struct axge_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC4 (struct axge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct axge_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct axge_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct axge_softc *sc;
	struct usb_ether *ue;
	uint16_t val;

	sc = FUNC6(dev);
	ue = &sc->sc_ue;
	if (FUNC7(dev)) {

		/* wait for any post attach or other command to complete */
		FUNC10(&ue->ue_tq);

		FUNC0(sc);
		/*
		 * XXX
		 * ether_ifdetach(9) should be called first.
		 */
		FUNC3(ue);
		/* Force bulk-in to return a zero-length USB packet. */
		val = FUNC2(sc, AXGE_ACCESS_MAC, 2, AXGE_EPPRCR);
		val |= EPPRCR_BZ | EPPRCR_IPRL;
		FUNC5(sc, AXGE_ACCESS_MAC, 2, AXGE_EPPRCR, val);
		/* Change clock. */
		FUNC4(sc, AXGE_ACCESS_MAC, AXGE_CLK_SELECT, 0);
		/* Disable MAC. */
		FUNC5(sc, AXGE_ACCESS_MAC, 2, AXGE_RCR, 0);
		FUNC1(sc);
	}
	FUNC11(sc->sc_xfer, AXGE_N_TRANSFER);
	FUNC9(ue);
	FUNC8(&sc->sc_mtx);

	return (0);
}