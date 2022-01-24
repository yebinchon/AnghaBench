#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int if_mtu; int if_drv_flags; } ;
struct TYPE_5__ {int max_mtu; int /*<<< orphan*/  driver_mtx; struct ifnet* ifp; } ;
typedef  TYPE_1__ mxge_softc_t ;

/* Variables and functions */
 int EINVAL ; 
 int ETHER_HDR_LEN ; 
 int ETHER_VLAN_ENCAP_LEN ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(mxge_softc_t *sc, int mtu)
{
	struct ifnet *ifp = sc->ifp;
	int real_mtu, old_mtu;
	int err = 0;


	real_mtu = mtu + ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN;
	if ((real_mtu > sc->max_mtu) || real_mtu < 60)
		return EINVAL;
	FUNC0(&sc->driver_mtx);
	old_mtu = ifp->if_mtu;
	ifp->if_mtu = mtu;
	if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
		FUNC2(sc, 0);
		err = FUNC3(sc);
		if (err != 0) {
			ifp->if_mtu = old_mtu;
			FUNC2(sc, 0);
			(void) FUNC3(sc);
		}
	}
	FUNC1(&sc->driver_mtx);
	return err;
}