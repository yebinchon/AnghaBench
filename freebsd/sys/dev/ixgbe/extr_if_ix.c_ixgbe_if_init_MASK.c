#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tx_ring {int /*<<< orphan*/  me; } ;
struct rx_ring {int /*<<< orphan*/  me; } ;
struct TYPE_7__ {int (* identify ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__ ops; } ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int rar_used_count; } ;
struct ixgbe_hw {TYPE_4__ phy; TYPE_2__ mac; TYPE_1__ addr_ctrl; } ;
struct ix_tx_queue {struct tx_ring txr; } ;
struct ix_rx_queue {struct rx_ring rxr; } ;
struct ifnet {scalar_t__ if_mtu; } ;
struct adapter {int max_frame_size; int num_tx_queues; int num_rx_queues; int feat_en; int /*<<< orphan*/  vector; struct ix_rx_queue* rx_queues; struct ix_tx_queue* tx_queues; scalar_t__ task_requests; int /*<<< orphan*/  rx_mbuf_sz; int /*<<< orphan*/  pool; struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ ETHERMTU ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IXGBE_CTRL_EXT ; 
 int IXGBE_CTRL_EXT_PFRSTD ; 
 int /*<<< orphan*/  IXGBE_EIAM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int IXGBE_EICS_RTX_QUEUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int IXGBE_ERR_SFP_NOT_SUPPORTED ; 
 int /*<<< orphan*/  IXGBE_ETH_LENGTH_OF_ADDRESS ; 
 int IXGBE_FEATURE_SRIOV ; 
 int IXGBE_LINK_ITR ; 
 int /*<<< orphan*/  IXGBE_MHADD ; 
 int IXGBE_MHADD_MFS_MASK ; 
 int IXGBE_MHADD_MFS_SHIFT ; 
 int IXGBE_RAH_AV ; 
 int FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_RXCTRL ; 
 int IXGBE_RXCTRL_DMBYPS ; 
 int IXGBE_RXCTRL_RXEN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int IXGBE_RXDCTL_ENABLE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int IXGBE_TXDCTL_ENABLE ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC15 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC16 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct adapter*) ; 
 scalar_t__ ixgbe_enable_msix ; 
 int /*<<< orphan*/  FUNC20 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC24 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC25 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 scalar_t__ ixgbe_phy_none ; 
 int /*<<< orphan*/  FUNC28 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 int FUNC34 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC35 () ; 

void
FUNC36(if_ctx_t ctx)
{
	struct adapter     *adapter = FUNC13(ctx);
	struct ifnet       *ifp = FUNC11(ctx);
	device_t           dev = FUNC10(ctx);
	struct ixgbe_hw *hw = &adapter->hw;
	struct ix_rx_queue *rx_que;
	struct ix_tx_queue *tx_que;
	u32             txdctl, mhadd;
	u32             rxdctl, rxctrl;
	u32             ctrl_ext;

	int             i, j, err;

	FUNC1("ixgbe_if_init: begin");

	/* Queue indices may change with IOV mode */
	FUNC14(adapter);

	/* reprogram the RAR[0] in case user changed it. */
	FUNC30(hw, 0, hw->mac.addr, adapter->pool, IXGBE_RAH_AV);

	/* Get the latest mac address, User can use a LAA */
	FUNC8(FUNC0(ifp), hw->mac.addr, IXGBE_ETH_LENGTH_OF_ADDRESS);
	FUNC30(hw, 0, hw->mac.addr, adapter->pool, 1);
	hw->addr_ctrl.rar_used_count = 1;

	FUNC24(hw);

	FUNC25(adapter);

	FUNC27(ctx);

	/* Setup Multicast table */
	FUNC22(ctx);

	/* Determine the correct mbuf pool, based on frame size */
	adapter->rx_mbuf_sz = FUNC12(ctx);

	/* Configure RX settings */
	FUNC26(ctx);

	/*
	 * Initialize variable holding task enqueue requests
	 * from MSI-X interrupts
	 */
	adapter->task_requests = 0;

	/* Enable SDP & MSI-X interrupts based on adapter */
	FUNC17(adapter);

	/* Set MTU size */
	if (ifp->if_mtu > ETHERMTU) {
		/* aka IXGBE_MAXFRS on 82599 and newer */
		mhadd = FUNC4(hw, IXGBE_MHADD);
		mhadd &= ~IXGBE_MHADD_MFS_MASK;
		mhadd |= adapter->max_frame_size << IXGBE_MHADD_MFS_SHIFT;
		FUNC7(hw, IXGBE_MHADD, mhadd);
	}

	/* Now enable all the queues */
	for (i = 0, tx_que = adapter->tx_queues; i < adapter->num_tx_queues; i++, tx_que++) {
		struct tx_ring *txr = &tx_que->txr;

		txdctl = FUNC4(hw, FUNC6(txr->me));
		txdctl |= IXGBE_TXDCTL_ENABLE;
		/* Set WTHRESH to 8, burst writeback */
		txdctl |= (8 << 16);
		/*
		 * When the internal queue falls below PTHRESH (32),
		 * start prefetching as long as there are at least
		 * HTHRESH (1) buffers ready. The values are taken
		 * from the Intel linux driver 3.8.21.
		 * Prefetching enables tx line rate even with 1 queue.
		 */
		txdctl |= (32 << 0) | (1 << 8);
		FUNC7(hw, FUNC6(txr->me), txdctl);
	}

	for (i = 0, rx_que = adapter->rx_queues; i < adapter->num_rx_queues; i++, rx_que++) {
		struct rx_ring *rxr = &rx_que->rxr;

		rxdctl = FUNC4(hw, FUNC5(rxr->me));
		if (hw->mac.type == ixgbe_mac_82598EB) {
			/*
			 * PTHRESH = 21
			 * HTHRESH = 4
			 * WTHRESH = 8
			 */
			rxdctl &= ~0x3FFFFF;
			rxdctl |= 0x080420;
		}
		rxdctl |= IXGBE_RXDCTL_ENABLE;
		FUNC7(hw, FUNC5(rxr->me), rxdctl);
		for (j = 0; j < 10; j++) {
			if (FUNC4(hw, FUNC5(rxr->me)) &
			    IXGBE_RXDCTL_ENABLE)
				break;
			else
				FUNC33(1);
		}
		FUNC35();
	}

	/* Enable Receive engine */
	rxctrl = FUNC4(hw, IXGBE_RXCTRL);
	if (hw->mac.type == ixgbe_mac_82598EB)
		rxctrl |= IXGBE_RXCTRL_DMBYPS;
	rxctrl |= IXGBE_RXCTRL_RXEN;
	FUNC20(hw, rxctrl);

	/* Set up MSI/MSI-X routing */
	if (ixgbe_enable_msix)  {
		FUNC19(adapter);
		/* Set up auto-mask */
		if (hw->mac.type == ixgbe_mac_82598EB)
			FUNC7(hw, IXGBE_EIAM, IXGBE_EICS_RTX_QUEUE);
		else {
			FUNC7(hw, FUNC2(0), 0xFFFFFFFF);
			FUNC7(hw, FUNC2(1), 0xFFFFFFFF);
		}
	} else {  /* Simple settings for Legacy/MSI */
		FUNC28(adapter, 0, 0, 0);
		FUNC28(adapter, 0, 0, 1);
		FUNC7(hw, IXGBE_EIAM, IXGBE_EICS_RTX_QUEUE);
	}

	FUNC23(adapter);

	/*
	 * Check on any SFP devices that
	 * need to be kick-started
	 */
	if (hw->phy.type == ixgbe_phy_none) {
		err = hw->phy.ops.identify(hw);
		if (err == IXGBE_ERR_SFP_NOT_SUPPORTED) {
			FUNC9(dev,
			    "Unsupported SFP+ module type was detected.\n");
			return;
		}
	}

	/* Set moderation on the Link interrupt */
	FUNC7(hw, FUNC3(adapter->vector), IXGBE_LINK_ITR);

	/* Enable power to the phy. */
	FUNC29(hw, TRUE);

	/* Config/Enable Link */
	FUNC18(ctx);

	/* Hardware Packet Buffer & Flow Control setup */
	FUNC15(adapter);

	/* Initialize the FC settings */
	FUNC32(hw);

	/* Set up VLAN support and filter */
	FUNC31(ctx);

	/* Setup DMA Coalescing */
	FUNC16(adapter);

	/* And now turn on interrupts */
	FUNC21(ctx);

	/* Enable the use of the MBX by the VF's */
	if (adapter->feat_en & IXGBE_FEATURE_SRIOV) {
		ctrl_ext = FUNC4(hw, IXGBE_CTRL_EXT);
		ctrl_ext |= IXGBE_CTRL_EXT_PFRSTD;
		FUNC7(hw, IXGBE_CTRL_EXT, ctrl_ext);
	}

}