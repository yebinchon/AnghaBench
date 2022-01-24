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
typedef  scalar_t__ u_long ;
struct usb_ether {int dummy; } ;
struct muge_softc {int dummy; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_capenable; int if_capabilities; int if_drv_flags; struct usb_ether* if_softc; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int IFCAP_RXCSUM ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct muge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct muge_softc*) ; 
 scalar_t__ SIOCSIFCAP ; 
 struct muge_softc* FUNC2 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ether*) ; 
 int FUNC4 (struct ifnet*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct usb_ether *ue = ifp->if_softc;
	struct muge_softc *sc;
	struct ifreq *ifr;
	int rc;
	int mask;
	int reinit;

	if (cmd == SIOCSIFCAP) {
		sc = FUNC2(ue);
		ifr = (struct ifreq *)data;

		FUNC0(sc);

		rc = 0;
		reinit = 0;

		mask = ifr->ifr_reqcap ^ ifp->if_capenable;

		/* Modify the RX CSUM enable bits. */
		if ((mask & IFCAP_RXCSUM) != 0 &&
			(ifp->if_capabilities & IFCAP_RXCSUM) != 0) {
			ifp->if_capenable ^= IFCAP_RXCSUM;

			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
				reinit = 1;
			}
		}

		FUNC1(sc);
		if (reinit)
			FUNC3(ue);

	} else {
		rc = FUNC4(ifp, cmd, data);
	}

	return (rc);
}