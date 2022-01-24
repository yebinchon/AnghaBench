#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ifq_drv_maxlen; int /*<<< orphan*/  ifq_mtx; } ;
struct ifnet {int if_flags; int if_hdrlen; int if_capabilities; int if_capenable; int if_hwassist; TYPE_5__ if_snd; int /*<<< orphan*/  if_transmit; int /*<<< orphan*/  if_xname; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_init; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_7__ {int phy_id; int if_flags; int /*<<< orphan*/  mac; TYPE_5__* tx_free_queue; int /*<<< orphan*/  tx_mtx; int /*<<< orphan*/  media; int /*<<< orphan*/ * miibus; int /*<<< orphan*/ * phy_device; struct ifnet* ifp; } ;
typedef  TYPE_1__ cvm_oct_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int CSUM_TCP ; 
 int CSUM_UDP ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  MAX_OUT_QUEUE_DEPTH ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  octe_init ; 
 int /*<<< orphan*/  octe_ioctl ; 
 int /*<<< orphan*/  octe_medchange ; 
 int /*<<< orphan*/  octe_medstat ; 
 int /*<<< orphan*/  octe_mii_medchange ; 
 int /*<<< orphan*/  octe_mii_medstat ; 
 int /*<<< orphan*/  octe_transmit ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct ifnet *ifp;
	cvm_oct_private_t *priv;
	device_t child;
	unsigned qos;
	int error;

	priv = FUNC7(dev);
	ifp = priv->ifp;

	FUNC11(ifp, FUNC6(dev), FUNC8(dev));

	if (priv->phy_id != -1) {
		if (priv->phy_device == NULL) {
			error = FUNC15(dev, &priv->miibus, ifp,
			    octe_mii_medchange, octe_mii_medstat,
			    BMSR_DEFCAPMASK, priv->phy_id, MII_OFFSET_ANY, 0);
			if (error != 0)
				FUNC9(dev, "attaching PHYs failed\n");
		} else {
			child = FUNC5(dev, priv->phy_device, -1);
			if (child == NULL)
				FUNC9(dev, "missing phy %u device %s\n", priv->phy_id, priv->phy_device);
		}
	}

	if (priv->miibus == NULL) {
		FUNC13(&priv->media, 0, octe_medchange, octe_medstat);

		FUNC12(&priv->media, IFM_ETHER | IFM_AUTO, 0, NULL);
		FUNC14(&priv->media, IFM_ETHER | IFM_AUTO);
	}

	/*
	 * XXX
	 * We don't support programming the multicast filter right now, although it
	 * ought to be easy enough.  (Presumably it's just a matter of putting
	 * multicast addresses in the CAM?)
	 */
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST | IFF_ALLMULTI;
	ifp->if_init = octe_init;
	ifp->if_ioctl = octe_ioctl;

	priv->if_flags = ifp->if_flags;

	FUNC16(&priv->tx_mtx, ifp->if_xname, "octe tx send queue", MTX_DEF);

	for (qos = 0; qos < 16; qos++) {
		FUNC16(&priv->tx_free_queue[qos].ifq_mtx, ifp->if_xname, "octe tx free queue", MTX_DEF);
		FUNC0(&priv->tx_free_queue[qos], MAX_OUT_QUEUE_DEPTH);
	}

	FUNC10(ifp, priv->mac);

	ifp->if_transmit = octe_transmit;

	ifp->if_hdrlen = sizeof(struct ether_vlan_header);
	ifp->if_capabilities = IFCAP_VLAN_MTU | IFCAP_HWCSUM;
	ifp->if_capenable = ifp->if_capabilities;
	ifp->if_hwassist = CSUM_TCP | CSUM_UDP;

	FUNC2(priv);
	FUNC0(&ifp->if_snd, MAX_OUT_QUEUE_DEPTH);
	ifp->if_snd.ifq_drv_maxlen = MAX_OUT_QUEUE_DEPTH;
	FUNC1(&ifp->if_snd);
	FUNC3(priv);

	return (FUNC4(dev));
}