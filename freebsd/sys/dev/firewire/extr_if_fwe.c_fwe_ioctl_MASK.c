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
typedef  int u_long ;
struct ifstat {int /*<<< orphan*/  ascii; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; scalar_t__ if_softc; } ;
struct TYPE_2__ {struct firewire_comm* fc; } ;
struct fwe_softc {int stream_ch; int dma_ch; TYPE_1__ fd; int /*<<< orphan*/  eth_softc; } ;
struct fwe_eth_softc {struct fwe_softc* fwe; } ;
struct firewire_comm {int /*<<< orphan*/  (* set_intr ) (struct firewire_comm*,int) ;} ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 132 
#define  SIOCDELMULTI 131 
#define  SIOCGIFSTATUS 130 
#define  SIOCSIFCAP 129 
#define  SIOCSIFFLAGS 128 
 int FUNC0 (struct ifnet*,int,scalar_t__) ; 
 int FUNC1 (struct ifnet*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fwe_poll ; 
 int /*<<< orphan*/  FUNC4 (struct fwe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct firewire_comm*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct firewire_comm*,int) ; 

__attribute__((used)) static int
FUNC10(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct fwe_softc *fwe = ((struct fwe_eth_softc *)ifp->if_softc)->fwe;
	struct ifstat *ifs = NULL;
	int s, error;

	switch (cmd) {
		case SIOCSIFFLAGS:
			s = FUNC6();
			if (ifp->if_flags & IFF_UP) {
				if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
					FUNC3(&fwe->eth_softc);
			} else {
				if (ifp->if_drv_flags & IFF_DRV_RUNNING)
					FUNC4(fwe);
			}
			/* XXX keep promiscoud mode */
			ifp->if_flags |= IFF_PROMISC;
			FUNC7(s);
			break;
		case SIOCADDMULTI:
		case SIOCDELMULTI:
			break;

		case SIOCGIFSTATUS:
			s = FUNC6();
			ifs = (struct ifstat *)data;
			FUNC5(ifs->ascii, sizeof(ifs->ascii),
			    "\tch %d dma %d\n",	fwe->stream_ch, fwe->dma_ch);
			FUNC7(s);
			break;
		case SIOCSIFCAP:
#ifdef DEVICE_POLLING
		    {
			struct ifreq *ifr = (struct ifreq *) data;
			struct firewire_comm *fc = fwe->fd.fc;

			if (ifr->ifr_reqcap & IFCAP_POLLING &&
			    !(ifp->if_capenable & IFCAP_POLLING)) {
				error = ether_poll_register(fwe_poll, ifp);
				if (error)
					return (error);
				/* Disable interrupts */
				fc->set_intr(fc, 0);
				ifp->if_capenable |= IFCAP_POLLING;
				return (error);
			}
			if (!(ifr->ifr_reqcap & IFCAP_POLLING) &&
			    ifp->if_capenable & IFCAP_POLLING) {
				error = ether_poll_deregister(ifp);
				/* Enable interrupts. */
				fc->set_intr(fc, 1);
				ifp->if_capenable &= ~IFCAP_POLLING;
				return (error);
			}
		    }
#endif /* DEVICE_POLLING */
			break;
		default:
			s = FUNC6();
			error = FUNC0(ifp, cmd, data);
			FUNC7(s);
			return (error);
	}

	return (0);
}