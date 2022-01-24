#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tx_ring {scalar_t__ tx_cidx_processed; int /*<<< orphan*/  tx_rs_pidx; int /*<<< orphan*/  tx_rs_cidx; } ;
struct ifnet {int dummy; } ;
struct em_tx_queue {struct tx_ring txr; } ;
struct TYPE_13__ {scalar_t__ type; int /*<<< orphan*/  addr; } ;
struct TYPE_12__ {scalar_t__ media_type; } ;
struct TYPE_15__ {TYPE_2__ mac; TYPE_1__ phy; } ;
struct adapter {int tx_num_queues; int ivars; scalar_t__ intr_type; TYPE_4__ hw; scalar_t__ has_amt; scalar_t__ has_manage; int /*<<< orphan*/  rx_mbuf_sz; struct em_tx_queue* tx_queues; TYPE_3__* shared; } ;
typedef  TYPE_3__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_14__ {scalar_t__* isc_ntxd; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_CTRL ; 
 int /*<<< orphan*/  E1000_CTRL_EXT ; 
 int E1000_CTRL_EXT_PBA_CLR ; 
 int E1000_CTRL_VME ; 
 int /*<<< orphan*/  E1000_ICR ; 
 int /*<<< orphan*/  E1000_ICS ; 
 int E1000_ICS_LSC ; 
 int /*<<< orphan*/  E1000_IVAR ; 
 scalar_t__ E1000_RAR_ENTRIES ; 
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_VET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int ETHERTYPE_VLAN ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int IFCAP_VLAN_HWFILTER ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int /*<<< orphan*/  IFF_PROMISC ; 
 scalar_t__ IFLIB_INTR_MSIX ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ e1000_82571 ; 
 scalar_t__ e1000_82574 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ e1000_i354 ; 
 scalar_t__ e1000_media_type_copper ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct adapter*) ; 
 int FUNC19 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC20 (struct ifnet*) ; 
 struct ifnet* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct adapter*) ; 
 scalar_t__ igb_mac_min ; 

__attribute__((used)) static void
FUNC25(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC23(ctx);
	if_softc_ctx_t scctx = adapter->shared;
	struct ifnet *ifp = FUNC21(ctx);
	struct em_tx_queue *tx_que;
	int i;

	FUNC2("em_if_init: begin");

	/* Get the latest mac address, User can use a LAA */
	FUNC3(FUNC20(ifp), adapter->hw.mac.addr,
	    ETHER_ADDR_LEN);

	/* Put the address into the Receive Address Array */
	FUNC5(&adapter->hw, adapter->hw.mac.addr, 0);

	/*
	 * With the 82571 adapter, RAR[0] may be overwritten
	 * when the other port is reset, we make a duplicate
	 * in RAR[14] for that eventuality, this assures
	 * the interface continues to function.
	 */
	if (adapter->hw.mac.type == e1000_82571) {
		FUNC9(&adapter->hw, TRUE);
		FUNC5(&adapter->hw, adapter->hw.mac.addr,
		    E1000_RAR_ENTRIES - 1);
	}


	/* Initialize the hardware */
	FUNC17(ctx);
	FUNC13(ctx);

	for (i = 0, tx_que = adapter->tx_queues; i < adapter->tx_num_queues; i++, tx_que++) {
		struct tx_ring *txr = &tx_que->txr;

		txr->tx_rs_cidx = txr->tx_rs_pidx;

		/* Initialize the last processed descriptor to be the end of
		 * the ring, rather than the start, so that we avoid an
		 * off-by-one error when calculating how many descriptors are
		 * done in the credits_update function.
		 */
		txr->tx_cidx_processed = scctx->isc_ntxd[0] - 1;
	}

	/* Setup VLAN support, basic and offload if available */
	FUNC1(&adapter->hw, E1000_VET, ETHERTYPE_VLAN);

	/* Clear bad data from Rx FIFOs */
	if (adapter->hw.mac.type >= igb_mac_min)
		FUNC6(&adapter->hw);

	/* Configure for OS presence */
	FUNC14(adapter);

	/* Prepare transmit descriptors and buffers */
	FUNC16(ctx);

	/* Setup Multicast table */
	FUNC11(ctx);

	adapter->rx_mbuf_sz = FUNC22(ctx);
	FUNC15(ctx);

	/* Use real VLAN Filter support? */
	if (FUNC19(ifp) & IFCAP_VLAN_HWTAGGING) {
		if (FUNC19(ifp) & IFCAP_VLAN_HWFILTER)
			/* Use real VLAN Filter support */
			FUNC18(adapter);
		else {
			u32 ctrl;
			ctrl = FUNC0(&adapter->hw, E1000_CTRL);
			ctrl |= E1000_CTRL_VME;
			FUNC1(&adapter->hw, E1000_CTRL, ctrl);
		}
	}

	/* Don't lose promiscuous settings */
	FUNC12(ctx, IFF_PROMISC);
	FUNC4(&adapter->hw);

	/* MSI-X configuration for 82574 */
	if (adapter->hw.mac.type == e1000_82574) {
		int tmp = FUNC0(&adapter->hw, E1000_CTRL_EXT);

		tmp |= E1000_CTRL_EXT_PBA_CLR;
		FUNC1(&adapter->hw, E1000_CTRL_EXT, tmp);
		/* Set the IVAR - interrupt vector routing. */
		FUNC1(&adapter->hw, E1000_IVAR, adapter->ivars);
	} else if (adapter->intr_type == IFLIB_INTR_MSIX) /* Set up queue routing */
		FUNC24(adapter);

	/* this clears any pending interrupts */
	FUNC0(&adapter->hw, E1000_ICR);
	FUNC1(&adapter->hw, E1000_ICS, E1000_ICS_LSC);

	/* AMT based hardware can now take control from firmware */
	if (adapter->has_manage && adapter->has_amt)
		FUNC10(adapter);

	/* Set Energy Efficient Ethernet */
	if (adapter->hw.mac.type >= igb_mac_min &&
	    adapter->hw.phy.media_type == e1000_media_type_copper) {
		if (adapter->hw.mac.type == e1000_i354)
			FUNC8(&adapter->hw, TRUE, TRUE);
		else
			FUNC7(&adapter->hw, TRUE, TRUE);
	}
}