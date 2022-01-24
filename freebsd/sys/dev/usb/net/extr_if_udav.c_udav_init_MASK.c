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
struct usb_ether {struct udav_softc* ue_sc; } ;
struct udav_softc {int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_ue; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t UDAV_BULK_DT_WR ; 
 int /*<<< orphan*/  FUNC1 (struct udav_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UDAV_GPCR ; 
 int UDAV_GPCR_GEP_CNTL0 ; 
 int /*<<< orphan*/  UDAV_GPR ; 
 int UDAV_GPR_GEPIO0 ; 
 int /*<<< orphan*/  FUNC2 (struct udav_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDAV_NCR ; 
 int UDAV_NCR_LBK0 ; 
 int UDAV_NCR_LBK1 ; 
 int /*<<< orphan*/  UDAV_PAR ; 
 int /*<<< orphan*/  UDAV_RCR ; 
 int UDAV_RCR_DIS_CRC ; 
 int UDAV_RCR_DIS_LONG ; 
 int UDAV_RCR_RXEN ; 
 int /*<<< orphan*/  FUNC3 (struct udav_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct udav_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_ether*) ; 
 struct ifnet* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct usb_ether *ue)
{
	struct udav_softc *sc = ue->ue_sc;
	struct ifnet *ifp = FUNC8(&sc->sc_ue);

	FUNC2(sc, MA_OWNED);

	/*
	 * Cancel pending I/O
	 */
	FUNC7(ue);

	/* set MAC address */
	FUNC4(sc, UDAV_PAR, FUNC0(ifp), ETHER_ADDR_LEN);

	/* initialize network control register */

	/* disable loopback  */
	FUNC1(sc, UDAV_NCR, UDAV_NCR_LBK0 | UDAV_NCR_LBK1);

	/* Initialize RX control register */
	FUNC3(sc, UDAV_RCR, UDAV_RCR_DIS_LONG | UDAV_RCR_DIS_CRC);

	/* load multicast filter and update promiscious mode bit */
	FUNC5(ue);

	/* enable RX */
	FUNC3(sc, UDAV_RCR, UDAV_RCR_RXEN);

	/* clear POWER_DOWN state of internal PHY */
	FUNC3(sc, UDAV_GPCR, UDAV_GPCR_GEP_CNTL0);
	FUNC1(sc, UDAV_GPR, UDAV_GPR_GEPIO0);

	FUNC9(sc->sc_xfer[UDAV_BULK_DT_WR]);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	FUNC6(ue);
}