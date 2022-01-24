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
struct rl_softc {int /*<<< orphan*/  rl_flags; struct ifnet* rl_ifp; int /*<<< orphan*/  rl_miibus; } ;
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RL_FLAG_LINK ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t dev)
{
	struct rl_softc		*sc;
	struct ifnet		*ifp;
	struct mii_data		*mii;

	sc = FUNC1(dev);
	mii = FUNC1(sc->rl_miibus);
	ifp = sc->rl_ifp;
	if (mii == NULL || ifp == NULL ||
	    (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
		return;

	sc->rl_flags &= ~RL_FLAG_LINK;
	if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
	    (IFM_ACTIVE | IFM_AVALID)) {
		switch (FUNC0(mii->mii_media_active)) {
		case IFM_10_T:
		case IFM_100_TX:
			sc->rl_flags |= RL_FLAG_LINK;
			break;
		default:
			break;
		}
	}
	/*
	 * RealTek controllers do not provide any interface to
	 * Tx/Rx MACs for resolved speed, duplex and flow-control
	 * parameters.
	 */
}