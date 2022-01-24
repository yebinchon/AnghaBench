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
struct vtnet_softc {int vtnet_flags; int /*<<< orphan*/  vtnet_hwaddr; struct ifnet* vtnet_ifp; } ;
struct ifnet {int if_capenable; int /*<<< orphan*/  if_drv_flags; int /*<<< orphan*/  if_hwassist; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSUM_IP6_TSO ; 
 int /*<<< orphan*/  CSUM_IP_TSO ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TSO6 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_TXCSUM_IPV6 ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  VTNET_CSUM_OFFLOAD ; 
 int /*<<< orphan*/  VTNET_CSUM_OFFLOAD_IPV6 ; 
 int VTNET_FLAG_CTRL_VQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtnet_softc*) ; 
 int FUNC4 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vtnet_softc*) ; 

__attribute__((used)) static int
FUNC7(struct vtnet_softc *sc)
{
	struct ifnet *ifp;
	int error;

	ifp = sc->vtnet_ifp;

	/* Use the current MAC address. */
	FUNC1(FUNC0(ifp), sc->vtnet_hwaddr, ETHER_ADDR_LEN);
	FUNC6(sc);

	FUNC5(sc);

	ifp->if_hwassist = 0;
	if (ifp->if_capenable & IFCAP_TXCSUM)
		ifp->if_hwassist |= VTNET_CSUM_OFFLOAD;
	if (ifp->if_capenable & IFCAP_TXCSUM_IPV6)
		ifp->if_hwassist |= VTNET_CSUM_OFFLOAD_IPV6;
	if (ifp->if_capenable & IFCAP_TSO4)
		ifp->if_hwassist |= CSUM_IP_TSO;
	if (ifp->if_capenable & IFCAP_TSO6)
		ifp->if_hwassist |= CSUM_IP6_TSO;

	if (sc->vtnet_flags & VTNET_FLAG_CTRL_VQ)
		FUNC3(sc);

	error = FUNC4(sc);
	if (error)
		return (error);

	FUNC2(sc);
	ifp->if_drv_flags |= IFF_DRV_RUNNING;

	return (0);
}