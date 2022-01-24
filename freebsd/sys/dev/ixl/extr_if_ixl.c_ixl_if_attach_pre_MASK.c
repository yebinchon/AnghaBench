#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  union i40e_32byte_rx_desc {int dummy; } i40e_32byte_rx_desc ;
typedef  int /*<<< orphan*/  u32 ;
struct ixl_vsi {scalar_t__ enable_head_writeback; TYPE_4__* shared; int /*<<< orphan*/  media; int /*<<< orphan*/  ctx; scalar_t__ num_vlans; scalar_t__ id; struct i40e_hw* hw; void* dev; struct ixl_pf* back; } ;
struct TYPE_8__ {int /*<<< orphan*/  rss_table_size; int /*<<< orphan*/  num_rx_qp; int /*<<< orphan*/  num_tx_qp; } ;
struct TYPE_10__ {scalar_t__ type; int /*<<< orphan*/  port_addr; int /*<<< orphan*/  addr; int /*<<< orphan*/  perm_addr; } ;
struct TYPE_9__ {int api_maj_ver; int api_min_ver; int fw_maj_ver; int fw_min_ver; void* asq_buf_size; void* arq_buf_size; void* num_asq_entries; void* num_arq_entries; } ;
struct i40e_hw {TYPE_1__ func_caps; TYPE_3__ mac; TYPE_2__ aq; } ;
struct ixl_pf {struct i40e_hw hw; int /*<<< orphan*/  state; void* dev; struct ixl_vsi vsi; } ;
struct i40e_tx_desc {int dummy; } ;
struct i40e_filter_control_settings {int /*<<< orphan*/  hash_lut_size; int /*<<< orphan*/  enable_fdir; void* enable_macvlan; void* enable_ethtype; } ;
typedef  TYPE_4__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  filter ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  void* device_t ;
struct TYPE_12__ {int /*<<< orphan*/  ift_legacy_intr; } ;
struct TYPE_11__ {int isc_ntxqsets_max; int isc_nrxqsets_max; int* isc_ntxd; int* isc_nrxd; int /*<<< orphan*/  isc_capenable; int /*<<< orphan*/  isc_capabilities; int /*<<< orphan*/  isc_tx_csum_flags; int /*<<< orphan*/  isc_rss_table_size; int /*<<< orphan*/  isc_tx_tso_segsize_max; int /*<<< orphan*/  isc_tx_tso_size_max; int /*<<< orphan*/  isc_tx_tso_segments_max; int /*<<< orphan*/  isc_tx_nsegments; int /*<<< orphan*/  isc_msix_bar; void** isc_rxqsizes; TYPE_5__* isc_txrx; void** isc_txqsizes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSUM_OFFLOAD ; 
 int /*<<< orphan*/  DBA_ALIGN ; 
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FALSE ; 
 int I40E_ERR_FIRMWARE_API_VERSION ; 
 int I40E_FW_API_VERSION_MAJOR ; 
 int FUNC0 (struct i40e_hw*) ; 
 int /*<<< orphan*/  I40E_HASH_LUT_SIZE_512 ; 
 int /*<<< orphan*/  I40E_HMC_MODEL_DIRECT_ONLY ; 
 scalar_t__ I40E_MAC_X722 ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 void* IXL_AQ_BUF_SZ ; 
 void* IXL_AQ_LEN ; 
 int /*<<< orphan*/  IXL_CAPS ; 
 int /*<<< orphan*/  IXL_MAX_DMA_SEG_SIZE ; 
 int /*<<< orphan*/  IXL_MAX_TSO_SEGS ; 
 int /*<<< orphan*/  IXL_MAX_TX_SEGS ; 
 int /*<<< orphan*/  IXL_MSIX_BAR ; 
 int /*<<< orphan*/  IXL_PF_STATE_FW_LLDP_DISABLED ; 
 int /*<<< orphan*/  IXL_TSO_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_filter_control_settings*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_hw*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct i40e_hw*) ; 
 int FUNC10 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct i40e_hw*) ; 
 int FUNC14 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct i40e_hw*) ; 
 int FUNC16 (struct i40e_hw*) ; 
 scalar_t__ FUNC17 (struct i40e_hw*,struct i40e_filter_control_settings*) ; 
 int /*<<< orphan*/  FUNC18 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC19 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC20 (struct i40e_hw*,int) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 void* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 struct ixl_pf* FUNC24 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC28 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC29 (struct ixl_pf*) ; 
 int FUNC30 (struct ixl_pf*) ; 
 int /*<<< orphan*/  ixl_intr ; 
 int /*<<< orphan*/  FUNC31 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC32 (struct ixl_pf*) ; 
 TYPE_5__ ixl_txrx_dwb ; 
 TYPE_5__ ixl_txrx_hwb ; 
 void* FUNC33 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC34(if_ctx_t ctx)
{
	device_t dev;
	struct ixl_pf *pf;
	struct i40e_hw *hw;
	struct ixl_vsi *vsi;
	if_softc_ctx_t scctx;
	struct i40e_filter_control_settings filter;
	enum i40e_status_code status;
	int error = 0;

	FUNC1(dev, "begin");

	dev = FUNC22(ctx);
	pf = FUNC24(ctx);

	vsi = &pf->vsi;
	vsi->back = pf;
	pf->dev = dev;
	hw = &pf->hw;

	vsi->dev = dev;
	vsi->hw = &pf->hw;
	vsi->id = 0;
	vsi->num_vlans = 0;
	vsi->ctx = ctx;
	vsi->media = FUNC23(ctx);
	vsi->shared = scctx = FUNC25(ctx);

	/* Save tunable values */
	FUNC32(pf);

	/* Do PCI setup - map BAR0, etc */
	if (FUNC27(pf)) {
		FUNC5(dev, "Allocation of PCI resources failed\n");
		error = ENXIO;
		goto err_pci_res;
	}

	/* Establish a clean starting point */
	FUNC8(hw);
	status = FUNC16(hw);
	if (status) {
		FUNC5(dev, "PF reset failure %s\n",
		    FUNC20(hw, status));
		error = EIO;
		goto err_out;
	}

	/* Initialize the shared code */
	status = FUNC15(hw);
	if (status) {
		FUNC5(dev, "Unable to initialize shared code, error %s\n",
		    FUNC20(hw, status));
		error = EIO;
		goto err_out;
	}

	/* Set up the admin queue */
	hw->aq.num_arq_entries = IXL_AQ_LEN;
	hw->aq.num_asq_entries = IXL_AQ_LEN;
	hw->aq.arq_buf_size = IXL_AQ_BUF_SZ;
	hw->aq.asq_buf_size = IXL_AQ_BUF_SZ;

	status = FUNC13(hw);
	if (status != 0 && status != I40E_ERR_FIRMWARE_API_VERSION) {
		FUNC5(dev, "Unable to initialize Admin Queue, error %s\n",
		    FUNC20(hw, status));
		error = EIO;
		goto err_out;
	}
	FUNC31(pf);

	if (status == I40E_ERR_FIRMWARE_API_VERSION) {
		FUNC5(dev, "The driver for the device stopped "
		    "because the NVM image is newer than expected.\n");
		FUNC5(dev, "You must install the most recent version of "
		    "the network driver.\n");
		error = EIO;
		goto err_out;
	}

        if (hw->aq.api_maj_ver == I40E_FW_API_VERSION_MAJOR &&
	    hw->aq.api_min_ver > FUNC0(hw)) {
		FUNC5(dev, "The driver for the device detected "
		    "a newer version of the NVM image than expected.\n");
		FUNC5(dev, "Please install the most recent version "
		    "of the network driver.\n");
	} else if (hw->aq.api_maj_ver == 1 && hw->aq.api_min_ver < 4) {
		FUNC5(dev, "The driver for the device detected "
		    "an older version of the NVM image than expected.\n");
		FUNC5(dev, "Please update the NVM image.\n");
	}

	/* Clear PXE mode */
	FUNC9(hw);

	/* Get capabilities from the device */
	error = FUNC30(pf);
	if (error) {
		FUNC5(dev, "get_hw_capabilities failed: %d\n",
		    error);
		goto err_get_cap;
	}

	/* Set up host memory cache */
	status = FUNC14(hw, hw->func_caps.num_tx_qp,
	    hw->func_caps.num_rx_qp, 0, 0);
	if (status) {
		FUNC5(dev, "init_lan_hmc failed: %s\n",
		    FUNC20(hw, status));
		goto err_get_cap;
	}
	status = FUNC10(hw, I40E_HMC_MODEL_DIRECT_ONLY);
	if (status) {
		FUNC5(dev, "configure_lan_hmc failed: %s\n",
		    FUNC20(hw, status));
		goto err_mac_hmc;
	}

	/* Disable LLDP from the firmware for certain NVM versions */
	if (((pf->hw.aq.fw_maj_ver == 4) && (pf->hw.aq.fw_min_ver < 3)) ||
	    (pf->hw.aq.fw_maj_ver < 4)) {
		FUNC7(hw, TRUE, NULL);
		pf->state |= IXL_PF_STATE_FW_LLDP_DISABLED;
	}

	/* Get MAC addresses from hardware */
	FUNC11(hw, hw->mac.addr);
	error = FUNC21(hw->mac.addr);
	if (error) {
		FUNC5(dev, "validate_mac_addr failed: %d\n", error);
		goto err_mac_hmc;
	}
	FUNC3(hw->mac.addr, hw->mac.perm_addr, ETHER_ADDR_LEN);
	FUNC26(ctx, hw->mac.addr);
	FUNC12(hw, hw->mac.port_addr);

	/* Set up the device filtering */
	FUNC4(&filter, sizeof(filter));
	filter.enable_ethtype = TRUE;
	filter.enable_macvlan = TRUE;
	filter.enable_fdir = FALSE;
	filter.hash_lut_size = I40E_HASH_LUT_SIZE_512;
	if (FUNC17(hw, &filter))
		FUNC5(dev, "i40e_set_filter_control() failed\n");

	/* Query device FW LLDP status */
	FUNC29(pf);
	/* Tell FW to apply DCB config on link up */
	FUNC6(hw, true, NULL);

	/* Fill out iflib parameters */
	if (hw->mac.type == I40E_MAC_X722)
		scctx->isc_ntxqsets_max = scctx->isc_nrxqsets_max = 128;
	else
		scctx->isc_ntxqsets_max = scctx->isc_nrxqsets_max = 64;
	if (vsi->enable_head_writeback) {
		scctx->isc_txqsizes[0] = FUNC33(scctx->isc_ntxd[0]
		    * sizeof(struct i40e_tx_desc) + sizeof(u32), DBA_ALIGN);
		scctx->isc_txrx = &ixl_txrx_hwb;
	} else {
		scctx->isc_txqsizes[0] = FUNC33(scctx->isc_ntxd[0]
		    * sizeof(struct i40e_tx_desc), DBA_ALIGN);
		scctx->isc_txrx = &ixl_txrx_dwb;
	}
	scctx->isc_txrx->ift_legacy_intr = ixl_intr;
	scctx->isc_rxqsizes[0] = FUNC33(scctx->isc_nrxd[0]
	    * sizeof(union i40e_32byte_rx_desc), DBA_ALIGN);
	scctx->isc_msix_bar = FUNC2(IXL_MSIX_BAR);
	scctx->isc_tx_nsegments = IXL_MAX_TX_SEGS;
	scctx->isc_tx_tso_segments_max = IXL_MAX_TSO_SEGS;
	scctx->isc_tx_tso_size_max = IXL_TSO_SIZE;
	scctx->isc_tx_tso_segsize_max = IXL_MAX_DMA_SEG_SIZE;
	scctx->isc_rss_table_size = pf->hw.func_caps.rss_table_size;
	scctx->isc_tx_csum_flags = CSUM_OFFLOAD;
	scctx->isc_capabilities = scctx->isc_capenable = IXL_CAPS;

	FUNC1(dev, "end");
	return (0);

err_mac_hmc:
	FUNC19(hw);
err_get_cap:
	FUNC18(hw);
err_out:
	FUNC28(pf);
err_pci_res:
	return (error);
}