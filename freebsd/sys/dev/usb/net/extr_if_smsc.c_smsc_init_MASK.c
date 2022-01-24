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
struct smsc_softc {int /*<<< orphan*/ * sc_xfer; } ;
struct ifnet {int if_drv_flags; int if_capabilities; int if_capenable; scalar_t__ if_hwassist; } ;

/* Variables and functions */
 int IFCAP_RXCSUM ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t SMSC_BULK_DT_WR ; 
 int /*<<< orphan*/  FUNC1 (struct smsc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc_softc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct smsc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct smsc_softc*) ; 
 scalar_t__ FUNC6 (struct smsc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_ether*) ; 
 struct ifnet* FUNC10 (struct usb_ether*) ; 
 struct smsc_softc* FUNC11 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct usb_ether *ue)
{
	struct smsc_softc *sc = FUNC11(ue);
	struct ifnet *ifp = FUNC10(ue);

	FUNC1(sc, MA_OWNED);

	if (FUNC6(sc, FUNC0(ifp)))
		FUNC2(sc, "setting MAC address failed\n");

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		return;

	/* Cancel pending I/O */
	FUNC9(ue);

#if __FreeBSD_version <= 1000000
	/* On earlier versions this was the first place we could tell the system
	 * that we supported h/w csuming, however this is only called after the
	 * the interface has been brought up - not ideal.  
	 */
	if (!(ifp->if_capabilities & IFCAP_RXCSUM)) {
		ifp->if_capabilities |= IFCAP_RXCSUM;
		ifp->if_capenable |= IFCAP_RXCSUM;
		ifp->if_hwassist = 0;
	}
	
	/* TX checksuming is disabled for now
	ifp->if_capabilities |= IFCAP_TXCSUM;
	ifp->if_capenable |= IFCAP_TXCSUM;
	ifp->if_hwassist = CSUM_TCP | CSUM_UDP;
	*/
#endif

	/* Reset the ethernet interface. */
	FUNC4(sc);

	/* Load the multicast filter. */
	FUNC7(ue);

	/* TCP/UDP checksum offload engines. */
	FUNC5(sc);

	FUNC12(sc->sc_xfer[SMSC_BULK_DT_WR]);

	/* Indicate we are up and running. */
	ifp->if_drv_flags |= IFF_DRV_RUNNING;

	/* Switch to selected media. */
	FUNC3(ifp);
	FUNC8(ue);
}