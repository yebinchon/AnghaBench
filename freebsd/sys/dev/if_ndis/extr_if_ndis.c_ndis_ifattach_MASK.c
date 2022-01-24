#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct ndis_softc {int /*<<< orphan*/  ifmedia; int /*<<< orphan*/  ndis_hwassist; int /*<<< orphan*/  ndis_dev; struct ifnet* ifp; } ;
struct TYPE_3__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_baudrate; int /*<<< orphan*/  if_hwassist; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct ndis_softc* if_softc; } ;
typedef  int /*<<< orphan*/  eaddr ;

/* Variables and functions */
 int ENOSPC ; 
 int ETHER_ADDR_LEN ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_100_TX ; 
 int IFM_10_T ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 int /*<<< orphan*/  IFM_IMASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  OID_802_3_CURRENT_ADDRESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ *) ; 
 struct ifnet* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ndis_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ndis_ifioctl ; 
 int /*<<< orphan*/  ndis_ifmedia_sts ; 
 int /*<<< orphan*/  ndis_ifmedia_upd ; 
 int /*<<< orphan*/  ndis_ifstart ; 
 int /*<<< orphan*/  ndis_init ; 
 int /*<<< orphan*/  FUNC11 (struct ndis_softc*) ; 

__attribute__((used)) static int
FUNC12(struct ndis_softc *sc)
{
	struct ifnet *ifp;
	u_char eaddr[ETHER_ADDR_LEN];
	int len;

	ifp = FUNC5(IFT_ETHER);
	if (ifp == NULL)
		return (ENOSPC);
	sc->ifp = ifp;
	ifp->if_softc = sc;

	/* Check for task offload support. */
	FUNC11(sc);

	/*
	 * Get station address from the driver.
	 */
	len = sizeof(eaddr);
	FUNC10(sc, OID_802_3_CURRENT_ADDRESS, eaddr, &len);

	FUNC6(ifp, FUNC2(sc->ndis_dev),
	    FUNC3(sc->ndis_dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = ndis_ifioctl;
	ifp->if_start = ndis_ifstart;
	ifp->if_init = ndis_init;
	ifp->if_baudrate = 10000000;
	FUNC0(&ifp->if_snd, 50);
	ifp->if_snd.ifq_drv_maxlen = 25;
	FUNC1(&ifp->if_snd);
	ifp->if_capenable = ifp->if_capabilities;
	ifp->if_hwassist = sc->ndis_hwassist;

	FUNC8(&sc->ifmedia, IFM_IMASK, ndis_ifmedia_upd,
	    ndis_ifmedia_sts);
	FUNC7(&sc->ifmedia, IFM_ETHER|IFM_10_T, 0, NULL);
	FUNC7(&sc->ifmedia, IFM_ETHER|IFM_10_T|IFM_FDX, 0, NULL);
	FUNC7(&sc->ifmedia, IFM_ETHER|IFM_100_TX, 0, NULL);
	FUNC7(&sc->ifmedia, IFM_ETHER|IFM_100_TX|IFM_FDX, 0, NULL);
	FUNC7(&sc->ifmedia, IFM_ETHER|IFM_AUTO, 0, NULL);
	FUNC9(&sc->ifmedia, IFM_ETHER|IFM_AUTO);
	FUNC4(ifp, eaddr);

	return (0);
}