#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_13__ {int type; int /*<<< orphan*/  addr; } ;
struct TYPE_12__ {void* reset_if_overtemp; int /*<<< orphan*/  smart_speed; } ;
struct TYPE_11__ {int /*<<< orphan*/  requested_mode; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* init_params ) (struct ixgbe_hw*) ;} ;
struct TYPE_10__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_5__ mac; TYPE_4__ phy; TYPE_3__ fc; int /*<<< orphan*/  allow_unsupported_sfp; TYPE_2__ mbx; int /*<<< orphan*/  subsystem_device_id; int /*<<< orphan*/  subsystem_vendor_id; int /*<<< orphan*/  revision_id; int /*<<< orphan*/  device_id; int /*<<< orphan*/  vendor_id; struct adapter* back; } ;
struct adapter {int feat_en; struct ixgbe_hw hw; void* sfp_probe; int /*<<< orphan*/  media; TYPE_6__* shared; int /*<<< orphan*/  dev; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_6__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_15__ {int /*<<< orphan*/  ift_legacy_intr; } ;
struct TYPE_14__ {int isc_rss_table_size; int isc_ntxqsets_max; int isc_nrxqsets_max; int* isc_ntxd; int* isc_nrxd; int isc_tx_csum_flags; int /*<<< orphan*/  isc_capenable; int /*<<< orphan*/  isc_capabilities; TYPE_7__* isc_txrx; int /*<<< orphan*/  isc_tx_tso_segsize_max; int /*<<< orphan*/  isc_tx_tso_size_max; int /*<<< orphan*/  isc_tx_nsegments; int /*<<< orphan*/  isc_tx_tso_segments_max; int /*<<< orphan*/  isc_msix_bar; void** isc_rxqsizes; void** isc_txqsizes; } ;

/* Variables and functions */
 int CSUM_IP ; 
 int CSUM_IP6_SCTP ; 
 int CSUM_IP6_TCP ; 
 int CSUM_IP6_TSO ; 
 int CSUM_IP6_UDP ; 
 int CSUM_SCTP ; 
 int CSUM_TCP ; 
 int CSUM_TSO ; 
 int CSUM_UDP ; 
 int /*<<< orphan*/  DBA_ALIGN ; 
 int EIO ; 
 int ENXIO ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_82598_SCATTER ; 
 int /*<<< orphan*/  IXGBE_82599_SCATTER ; 
 int /*<<< orphan*/  IXGBE_CAPS ; 
 int /*<<< orphan*/  IXGBE_CTRL_EXT ; 
 int /*<<< orphan*/  IXGBE_CTRL_EXT_DRV_LOAD ; 
#define  IXGBE_ERR_EEPROM_VERSION 133 
#define  IXGBE_ERR_SFP_NOT_PRESENT 132 
#define  IXGBE_ERR_SFP_NOT_SUPPORTED 131 
 int /*<<< orphan*/  IXGBE_ESDP ; 
 int IXGBE_FEATURE_FAN_FAIL ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_TSO_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 void* TRUE ; 
 int /*<<< orphan*/  allow_unsupported_sfp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*) ; 
 int /*<<< orphan*/  ixgbe_flow_control ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*) ; 
 scalar_t__ FUNC14 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  ixgbe_intr ; 
 int ixgbe_mac_82598EB ; 
#define  ixgbe_mac_X550 130 
#define  ixgbe_mac_X550EM_a 129 
#define  ixgbe_mac_X550EM_x 128 
 int FUNC16 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  ixgbe_smart_speed ; 
 int FUNC17 (struct ixgbe_hw*) ; 
 TYPE_7__ ixgbe_txrx ; 
 scalar_t__ FUNC18 (struct ixgbe_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 void* FUNC25 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct ixgbe_hw*) ; 

__attribute__((used)) static int
FUNC27(if_ctx_t ctx)
{
	struct adapter  *adapter;
	device_t        dev;
	if_softc_ctx_t  scctx;
	struct ixgbe_hw *hw;
	int             error = 0;
	u32             ctrl_ext;

	FUNC0("ixgbe_attach: begin");

	/* Allocate, clear, and link in our adapter structure */
	dev = FUNC4(ctx);
	adapter = FUNC6(ctx);
	adapter->hw.back = adapter;
	adapter->ctx = ctx;
	adapter->dev = dev;
	scctx = adapter->shared = FUNC7(ctx);
	adapter->media = FUNC5(ctx);
	hw = &adapter->hw;

	/* Determine hardware revision */
	hw->vendor_id = FUNC23(dev);
	hw->device_id = FUNC19(dev);
	hw->revision_id = FUNC20(dev);
	hw->subsystem_vendor_id = FUNC22(dev);
	hw->subsystem_device_id = FUNC21(dev);

	/* Do base PCI setup - map BAR0 */
	if (FUNC9(ctx)) {
		FUNC3(dev, "Allocation of PCI resources failed\n");
		return (ENXIO);
	}

	/* let hardware know driver is loaded */
	ctrl_ext = FUNC1(hw, IXGBE_CTRL_EXT);
	ctrl_ext |= IXGBE_CTRL_EXT_DRV_LOAD;
	FUNC2(hw, IXGBE_CTRL_EXT, ctrl_ext);

	/*
	 * Initialize the shared code
	 */
	if (FUNC14(hw) != 0) {
		FUNC3(dev, "Unable to initialize the shared code\n");
		error = ENXIO;
		goto err_pci;
	}

	if (hw->mbx.ops.init_params)
		hw->mbx.ops.init_params(hw);

	hw->allow_unsupported_sfp = allow_unsupported_sfp;

	if (hw->mac.type != ixgbe_mac_82598EB)
		hw->phy.smart_speed = ixgbe_smart_speed;

	FUNC13(adapter);

	/* Enable WoL (if supported) */
	FUNC11(adapter);

	/* Verify adapter fan is still functional (if applicable) */
	if (adapter->feat_en & IXGBE_FEATURE_FAN_FAIL) {
		u32 esdp = FUNC1(hw, IXGBE_ESDP);
		FUNC10(adapter, esdp, FALSE);
	}

	/* Ensure SW/FW semaphore is free */
	FUNC15(hw);

	/* Set an initial default flow control value */
	hw->fc.requested_mode = ixgbe_flow_control;

	hw->phy.reset_if_overtemp = TRUE;
	error = FUNC16(hw);
	hw->phy.reset_if_overtemp = FALSE;
	if (error == IXGBE_ERR_SFP_NOT_PRESENT) {
		/*
		 * No optics in this port, set up
		 * so the timer routine will probe
		 * for later insertion.
		 */
		adapter->sfp_probe = TRUE;
		error = 0;
	} else if (error == IXGBE_ERR_SFP_NOT_SUPPORTED) {
		FUNC3(dev, "Unsupported SFP+ module detected!\n");
		error = EIO;
		goto err_pci;
	} else if (error) {
		FUNC3(dev, "Hardware initialization failed\n");
		error = EIO;
		goto err_pci;
	}

	/* Make sure we have a good EEPROM before we read from it */
	if (FUNC18(&adapter->hw, NULL) < 0) {
		FUNC3(dev, "The EEPROM Checksum Is Not Valid\n");
		error = EIO;
		goto err_pci;
	}

	error = FUNC17(hw);
	switch (error) {
	case IXGBE_ERR_EEPROM_VERSION:
		FUNC3(dev, "This device is a pre-production adapter/LOM.  Please be aware there may be issues associated with your hardware.\nIf you are experiencing problems please contact your Intel or hardware representative who provided you with this hardware.\n");
		break;
	case IXGBE_ERR_SFP_NOT_SUPPORTED:
		FUNC3(dev, "Unsupported SFP+ Module\n");
		error = EIO;
		goto err_pci;
	case IXGBE_ERR_SFP_NOT_PRESENT:
		FUNC3(dev, "No SFP+ Module found\n");
		/* falls thru */
	default:
		break;
	}

	/* Most of the iflib initialization... */

	FUNC8(ctx, hw->mac.addr);
	switch (adapter->hw.mac.type) {
	case ixgbe_mac_X550:
	case ixgbe_mac_X550EM_x:
	case ixgbe_mac_X550EM_a:
		scctx->isc_rss_table_size = 512;
		scctx->isc_ntxqsets_max = scctx->isc_nrxqsets_max = 64;
		break;
	default:
		scctx->isc_rss_table_size = 128;
		scctx->isc_ntxqsets_max = scctx->isc_nrxqsets_max = 16;
	}

	/* Allow legacy interrupts */
	ixgbe_txrx.ift_legacy_intr = ixgbe_intr;

	scctx->isc_txqsizes[0] =
	    FUNC25(scctx->isc_ntxd[0] * sizeof(union ixgbe_adv_tx_desc) +
	    sizeof(u32), DBA_ALIGN),
	scctx->isc_rxqsizes[0] =
	    FUNC25(scctx->isc_nrxd[0] * sizeof(union ixgbe_adv_rx_desc),
	    DBA_ALIGN);

	/* XXX */
	scctx->isc_tx_csum_flags = CSUM_IP | CSUM_TCP | CSUM_UDP | CSUM_TSO |
	    CSUM_IP6_TCP | CSUM_IP6_UDP | CSUM_IP6_TSO;
	if (adapter->hw.mac.type == ixgbe_mac_82598EB) {
		scctx->isc_tx_nsegments = IXGBE_82598_SCATTER;
	} else {
		scctx->isc_tx_csum_flags |= CSUM_SCTP |CSUM_IP6_SCTP;
		scctx->isc_tx_nsegments = IXGBE_82599_SCATTER;
	}

	scctx->isc_msix_bar = FUNC24(dev);

	scctx->isc_tx_tso_segments_max = scctx->isc_tx_nsegments;
	scctx->isc_tx_tso_size_max = IXGBE_TSO_SIZE;
	scctx->isc_tx_tso_segsize_max = PAGE_SIZE;

	scctx->isc_txrx = &ixgbe_txrx;

	scctx->isc_capabilities = scctx->isc_capenable = IXGBE_CAPS;

	return (0);

err_pci:
	ctrl_ext = FUNC1(&adapter->hw, IXGBE_CTRL_EXT);
	ctrl_ext &= ~IXGBE_CTRL_EXT_DRV_LOAD;
	FUNC2(&adapter->hw, IXGBE_CTRL_EXT, ctrl_ext);
	FUNC12(ctx);

	return (error);
}