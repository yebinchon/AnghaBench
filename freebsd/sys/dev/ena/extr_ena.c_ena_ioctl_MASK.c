#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct ifreq {int /*<<< orphan*/  ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ena_adapter {int /*<<< orphan*/  ioctl_sx; int /*<<< orphan*/  media; int /*<<< orphan*/  pdev; } ;
typedef  TYPE_1__* if_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_7__ {int if_flags; int /*<<< orphan*/  if_capenable; int /*<<< orphan*/  if_mtu; struct ena_adapter* if_softc; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 134 
#define  SIOCDELMULTI 133 
#define  SIOCGIFMEDIA 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*) ; 
 int FUNC3 (struct ena_adapter*) ; 
 int FUNC4 (TYPE_1__*,int,scalar_t__) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(if_t ifp, u_long command, caddr_t data)
{
	struct ena_adapter *adapter;
	struct ifreq *ifr;
	int rc;

	adapter = ifp->if_softc;
	ifr = (struct ifreq *)data;

	/*
	 * Acquiring lock to prevent from running up and down routines parallel.
	 */
	rc = 0;
	switch (command) {
	case SIOCSIFMTU:
		if (ifp->if_mtu == ifr->ifr_mtu)
			break;
		FUNC8(&adapter->ioctl_sx);
		FUNC2(adapter);

		FUNC1(ifp, ifr->ifr_mtu);

		rc = FUNC3(adapter);
		FUNC7(&adapter->ioctl_sx);
		break;

	case SIOCSIFFLAGS:
		if ((ifp->if_flags & IFF_UP) != 0) {
			if ((FUNC5(ifp) & IFF_DRV_RUNNING) != 0) {
				if ((ifp->if_flags & (IFF_PROMISC |
				    IFF_ALLMULTI)) != 0) {
					FUNC0(adapter->pdev,
					    "ioctl promisc/allmulti\n");
				}
			} else {
				FUNC8(&adapter->ioctl_sx);
				rc = FUNC3(adapter);
				FUNC7(&adapter->ioctl_sx);
			}
		} else {
			if ((FUNC5(ifp) & IFF_DRV_RUNNING) != 0) {
				FUNC8(&adapter->ioctl_sx);
				FUNC2(adapter);
				FUNC7(&adapter->ioctl_sx);
			}
		}
		break;

	case SIOCADDMULTI:
	case SIOCDELMULTI:
		break;

	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		rc = FUNC6(ifp, ifr, &adapter->media, command);
		break;

	case SIOCSIFCAP:
		{
			int reinit = 0;

			if (ifr->ifr_reqcap != ifp->if_capenable) {
				ifp->if_capenable = ifr->ifr_reqcap;
				reinit = 1;
			}

			if ((reinit != 0) &&
			    ((FUNC5(ifp) & IFF_DRV_RUNNING) != 0)) {
				FUNC8(&adapter->ioctl_sx);
				FUNC2(adapter);
				rc = FUNC3(adapter);
				FUNC7(&adapter->ioctl_sx);
			}
		}

		break;
	default:
		rc = FUNC4(ifp, command, data);
		break;
	}

	return (rc);
}