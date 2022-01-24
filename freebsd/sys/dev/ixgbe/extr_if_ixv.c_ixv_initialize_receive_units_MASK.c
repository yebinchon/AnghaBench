#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef  int u64 ;
typedef  int u32 ;
struct rx_ring {int rx_paddr; int me; int /*<<< orphan*/  tail; } ;
struct netmap_kring {int dummy; } ;
struct netmap_adapter {int num_rx_desc; struct netmap_kring** rx_rings; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ix_rx_queue {struct rx_ring rxr; } ;
struct ifnet {scalar_t__ if_mtu; int if_capenable; } ;
struct adapter {int num_rx_queues; struct ixgbe_hw hw; TYPE_2__* shared; int /*<<< orphan*/  dev; int /*<<< orphan*/  max_frame_size; struct ix_rx_queue* rx_queues; } ;
typedef  TYPE_2__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_4__ {int* isc_nrxd; } ;

/* Variables and functions */
 scalar_t__ ETHERMTU ; 
 int IFCAP_NETMAP ; 
 int IXGBE_PSRTYPE_IPV4HDR ; 
 int IXGBE_PSRTYPE_IPV6HDR ; 
 int IXGBE_PSRTYPE_L2HDR ; 
 int IXGBE_PSRTYPE_TCPHDR ; 
 int IXGBE_PSRTYPE_UDPHDR ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int IXGBE_RXDCTL_ENABLE ; 
 int IXGBE_RXDCTL_VME ; 
 int IXGBE_SRRCTL_BSIZEHDR_MASK ; 
 int IXGBE_SRRCTL_BSIZEPKT_MASK ; 
 int IXGBE_SRRCTL_BSIZEPKT_SHIFT ; 
 int IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF ; 
 int /*<<< orphan*/  IXGBE_VFPSRTYPE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 struct netmap_adapter* FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 struct ifnet* FUNC11 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_X550_vf ; 
 scalar_t__ FUNC13 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (struct netmap_kring*) ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static void
FUNC18(if_ctx_t ctx)
{
	struct adapter     *adapter = FUNC12(ctx);
	if_softc_ctx_t     scctx;
	struct ixgbe_hw    *hw = &adapter->hw;
	struct ifnet       *ifp = FUNC11(ctx);
	struct ix_rx_queue *que = adapter->rx_queues;
	u32                bufsz, psrtype;

	if (ifp->if_mtu > ETHERMTU)
		bufsz = 4096 >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;
	else
		bufsz = 2048 >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;

	psrtype = IXGBE_PSRTYPE_TCPHDR
	        | IXGBE_PSRTYPE_UDPHDR
	        | IXGBE_PSRTYPE_IPV4HDR
	        | IXGBE_PSRTYPE_IPV6HDR
	        | IXGBE_PSRTYPE_L2HDR;

	if (adapter->num_rx_queues > 1)
		psrtype |= 1 << 29;

	FUNC8(hw, IXGBE_VFPSRTYPE, psrtype);

	/* Tell PF our max_frame size */
	if (FUNC13(hw, adapter->max_frame_size) != 0) {
		FUNC10(adapter->dev, "There is a problem with the PF setup.  It is likely the receive unit for this VF will not function correctly.\n");
	}
	scctx = adapter->shared;

	for (int i = 0; i < adapter->num_rx_queues; i++, que++) {
		struct rx_ring *rxr = &que->rxr;
		u64            rdba = rxr->rx_paddr;
		u32            reg, rxdctl;
		int            j = rxr->me;

		/* Disable the queue */
		rxdctl = FUNC0(hw, FUNC6(j));
		rxdctl &= ~IXGBE_RXDCTL_ENABLE;
		FUNC8(hw, FUNC6(j), rxdctl);
		for (int k = 0; k < 10; k++) {
			if (FUNC0(hw, FUNC6(j)) &
			    IXGBE_RXDCTL_ENABLE)
				FUNC15(1);
			else
				break;
		}
		FUNC17();
		/* Setup the Base and Length of the Rx Descriptor Ring */
		FUNC8(hw, FUNC2(j),
		    (rdba & 0x00000000ffffffffULL));
		FUNC8(hw, FUNC1(j), (rdba >> 32));
		FUNC8(hw, FUNC4(j),
		    scctx->isc_nrxd[0] * sizeof(union ixgbe_adv_rx_desc));

		/* Reset the ring indices */
		FUNC8(hw, FUNC3(rxr->me), 0);
		FUNC8(hw, FUNC5(rxr->me), 0);

		/* Set up the SRRCTL register */
		reg = FUNC0(hw, FUNC7(j));
		reg &= ~IXGBE_SRRCTL_BSIZEHDR_MASK;
		reg &= ~IXGBE_SRRCTL_BSIZEPKT_MASK;
		reg |= bufsz;
		reg |= IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF;
		FUNC8(hw, FUNC7(j), reg);

		/* Capture Rx Tail index */
		rxr->tail = FUNC5(rxr->me);

		/* Do the queue enabling last */
		rxdctl |= IXGBE_RXDCTL_ENABLE | IXGBE_RXDCTL_VME;
		FUNC8(hw, FUNC6(j), rxdctl);
		for (int l = 0; l < 10; l++) {
			if (FUNC0(hw, FUNC6(j)) &
			    IXGBE_RXDCTL_ENABLE)
				break;
			FUNC15(1);
		}
		FUNC17();

		/* Set the Tail Pointer */
#ifdef DEV_NETMAP
		/*
		 * In netmap mode, we must preserve the buffers made
		 * available to userspace before the if_init()
		 * (this is true by default on the TX side, because
		 * init makes all buffers available to userspace).
		 *
		 * netmap_reset() and the device specific routines
		 * (e.g. ixgbe_setup_receive_rings()) map these
		 * buffers at the end of the NIC ring, so here we
		 * must set the RDT (tail) register to make sure
		 * they are not overwritten.
		 *
		 * In this driver the NIC ring starts at RDH = 0,
		 * RDT points to the last slot available for reception (?),
		 * so RDT = num_rx_desc - 1 means the whole ring is available.
		 */
		if (ifp->if_capenable & IFCAP_NETMAP) {
			struct netmap_adapter *na = NA(ifp);
			struct netmap_kring *kring = na->rx_rings[j];
			int t = na->num_rx_desc - 1 - nm_kr_rxspace(kring);

			IXGBE_WRITE_REG(hw, IXGBE_VFRDT(rxr->me), t);
		} else
#endif /* DEV_NETMAP */
			FUNC8(hw, FUNC5(rxr->me),
			    scctx->isc_nrxd[0] - 1);
	}

	/*
	 * Do not touch RSS and RETA settings for older hardware
	 * as those are shared among PF and all VF.
	 */
	if (adapter->hw.mac.type >= ixgbe_mac_X550_vf)
		FUNC14(adapter);
}