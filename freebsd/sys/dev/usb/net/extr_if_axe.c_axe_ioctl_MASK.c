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
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_capenable; int if_capabilities; int if_drv_flags; int /*<<< orphan*/  if_hwassist; struct usb_ether* if_softc; } ;
struct axe_softc {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AXE_CSUM_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (struct axe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct axe_softc*) ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TXCSUM ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ SIOCSIFCAP ; 
 struct axe_softc* FUNC2 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ether*) ; 
 int FUNC4 (struct ifnet*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct usb_ether *ue = ifp->if_softc;
	struct axe_softc *sc;
	struct ifreq *ifr;
	int error, mask, reinit;

	sc = FUNC2(ue);
	ifr = (struct ifreq *)data;
	error = 0;
	reinit = 0;
	if (cmd == SIOCSIFCAP) {
		FUNC0(sc);
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
		if ((mask & IFCAP_TXCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_TXCSUM) != 0) {
			ifp->if_capenable ^= IFCAP_TXCSUM;
			if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
				ifp->if_hwassist |= AXE_CSUM_FEATURES;
			else
				ifp->if_hwassist &= ~AXE_CSUM_FEATURES;
			reinit++;
		}
		if ((mask & IFCAP_RXCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_RXCSUM) != 0) {
			ifp->if_capenable ^= IFCAP_RXCSUM;
			reinit++;
		}
		if (reinit > 0 && ifp->if_drv_flags & IFF_DRV_RUNNING)
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		else
			reinit = 0;
		FUNC1(sc);
		if (reinit > 0)
			FUNC3(ue);
	} else
		error = FUNC4(ifp, cmd, data);

	return (error);
}