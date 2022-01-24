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
struct vxlan_softc {int /*<<< orphan*/  vxl_mc_ifindex; struct ifnet* vxl_mc_ifp; int /*<<< orphan*/  vxl_mc_ifname; int /*<<< orphan*/  vxl_ifp; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_index; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTSUP ; 
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 struct ifnet* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vxlan_softc *sc)
{
	struct ifnet *ifp;

	ifp = FUNC2(sc->vxl_mc_ifname);
	if (ifp == NULL) {
		FUNC0(sc->vxl_ifp, "multicast interface %s does "
		    "not exist\n", sc->vxl_mc_ifname);
		return (ENOENT);
	}

	if ((ifp->if_flags & IFF_MULTICAST) == 0) {
		FUNC0(sc->vxl_ifp, "interface %s does not support "
		     "multicast\n", sc->vxl_mc_ifname);
		FUNC1(ifp);
		return (ENOTSUP);
	}

	sc->vxl_mc_ifp = ifp;
	sc->vxl_mc_ifindex = ifp->if_index;

	return (0);
}