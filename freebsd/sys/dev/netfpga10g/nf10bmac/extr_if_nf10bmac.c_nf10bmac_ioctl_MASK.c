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
typedef  int u_long ;
struct nf10bmac_softc {int nf10bmac_if_flags; int /*<<< orphan*/  nf10bmac_media; int /*<<< orphan*/ * nf10bmac_rx_irq_res; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; struct nf10bmac_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int IFCAP_POLLING ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct nf10bmac_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nf10bmac_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf10bmac_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf10bmac_softc*) ; 
#define  SIOCGIFMEDIA 131 
#define  SIOCSIFCAP 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int FUNC4 (struct ifnet*,int,scalar_t__) ; 
 int FUNC5 (struct ifnet*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ifnet*) ; 
 int FUNC7 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nf10bmac_softc*) ; 
 int /*<<< orphan*/  nf10bmac_poll ; 
 int /*<<< orphan*/  FUNC9 (struct nf10bmac_softc*) ; 

__attribute__((used)) static int
FUNC10(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct nf10bmac_softc *sc;
	struct ifreq *ifr;
	int error, mask;

	error = 0;
	sc = ifp->if_softc;
	ifr = (struct ifreq *)data;

	switch (command) {
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if (ifp->if_flags & IFF_UP) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
			    ((ifp->if_flags ^ sc->nf10bmac_if_flags) &
			    (IFF_PROMISC | IFF_ALLMULTI)) != 0)
				/* Nothing we can do. */ ;
			else
				FUNC8(sc);
		} else if (ifp->if_drv_flags & IFF_DRV_RUNNING)
			FUNC9(sc);  
		sc->nf10bmac_if_flags = ifp->if_flags;
		FUNC3(sc);
		break;
	case SIOCSIFCAP:
		FUNC0(sc);
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
#ifdef DEVICE_POLLING
		if ((mask & IFCAP_POLLING) != 0 &&
		    (IFCAP_POLLING & ifp->if_capabilities) != 0) {
			ifp->if_capenable ^= IFCAP_POLLING;
			if ((IFCAP_POLLING & ifp->if_capenable) != 0) {

				error = ether_poll_register(nf10bmac_poll, ifp);
				if (error != 0) {
					NF10BMAC_UNLOCK(sc);
					break;
				}

				NF10BMAC_RX_INTR_CLEAR_DIS(sc);

			/*
			 * Do not allow disabling of polling if we do
			 * not have interrupts.
			 */
			} else if (sc->nf10bmac_rx_irq_res != NULL) {
				error = ether_poll_deregister(ifp);
				/* Enable interrupts. */
				NF10BMAC_RX_INTR_ENABLE(sc);
			} else {
				ifp->if_capenable ^= IFCAP_POLLING;
				error = EINVAL;
			}
		}
#endif /* DEVICE_POLLING */
                FUNC3(sc);
                break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
                error = FUNC7(ifp, ifr, &sc->nf10bmac_media, command);
		break;
	default:
		error = FUNC4(ifp, command, data);
		break;
	}

	return (error);
}