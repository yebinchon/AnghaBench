#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int (* reset_hw ) (struct ixgbe_hw*) ;int (* init_hw ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {int type; int /*<<< orphan*/  addr; int /*<<< orphan*/  perm_addr; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; struct adapter* back; } ;
struct adapter {struct ixgbe_hw hw; int /*<<< orphan*/  media; TYPE_3__* shared; int /*<<< orphan*/  ctx; int /*<<< orphan*/  dev; } ;
typedef  TYPE_3__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_7__ {int isc_ntxqsets_max; int isc_nrxqsets_max; int* isc_ntxd; int* isc_nrxd; int isc_tx_csum_flags; int /*<<< orphan*/  isc_capabilities; int /*<<< orphan*/  isc_capenable; int /*<<< orphan*/ * isc_txrx; int /*<<< orphan*/  isc_tx_tso_segsize_max; int /*<<< orphan*/  isc_tx_tso_size_max; int /*<<< orphan*/  isc_tx_nsegments; int /*<<< orphan*/  isc_tx_tso_segments_max; int /*<<< orphan*/  isc_msix_bar; void** isc_rxqsizes; void** isc_txqsizes; } ;

/* Variables and functions */
 int CSUM_IP ; 
 int CSUM_IP6_TCP ; 
 int CSUM_IP6_TSO ; 
 int CSUM_IP6_UDP ; 
 int CSUM_TCP ; 
 int CSUM_TSO ; 
 int CSUM_UDP ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  DBA_ALIGN ; 
 int EIO ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFCAP_WOL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_82599_SCATTER ; 
 int /*<<< orphan*/  IXGBE_CAPS ; 
 int IXGBE_ERR_RESET_FAILED ; 
 int /*<<< orphan*/  IXGBE_TSO_SIZE ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ixgbe_hw*) ; 
 int FUNC14 (struct ixgbe_hw*) ; 
#define  ixgbe_mac_X550EM_a_vf 130 
#define  ixgbe_mac_X550EM_x_vf 129 
#define  ixgbe_mac_X550_vf 128 
 int /*<<< orphan*/  ixgbe_txrx ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct adapter*) ; 
 int FUNC20 (struct adapter*) ; 
 int /*<<< orphan*/  ixv_sysctl_debug ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 void* FUNC22 (int,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct ixgbe_hw*) ; 
 int FUNC24 (struct ixgbe_hw*) ; 

__attribute__((used)) static int
FUNC25(if_ctx_t ctx)
{
	struct adapter  *adapter;
	device_t        dev;
	if_softc_ctx_t  scctx;
	struct ixgbe_hw *hw;
	int             error = 0;

	FUNC0("ixv_attach: begin");

	/* Allocate, clear, and link in our adapter structure */
	dev = FUNC8(ctx);
	adapter = FUNC10(ctx);
	adapter->dev = dev;
	adapter->ctx = ctx;
	adapter->hw.back = adapter;
	scctx = adapter->shared = FUNC11(ctx);
	adapter->media = FUNC9(ctx);
	hw = &adapter->hw;

	/* Do base PCI setup - map BAR0 */
	if (FUNC15(ctx)) {
		FUNC7(dev, "ixv_allocate_pci_resources() failed!\n");
		error = ENXIO;
		goto err_out;
	}

	/* SYSCTL APIs */
	FUNC1(FUNC5(dev),
	    FUNC2(FUNC6(dev)), OID_AUTO, "debug",
	    CTLTYPE_INT | CTLFLAG_RW, adapter, 0, ixv_sysctl_debug, "I",
	    "Debug Info");

	/* Determine hardware revision */
	FUNC18(ctx);
	FUNC19(adapter);

	/* Initialize the shared code */
	error = FUNC14(hw);
	if (error) {
		FUNC7(dev, "ixgbe_init_ops_vf() failed!\n");
		error = EIO;
		goto err_out;
	}

	/* Setup the mailbox */
	FUNC13(hw);

	error = hw->mac.ops.reset_hw(hw);
	if (error == IXGBE_ERR_RESET_FAILED)
		FUNC7(dev, "...reset_hw() failure: Reset Failed!\n");
	else if (error)
		FUNC7(dev, "...reset_hw() failed with error %d\n",
		    error);
	if (error) {
		error = EIO;
		goto err_out;
	}

	error = hw->mac.ops.init_hw(hw);
	if (error) {
		FUNC7(dev, "...init_hw() failed with error %d\n",
		    error);
		error = EIO;
		goto err_out;
	}

	/* Negotiate mailbox API version */
	error = FUNC20(adapter);
	if (error) {
		FUNC7(dev,
		    "Mailbox API negotiation failed during attach!\n");
		goto err_out;
	}

	/* If no mac address was assigned, make a random one */
	if (!FUNC16(hw->mac.addr)) {
		u8 addr[ETHER_ADDR_LEN];
		FUNC3(&addr, sizeof(addr), 0);
		addr[0] &= 0xFE;
		addr[0] |= 0x02;
		FUNC4(addr, hw->mac.addr, sizeof(addr));
		FUNC4(addr, hw->mac.perm_addr, sizeof(addr));
	}

	/* Most of the iflib initialization... */

	FUNC12(ctx, hw->mac.addr);
	switch (adapter->hw.mac.type) {
	case ixgbe_mac_X550_vf:
	case ixgbe_mac_X550EM_x_vf:
	case ixgbe_mac_X550EM_a_vf:
		scctx->isc_ntxqsets_max = scctx->isc_nrxqsets_max = 2;
		break;
	default:
		scctx->isc_ntxqsets_max = scctx->isc_nrxqsets_max = 1;
	}
	scctx->isc_txqsizes[0] =
	    FUNC22(scctx->isc_ntxd[0] * sizeof(union ixgbe_adv_tx_desc) +
	    sizeof(u32), DBA_ALIGN);
	scctx->isc_rxqsizes[0] =
	    FUNC22(scctx->isc_nrxd[0] * sizeof(union ixgbe_adv_rx_desc),
	    DBA_ALIGN);
	/* XXX */
	scctx->isc_tx_csum_flags = CSUM_IP | CSUM_TCP | CSUM_UDP | CSUM_TSO |
	    CSUM_IP6_TCP | CSUM_IP6_UDP | CSUM_IP6_TSO;
	scctx->isc_tx_nsegments = IXGBE_82599_SCATTER;
	scctx->isc_msix_bar = FUNC21(dev);
	scctx->isc_tx_tso_segments_max = scctx->isc_tx_nsegments;
	scctx->isc_tx_tso_size_max = IXGBE_TSO_SIZE;
	scctx->isc_tx_tso_segsize_max = PAGE_SIZE;

	scctx->isc_txrx = &ixgbe_txrx;

	/*
	 * Tell the upper layer(s) we support everything the PF
	 * driver does except...
	 *   Wake-on-LAN
	 */
	scctx->isc_capabilities = IXGBE_CAPS;
	scctx->isc_capabilities ^= IFCAP_WOL;
	scctx->isc_capenable = scctx->isc_capabilities;

	FUNC0("ixv_if_attach_pre: end");

	return (0);

err_out:
	FUNC17(ctx);

	return (error);
}