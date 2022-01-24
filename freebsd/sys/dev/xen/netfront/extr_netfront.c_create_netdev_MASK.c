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
struct netfront_info {int /*<<< orphan*/  mac; struct ifnet* xn_ifp; int /*<<< orphan*/  sc_media; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  xbdev; } ;
struct ifnet {int if_flags; int if_capenable; int if_capabilities; int /*<<< orphan*/  if_hw_tsomaxsegsize; int /*<<< orphan*/  if_hw_tsomaxsegcount; scalar_t__ if_hw_tsomax; int /*<<< orphan*/  if_hwassist; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_qflush; int /*<<< orphan*/  if_transmit; int /*<<< orphan*/  if_ioctl; struct netfront_info* if_softc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ ETHER_HDR_LEN ; 
 scalar_t__ ETHER_VLAN_ENCAP_LEN ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_LRO ; 
 int IFCAP_TSO4 ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_ETHER ; 
 int IFM_MANUAL ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MAX_TX_REQ_FRAGS ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  XN_CSUM_FEATURES ; 
 struct netfront_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct netfront_info*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xn_ifinit ; 
 int /*<<< orphan*/  xn_ifmedia_sts ; 
 int /*<<< orphan*/  xn_ifmedia_upd ; 
 int /*<<< orphan*/  xn_ioctl ; 
 int /*<<< orphan*/  xn_qflush ; 
 int /*<<< orphan*/  xn_txq_mq_start ; 

int
FUNC12(device_t dev)
{
	struct netfront_info *np;
	int err;
	struct ifnet *ifp;

	np = FUNC1(dev);

	np->xbdev         = dev;

	FUNC9(&np->sc_lock, "xnsc", "netfront softc lock", MTX_DEF);

	FUNC7(&np->sc_media, 0, xn_ifmedia_upd, xn_ifmedia_sts);
	FUNC6(&np->sc_media, IFM_ETHER|IFM_MANUAL, 0, NULL);
	FUNC8(&np->sc_media, IFM_ETHER|IFM_MANUAL);

	err = FUNC11(dev, np->mac);
	if (err != 0)
		goto error;

	/* Set up ifnet structure */
	ifp = np->xn_ifp = FUNC4(IFT_ETHER);
    	ifp->if_softc = np;
    	FUNC5(ifp, "xn",  FUNC2(dev));
    	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
    	ifp->if_ioctl = xn_ioctl;

	ifp->if_transmit = xn_txq_mq_start;
	ifp->if_qflush = xn_qflush;

    	ifp->if_init = xn_ifinit;

    	ifp->if_hwassist = XN_CSUM_FEATURES;
	/* Enable all supported features at device creation. */
	ifp->if_capenable = ifp->if_capabilities =
	    IFCAP_HWCSUM|IFCAP_TSO4|IFCAP_LRO;
	ifp->if_hw_tsomax = 65536 - (ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN);
	ifp->if_hw_tsomaxsegcount = MAX_TX_REQ_FRAGS;
	ifp->if_hw_tsomaxsegsize = PAGE_SIZE;

    	FUNC3(ifp, np->mac);
	FUNC10(np);

	return (0);

error:
	FUNC0(err != 0, ("Error path with no error code specified"));
	return (err);
}