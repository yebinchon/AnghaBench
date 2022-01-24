#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct tx_bd_short {int dummy; } ;
struct rx_prod_pkt_bd {int dummy; } ;
struct cmpl_base {int dummy; } ;
struct bnxt_ver_info {int dummy; } ;
struct TYPE_20__ {int /*<<< orphan*/ * idi_vaddr; } ;
struct TYPE_21__ {int rss_hash_type; TYPE_6__ vlan_tag_list; int /*<<< orphan*/  vlan_tags; int /*<<< orphan*/  rss_hash_key; } ;
struct TYPE_13__ {int /*<<< orphan*/  idi_paddr; int /*<<< orphan*/  idi_vaddr; } ;
struct TYPE_18__ {int id; int doorbell; int ring_size; int /*<<< orphan*/  paddr; int /*<<< orphan*/  vaddr; struct bnxt_softc* softc; scalar_t__ phys_id; } ;
struct TYPE_19__ {TYPE_4__ ring; scalar_t__ stats_ctx_id; } ;
struct TYPE_17__ {int max_agg_segs; int min_agg_len; int /*<<< orphan*/  max_aggs; scalar_t__ is_mode_gro; scalar_t__ enable; } ;
struct TYPE_16__ {void* alloc_completion_rings; void* alloc_tx_rings; void* alloc_vnics; void* alloc_rx_rings; } ;
struct TYPE_15__ {int /*<<< orphan*/  max_cp_rings; int /*<<< orphan*/  mac_addr; } ;
struct bnxt_softc {int flags; int /*<<< orphan*/  dev; TYPE_11__* ver_info; TYPE_11__* nvm_info; TYPE_7__ vnic_info; int /*<<< orphan*/  def_cp_task; TYPE_10__ def_cp_ring_mem; TYPE_5__ def_cp_ring; TYPE_3__ hw_lro; TYPE_2__ fn_qcfg; TYPE_1__ func; TYPE_8__* scctx; int /*<<< orphan*/  sctx; int /*<<< orphan*/  media; int /*<<< orphan*/  ctx; } ;
struct bnxt_nvram_info {int dummy; } ;
typedef  TYPE_8__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_22__ {int isc_tx_csum_flags; int isc_capabilities; int isc_capenable; int isc_tx_nsegments; int isc_tx_tso_segments_max; int* isc_nrxd; int* isc_ntxd; int* isc_txqsizes; int* isc_rxqsizes; int /*<<< orphan*/  isc_msix_bar; scalar_t__ isc_rss_table_size; scalar_t__ isc_rss_table_mask; void* isc_nrxqsets_max; void* isc_ntxqsets_max; int /*<<< orphan*/ * isc_txrx; int /*<<< orphan*/  isc_min_frame_size; int /*<<< orphan*/  isc_vectors; void* isc_tx_tso_segsize_max; void* isc_tx_tso_size_max; } ;
struct TYPE_14__ {int hwrm_min_major; int hwrm_min_minor; int hwrm_min_update; int /*<<< orphan*/  available_size; int /*<<< orphan*/  reserved_size; int /*<<< orphan*/  size; int /*<<< orphan*/  sector_size; int /*<<< orphan*/  device_id; int /*<<< orphan*/  mfg_id; } ;

/* Variables and functions */
#define  BCM57402_NPAR 143 
#define  BCM57404_NPAR 142 
#define  BCM57406_NPAR 141 
#define  BCM57407_NPAR 140 
#define  BCM57412_NPAR1 139 
#define  BCM57412_NPAR2 138 
#define  BCM57414_NPAR1 137 
#define  BCM57414_NPAR2 136 
#define  BCM57416_NPAR1 135 
#define  BCM57416_NPAR2 134 
 int BNXT_FLAG_NPAR ; 
 int BNXT_FLAG_SHORT_CMD ; 
 int BNXT_FLAG_VF ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BNXT_MIN_FRAME_SIZE ; 
 scalar_t__ FUNC2 (struct bnxt_softc*) ; 
 void* BNXT_TSO_SIZE ; 
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_TCP_IPV6 ; 
 int CSUM_TSO ; 
 int CSUM_UDP ; 
 int CSUM_UDP_IPV6 ; 
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ HWRM_NA_SIGNATURE ; 
 int HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_IPV4 ; 
 int HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_IPV6 ; 
 int HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_TCP_IPV4 ; 
 int HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_TCP_IPV6 ; 
 int HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_UDP_IPV4 ; 
 int HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_UDP_IPV6 ; 
 int /*<<< orphan*/  HWRM_VNIC_TPA_CFG_INPUT_MAX_AGGS_MAX ; 
 scalar_t__ HW_HASH_INDEX_SIZE ; 
 int /*<<< orphan*/  HW_HASH_KEY_SIZE ; 
 int IFCAP_JUMBO_MTU ; 
 int IFCAP_LRO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_RXCSUM_IPV6 ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TSO6 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_TXCSUM_IPV6 ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWFILTER ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_VLAN_MTU ; 
 int IFCAP_WOL_MAGIC ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
#define  NETXTREME_C_VF1 133 
#define  NETXTREME_C_VF2 132 
#define  NETXTREME_C_VF3 131 
#define  NETXTREME_E_VF1 130 
#define  NETXTREME_E_VF2 129 
#define  NETXTREME_E_VF3 128 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct bnxt_softc*) ; 
 int FUNC6 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnxt_softc*) ; 
 int FUNC8 (struct bnxt_softc*) ; 
 int FUNC9 (struct bnxt_softc*) ; 
 int FUNC10 (TYPE_11__*) ; 
 int FUNC11 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  bnxt_def_cp_task ; 
 int /*<<< orphan*/  FUNC12 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct bnxt_softc*) ; 
 int FUNC16 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct bnxt_softc*,int) ; 
 int FUNC18 (struct bnxt_softc*) ; 
 int FUNC19 (struct bnxt_softc*) ; 
 int FUNC20 (struct bnxt_softc*) ; 
 int FUNC21 (struct bnxt_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct bnxt_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC23 (struct bnxt_softc*) ; 
 int FUNC24 (struct bnxt_softc*) ; 
 int FUNC25 (struct bnxt_softc*) ; 
 scalar_t__ FUNC26 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC27 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  bnxt_txrx ; 
 scalar_t__ FUNC28 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC33 (int /*<<< orphan*/ ,int,TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 struct bnxt_softc* FUNC37 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC40 (int,int /*<<< orphan*/ ,int) ; 
 void* FUNC41 (void*,void*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ) ; 
 int FUNC44 (int /*<<< orphan*/ ) ; 
 void* FUNC45 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC47(if_ctx_t ctx)
{
	struct bnxt_softc *softc = FUNC37(ctx);
	if_softc_ctx_t scctx;
	int rc = 0;

	softc->ctx = ctx;
	softc->dev = FUNC34(ctx);
	softc->media = FUNC35(ctx);
	softc->scctx = FUNC38(ctx);
	softc->sctx = FUNC36(ctx);
	scctx = softc->scctx;

	/* TODO: Better way of detecting NPAR/VF is needed */
	switch (FUNC44(softc->dev)) {
	case BCM57402_NPAR:
	case BCM57404_NPAR:
	case BCM57406_NPAR:
	case BCM57407_NPAR:
	case BCM57412_NPAR1:
	case BCM57412_NPAR2:
	case BCM57414_NPAR1:
	case BCM57414_NPAR2:
	case BCM57416_NPAR1:
	case BCM57416_NPAR2:
		softc->flags |= BNXT_FLAG_NPAR;
		break;
	case NETXTREME_C_VF1:
	case NETXTREME_C_VF2:
	case NETXTREME_C_VF3:
	case NETXTREME_E_VF1:
	case NETXTREME_E_VF2:
	case NETXTREME_E_VF3:
		softc->flags |= BNXT_FLAG_VF;
		break;
	}

	FUNC43(softc->dev);

	if (FUNC26(softc))
		return (ENXIO);

	/* HWRM setup/init */
	FUNC1(softc, FUNC29(softc->dev));
	rc = FUNC5(softc);
	if (rc)
		goto dma_fail;


	/* Get firmware version and compare with driver */
	softc->ver_info = FUNC40(sizeof(struct bnxt_ver_info),
	    M_DEVBUF, M_NOWAIT | M_ZERO);
	if (softc->ver_info == NULL) {
		rc = ENOMEM;
		FUNC30(softc->dev,
		    "Unable to allocate space for version info\n");
		goto ver_alloc_fail;
	}
	/* Default minimum required HWRM version */
	softc->ver_info->hwrm_min_major = 1;
	softc->ver_info->hwrm_min_minor = 2;
	softc->ver_info->hwrm_min_update = 2;

	rc = FUNC24(softc);
	if (rc) {
		FUNC30(softc->dev, "attach: hwrm ver get failed\n");
		goto ver_fail;
	}

	if (softc->flags & BNXT_FLAG_SHORT_CMD) {
		rc = FUNC6(softc);
		if (rc)
			goto hwrm_short_cmd_alloc_fail;
	}

	/* Get NVRAM info */
	if (FUNC2(softc)) {
		softc->nvm_info = FUNC40(sizeof(struct bnxt_nvram_info),
		    M_DEVBUF, M_NOWAIT | M_ZERO);
		if (softc->nvm_info == NULL) {
			rc = ENOMEM;
			FUNC30(softc->dev,
			    "Unable to allocate space for NVRAM info\n");
			goto nvm_alloc_fail;
		}

		rc = FUNC22(softc, &softc->nvm_info->mfg_id,
		    &softc->nvm_info->device_id, &softc->nvm_info->sector_size,
		    &softc->nvm_info->size, &softc->nvm_info->reserved_size,
		    &softc->nvm_info->available_size);
	}

	/* Register the driver with the FW */
	rc = FUNC16(softc);
	if (rc) {
		FUNC30(softc->dev, "attach: hwrm drv rgtr failed\n");
		goto drv_rgtr_fail;
	}

        rc = FUNC21(softc, NULL, 0);
	if (rc) {
		FUNC30(softc->dev, "attach: hwrm rgtr async evts failed\n");
		goto drv_rgtr_fail;
	}

	/* Get the HW capabilities */
	rc = FUNC18(softc);
	if (rc)
		goto failed;

	/* Get the current configuration of this function */
	rc = FUNC19(softc);
	if (rc) {
		FUNC30(softc->dev, "attach: hwrm func qcfg failed\n");
		goto failed;
	}

	FUNC39(ctx, softc->func.mac_addr);

	scctx->isc_txrx = &bnxt_txrx;
	scctx->isc_tx_csum_flags = (CSUM_IP | CSUM_TCP | CSUM_UDP |
	    CSUM_TCP_IPV6 | CSUM_UDP_IPV6 | CSUM_TSO);
	scctx->isc_capabilities = scctx->isc_capenable =
	    /* These are translated to hwassit bits */
	    IFCAP_TXCSUM | IFCAP_TXCSUM_IPV6 | IFCAP_TSO4 | IFCAP_TSO6 |
	    /* These are checked by iflib */
	    IFCAP_LRO | IFCAP_VLAN_HWFILTER |
	    /* These are part of the iflib mask */
	    IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6 | IFCAP_VLAN_MTU |
	    IFCAP_VLAN_HWTAGGING | IFCAP_VLAN_HWTSO |
	    /* These likely get lost... */
	    IFCAP_VLAN_HWCSUM | IFCAP_JUMBO_MTU;

	if (FUNC28(softc))
		scctx->isc_capenable |= IFCAP_WOL_MAGIC;

	/* Get the queue config */
	rc = FUNC23(softc);
	if (rc) {
		FUNC30(softc->dev, "attach: hwrm qportcfg failed\n");
		goto failed;
	}

	FUNC15(softc);

	/* Now perform a function reset */
	rc = FUNC20(softc);
	FUNC7(softc);
	if (rc)
		goto failed;

	/* Now set up iflib sc */
	scctx->isc_tx_nsegments = 31,
	scctx->isc_tx_tso_segments_max = 31;
	scctx->isc_tx_tso_size_max = BNXT_TSO_SIZE;
	scctx->isc_tx_tso_segsize_max = BNXT_TSO_SIZE;
	scctx->isc_vectors = softc->func.max_cp_rings;
	scctx->isc_min_frame_size = BNXT_MIN_FRAME_SIZE;
	scctx->isc_txrx = &bnxt_txrx;

	if (scctx->isc_nrxd[0] <
	    ((scctx->isc_nrxd[1] * 4) + scctx->isc_nrxd[2]))
		FUNC30(softc->dev,
		    "WARNING: nrxd0 (%d) should be at least 4 * nrxd1 (%d) + nrxd2 (%d).  Driver may be unstable\n",
		    scctx->isc_nrxd[0], scctx->isc_nrxd[1], scctx->isc_nrxd[2]);
	if (scctx->isc_ntxd[0] < scctx->isc_ntxd[1] * 2)
		FUNC30(softc->dev,
		    "WARNING: ntxd0 (%d) should be at least 2 * ntxd1 (%d).  Driver may be unstable\n",
		    scctx->isc_ntxd[0], scctx->isc_ntxd[1]);
	scctx->isc_txqsizes[0] = sizeof(struct cmpl_base) * scctx->isc_ntxd[0];
	scctx->isc_txqsizes[1] = sizeof(struct tx_bd_short) *
	    scctx->isc_ntxd[1];
	scctx->isc_rxqsizes[0] = sizeof(struct cmpl_base) * scctx->isc_nrxd[0];
	scctx->isc_rxqsizes[1] = sizeof(struct rx_prod_pkt_bd) *
	    scctx->isc_nrxd[1];
	scctx->isc_rxqsizes[2] = sizeof(struct rx_prod_pkt_bd) *
	    scctx->isc_nrxd[2];

	scctx->isc_nrxqsets_max = FUNC41(FUNC45(softc->dev)-1,
	    softc->fn_qcfg.alloc_completion_rings - 1);
	scctx->isc_nrxqsets_max = FUNC41(scctx->isc_nrxqsets_max,
	    softc->fn_qcfg.alloc_rx_rings);
	scctx->isc_nrxqsets_max = FUNC41(scctx->isc_nrxqsets_max,
	    softc->fn_qcfg.alloc_vnics);
	scctx->isc_ntxqsets_max = FUNC41(softc->fn_qcfg.alloc_tx_rings,
	    softc->fn_qcfg.alloc_completion_rings - scctx->isc_nrxqsets_max - 1);

	scctx->isc_rss_table_size = HW_HASH_INDEX_SIZE;
	scctx->isc_rss_table_mask = scctx->isc_rss_table_size - 1;

	/* iflib will map and release this bar */
	scctx->isc_msix_bar = FUNC46(softc->dev);

        /* 
         * Default settings for HW LRO (TPA):
         *  Disable HW LRO by default
         *  Can be enabled after taking care of 'packet forwarding'
         */
	softc->hw_lro.enable = 0;
	softc->hw_lro.is_mode_gro = 0;
	softc->hw_lro.max_agg_segs = 5; /* 2^5 = 32 segs */
	softc->hw_lro.max_aggs = HWRM_VNIC_TPA_CFG_INPUT_MAX_AGGS_MAX;
	softc->hw_lro.min_agg_len = 512;

	/* Allocate the default completion ring */
	softc->def_cp_ring.stats_ctx_id = HWRM_NA_SIGNATURE;
	softc->def_cp_ring.ring.phys_id = (uint16_t)HWRM_NA_SIGNATURE;
	softc->def_cp_ring.ring.softc = softc;
	softc->def_cp_ring.ring.id = 0;
	softc->def_cp_ring.ring.doorbell = softc->def_cp_ring.ring.id * 0x80;
	softc->def_cp_ring.ring.ring_size = PAGE_SIZE /
	    sizeof(struct cmpl_base);
	rc = FUNC33(ctx,
	    sizeof(struct cmpl_base) * softc->def_cp_ring.ring.ring_size,
	    &softc->def_cp_ring_mem, 0);
	softc->def_cp_ring.ring.vaddr = softc->def_cp_ring_mem.idi_vaddr;
	softc->def_cp_ring.ring.paddr = softc->def_cp_ring_mem.idi_paddr;
	FUNC32(ctx, &softc->def_cp_task, bnxt_def_cp_task,
	    "dflt_cp");

	rc = FUNC25(softc);
	if (rc)
		goto init_sysctl_failed;
	if (FUNC2(softc)) {
		rc = FUNC10(softc->nvm_info);
		if (rc)
			goto failed;
	}

	FUNC4(softc->vnic_info.rss_hash_key, HW_HASH_KEY_SIZE, 0);
	softc->vnic_info.rss_hash_type =
	    HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_IPV4 |
	    HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_TCP_IPV4 |
	    HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_UDP_IPV4 |
	    HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_IPV6 |
	    HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_TCP_IPV6 |
	    HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_UDP_IPV6;
	rc = FUNC8(softc);
	if (rc)
		goto failed;

	rc = FUNC9(softc);
	if (rc)
		goto failed;

	rc = FUNC11(softc);
	if (rc)
		goto failed;

	/* Initialize the vlan list */
	FUNC3(&softc->vnic_info.vlan_tags);
	softc->vnic_info.vlan_tag_list.idi_vaddr = NULL;

	return (rc);

failed:
	FUNC14(softc);
init_sysctl_failed:
	FUNC17(softc, false);
drv_rgtr_fail:
	if (FUNC2(softc))
		FUNC31(softc->nvm_info, M_DEVBUF);
nvm_alloc_fail:
	FUNC13(softc);
hwrm_short_cmd_alloc_fail:
ver_fail:
	FUNC31(softc->ver_info, M_DEVBUF);
ver_alloc_fail:
	FUNC12(softc);
dma_fail:
	FUNC0(softc);
	FUNC27(softc);
	FUNC42(softc->dev);
	return (rc);
}