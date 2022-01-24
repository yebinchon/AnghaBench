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
typedef  union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef  int u64 ;
typedef  int u32 ;
struct tx_ring {int tx_paddr; int me; int tx_cidx_processed; int /*<<< orphan*/ * tx_rsq; int /*<<< orphan*/  tx_rs_pidx; int /*<<< orphan*/  tx_rs_cidx; int /*<<< orphan*/  tail; } ;
struct TYPE_3__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ix_tx_queue {struct tx_ring txr; } ;
struct adapter {int num_tx_queues; int /*<<< orphan*/  iov_mode; struct ix_tx_queue* tx_queues; TYPE_2__* shared; struct ixgbe_hw hw; } ;
typedef  TYPE_2__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_4__ {int* isc_ntxd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IXGBE_DCA_TXCTRL_DESC_WRO_EN ; 
 int /*<<< orphan*/  IXGBE_DMATXCTL ; 
 int IXGBE_DMATXCTL_TE ; 
 int /*<<< orphan*/  IXGBE_MTQC ; 
 int FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_RTTDCS ; 
 int IXGBE_RTTDCS_ARBDIS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  QIDX_INVALID ; 
 struct adapter* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
#define  ixgbe_mac_82598EB 128 

__attribute__((used)) static void
FUNC11(if_ctx_t ctx)
{
	struct adapter     *adapter = FUNC9(ctx);
	struct ixgbe_hw    *hw = &adapter->hw;
	if_softc_ctx_t     scctx = adapter->shared;
	struct ix_tx_queue *que;
	int i;

	/* Setup the Base and Length of the Tx Descriptor Ring */
	for (i = 0, que = adapter->tx_queues; i < adapter->num_tx_queues;
	    i++, que++) {
		struct tx_ring	   *txr = &que->txr;
		u64 tdba = txr->tx_paddr;
		u32 txctrl = 0;
		int j = txr->me;

		FUNC8(hw, FUNC4(j),
		    (tdba & 0x00000000ffffffffULL));
		FUNC8(hw, FUNC3(j), (tdba >> 32));
		FUNC8(hw, FUNC6(j),
		    scctx->isc_ntxd[0] * sizeof(union ixgbe_adv_tx_desc));

		/* Setup the HW Tx Head and Tail descriptor pointers */
		FUNC8(hw, FUNC5(j), 0);
		FUNC8(hw, FUNC7(j), 0);

		/* Cache the tail address */
		txr->tail = FUNC7(txr->me);

		txr->tx_rs_cidx = txr->tx_rs_pidx;
		txr->tx_cidx_processed = scctx->isc_ntxd[0] - 1;
		for (int k = 0; k < scctx->isc_ntxd[0]; k++)
			txr->tx_rsq[k] = QIDX_INVALID;

		/* Disable Head Writeback */
		/*
		 * Note: for X550 series devices, these registers are actually
		 * prefixed with TPH_ isntead of DCA_, but the addresses and
		 * fields remain the same.
		 */
		switch (hw->mac.type) {
		case ixgbe_mac_82598EB:
			txctrl = FUNC2(hw, FUNC0(j));
			break;
		default:
			txctrl = FUNC2(hw, FUNC1(j));
			break;
		}
		txctrl &= ~IXGBE_DCA_TXCTRL_DESC_WRO_EN;
		switch (hw->mac.type) {
		case ixgbe_mac_82598EB:
			FUNC8(hw, FUNC0(j), txctrl);
			break;
		default:
			FUNC8(hw, FUNC1(j), txctrl);
			break;
		}

	}

	if (hw->mac.type != ixgbe_mac_82598EB) {
		u32 dmatxctl, rttdcs;

		dmatxctl = FUNC2(hw, IXGBE_DMATXCTL);
		dmatxctl |= IXGBE_DMATXCTL_TE;
		FUNC8(hw, IXGBE_DMATXCTL, dmatxctl);
		/* Disable arbiter to set MTQC */
		rttdcs = FUNC2(hw, IXGBE_RTTDCS);
		rttdcs |= IXGBE_RTTDCS_ARBDIS;
		FUNC8(hw, IXGBE_RTTDCS, rttdcs);
		FUNC8(hw, IXGBE_MTQC,
		    FUNC10(adapter->iov_mode));
		rttdcs &= ~IXGBE_RTTDCS_ARBDIS;
		FUNC8(hw, IXGBE_RTTDCS, rttdcs);
	}

}