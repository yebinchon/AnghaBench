
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef scalar_t__ uint16_t ;
struct tx_bd_short {int dummy; } ;
struct rx_prod_pkt_bd {int dummy; } ;
struct cmpl_base {int dummy; } ;
struct bnxt_ver_info {int dummy; } ;
struct TYPE_20__ {int * idi_vaddr; } ;
struct TYPE_21__ {int rss_hash_type; TYPE_6__ vlan_tag_list; int vlan_tags; int rss_hash_key; } ;
struct TYPE_13__ {int idi_paddr; int idi_vaddr; } ;
struct TYPE_18__ {int id; int doorbell; int ring_size; int paddr; int vaddr; struct bnxt_softc* softc; scalar_t__ phys_id; } ;
struct TYPE_19__ {TYPE_4__ ring; scalar_t__ stats_ctx_id; } ;
struct TYPE_17__ {int max_agg_segs; int min_agg_len; int max_aggs; scalar_t__ is_mode_gro; scalar_t__ enable; } ;
struct TYPE_16__ {void* alloc_completion_rings; void* alloc_tx_rings; void* alloc_vnics; void* alloc_rx_rings; } ;
struct TYPE_15__ {int max_cp_rings; int mac_addr; } ;
struct bnxt_softc {int flags; int dev; TYPE_11__* ver_info; TYPE_11__* nvm_info; TYPE_7__ vnic_info; int def_cp_task; TYPE_10__ def_cp_ring_mem; TYPE_5__ def_cp_ring; TYPE_3__ hw_lro; TYPE_2__ fn_qcfg; TYPE_1__ func; TYPE_8__* scctx; int sctx; int media; int ctx; } ;
struct bnxt_nvram_info {int dummy; } ;
typedef TYPE_8__* if_softc_ctx_t ;
typedef int if_ctx_t ;
struct TYPE_22__ {int isc_tx_csum_flags; int isc_capabilities; int isc_capenable; int isc_tx_nsegments; int isc_tx_tso_segments_max; int* isc_nrxd; int* isc_ntxd; int* isc_txqsizes; int* isc_rxqsizes; int isc_msix_bar; scalar_t__ isc_rss_table_size; scalar_t__ isc_rss_table_mask; void* isc_nrxqsets_max; void* isc_ntxqsets_max; int * isc_txrx; int isc_min_frame_size; int isc_vectors; void* isc_tx_tso_segsize_max; void* isc_tx_tso_size_max; } ;
struct TYPE_14__ {int hwrm_min_major; int hwrm_min_minor; int hwrm_min_update; int available_size; int reserved_size; int size; int sector_size; int device_id; int mfg_id; } ;
 int BNXT_FLAG_NPAR ;
 int BNXT_FLAG_SHORT_CMD ;
 int BNXT_FLAG_VF ;
 int BNXT_HWRM_LOCK_DESTROY (struct bnxt_softc*) ;
 int BNXT_HWRM_LOCK_INIT (struct bnxt_softc*,int ) ;
 int BNXT_MIN_FRAME_SIZE ;
 scalar_t__ BNXT_PF (struct bnxt_softc*) ;
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
 int HWRM_VNIC_TPA_CFG_INPUT_MAX_AGGS_MAX ;
 scalar_t__ HW_HASH_INDEX_SIZE ;
 int HW_HASH_KEY_SIZE ;
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
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;






 int PAGE_SIZE ;
 int SLIST_INIT (int *) ;
 int arc4rand (int ,int ,int ) ;
 int bnxt_alloc_hwrm_dma_mem (struct bnxt_softc*) ;
 int bnxt_alloc_hwrm_short_cmd_req (struct bnxt_softc*) ;
 int bnxt_clear_ids (struct bnxt_softc*) ;
 int bnxt_create_config_sysctls_pre (struct bnxt_softc*) ;
 int bnxt_create_hw_lro_sysctls (struct bnxt_softc*) ;
 int bnxt_create_nvram_sysctls (TYPE_11__*) ;
 int bnxt_create_pause_fc_sysctls (struct bnxt_softc*) ;
 int bnxt_def_cp_task ;
 int bnxt_free_hwrm_dma_mem (struct bnxt_softc*) ;
 int bnxt_free_hwrm_short_cmd_req (struct bnxt_softc*) ;
 int bnxt_free_sysctl_ctx (struct bnxt_softc*) ;
 int bnxt_get_wol_settings (struct bnxt_softc*) ;
 int bnxt_hwrm_func_drv_rgtr (struct bnxt_softc*) ;
 int bnxt_hwrm_func_drv_unrgtr (struct bnxt_softc*,int) ;
 int bnxt_hwrm_func_qcaps (struct bnxt_softc*) ;
 int bnxt_hwrm_func_qcfg (struct bnxt_softc*) ;
 int bnxt_hwrm_func_reset (struct bnxt_softc*) ;
 int bnxt_hwrm_func_rgtr_async_events (struct bnxt_softc*,int *,int ) ;
 int bnxt_hwrm_nvm_get_dev_info (struct bnxt_softc*,int *,int *,int *,int *,int *,int *) ;
 int bnxt_hwrm_queue_qportcfg (struct bnxt_softc*) ;
 int bnxt_hwrm_ver_get (struct bnxt_softc*) ;
 int bnxt_init_sysctl_ctx (struct bnxt_softc*) ;
 scalar_t__ bnxt_pci_mapping (struct bnxt_softc*) ;
 int bnxt_pci_mapping_free (struct bnxt_softc*) ;
 int bnxt_txrx ;
 scalar_t__ bnxt_wol_supported (struct bnxt_softc*) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 int free (TYPE_11__*,int ) ;
 int iflib_config_gtask_init (int ,int *,int ,char*) ;
 int iflib_dma_alloc (int ,int,TYPE_10__*,int ) ;
 int iflib_get_dev (int ) ;
 int iflib_get_media (int ) ;
 int iflib_get_sctx (int ) ;
 struct bnxt_softc* iflib_get_softc (int ) ;
 TYPE_8__* iflib_get_softc_ctx (int ) ;
 int iflib_set_mac (int ,int ) ;
 void* malloc (int,int ,int) ;
 void* min (void*,void*) ;
 int pci_disable_busmaster (int ) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_device (int ) ;
 void* pci_msix_count (int ) ;
 int pci_msix_table_bar (int ) ;

__attribute__((used)) static int
bnxt_attach_pre(if_ctx_t ctx)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);
 if_softc_ctx_t scctx;
 int rc = 0;

 softc->ctx = ctx;
 softc->dev = iflib_get_dev(ctx);
 softc->media = iflib_get_media(ctx);
 softc->scctx = iflib_get_softc_ctx(ctx);
 softc->sctx = iflib_get_sctx(ctx);
 scctx = softc->scctx;


 switch (pci_get_device(softc->dev)) {
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
  softc->flags |= BNXT_FLAG_NPAR;
  break;
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  softc->flags |= BNXT_FLAG_VF;
  break;
 }

 pci_enable_busmaster(softc->dev);

 if (bnxt_pci_mapping(softc))
  return (ENXIO);


 BNXT_HWRM_LOCK_INIT(softc, device_get_nameunit(softc->dev));
 rc = bnxt_alloc_hwrm_dma_mem(softc);
 if (rc)
  goto dma_fail;



 softc->ver_info = malloc(sizeof(struct bnxt_ver_info),
     M_DEVBUF, M_NOWAIT | M_ZERO);
 if (softc->ver_info == ((void*)0)) {
  rc = ENOMEM;
  device_printf(softc->dev,
      "Unable to allocate space for version info\n");
  goto ver_alloc_fail;
 }

 softc->ver_info->hwrm_min_major = 1;
 softc->ver_info->hwrm_min_minor = 2;
 softc->ver_info->hwrm_min_update = 2;

 rc = bnxt_hwrm_ver_get(softc);
 if (rc) {
  device_printf(softc->dev, "attach: hwrm ver get failed\n");
  goto ver_fail;
 }

 if (softc->flags & BNXT_FLAG_SHORT_CMD) {
  rc = bnxt_alloc_hwrm_short_cmd_req(softc);
  if (rc)
   goto hwrm_short_cmd_alloc_fail;
 }


 if (BNXT_PF(softc)) {
  softc->nvm_info = malloc(sizeof(struct bnxt_nvram_info),
      M_DEVBUF, M_NOWAIT | M_ZERO);
  if (softc->nvm_info == ((void*)0)) {
   rc = ENOMEM;
   device_printf(softc->dev,
       "Unable to allocate space for NVRAM info\n");
   goto nvm_alloc_fail;
  }

  rc = bnxt_hwrm_nvm_get_dev_info(softc, &softc->nvm_info->mfg_id,
      &softc->nvm_info->device_id, &softc->nvm_info->sector_size,
      &softc->nvm_info->size, &softc->nvm_info->reserved_size,
      &softc->nvm_info->available_size);
 }


 rc = bnxt_hwrm_func_drv_rgtr(softc);
 if (rc) {
  device_printf(softc->dev, "attach: hwrm drv rgtr failed\n");
  goto drv_rgtr_fail;
 }

        rc = bnxt_hwrm_func_rgtr_async_events(softc, ((void*)0), 0);
 if (rc) {
  device_printf(softc->dev, "attach: hwrm rgtr async evts failed\n");
  goto drv_rgtr_fail;
 }


 rc = bnxt_hwrm_func_qcaps(softc);
 if (rc)
  goto failed;


 rc = bnxt_hwrm_func_qcfg(softc);
 if (rc) {
  device_printf(softc->dev, "attach: hwrm func qcfg failed\n");
  goto failed;
 }

 iflib_set_mac(ctx, softc->func.mac_addr);

 scctx->isc_txrx = &bnxt_txrx;
 scctx->isc_tx_csum_flags = (CSUM_IP | CSUM_TCP | CSUM_UDP |
     CSUM_TCP_IPV6 | CSUM_UDP_IPV6 | CSUM_TSO);
 scctx->isc_capabilities = scctx->isc_capenable =

     IFCAP_TXCSUM | IFCAP_TXCSUM_IPV6 | IFCAP_TSO4 | IFCAP_TSO6 |

     IFCAP_LRO | IFCAP_VLAN_HWFILTER |

     IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6 | IFCAP_VLAN_MTU |
     IFCAP_VLAN_HWTAGGING | IFCAP_VLAN_HWTSO |

     IFCAP_VLAN_HWCSUM | IFCAP_JUMBO_MTU;

 if (bnxt_wol_supported(softc))
  scctx->isc_capenable |= IFCAP_WOL_MAGIC;


 rc = bnxt_hwrm_queue_qportcfg(softc);
 if (rc) {
  device_printf(softc->dev, "attach: hwrm qportcfg failed\n");
  goto failed;
 }

 bnxt_get_wol_settings(softc);


 rc = bnxt_hwrm_func_reset(softc);
 bnxt_clear_ids(softc);
 if (rc)
  goto failed;


 scctx->isc_tx_nsegments = 31,
 scctx->isc_tx_tso_segments_max = 31;
 scctx->isc_tx_tso_size_max = BNXT_TSO_SIZE;
 scctx->isc_tx_tso_segsize_max = BNXT_TSO_SIZE;
 scctx->isc_vectors = softc->func.max_cp_rings;
 scctx->isc_min_frame_size = BNXT_MIN_FRAME_SIZE;
 scctx->isc_txrx = &bnxt_txrx;

 if (scctx->isc_nrxd[0] <
     ((scctx->isc_nrxd[1] * 4) + scctx->isc_nrxd[2]))
  device_printf(softc->dev,
      "WARNING: nrxd0 (%d) should be at least 4 * nrxd1 (%d) + nrxd2 (%d).  Driver may be unstable\n",
      scctx->isc_nrxd[0], scctx->isc_nrxd[1], scctx->isc_nrxd[2]);
 if (scctx->isc_ntxd[0] < scctx->isc_ntxd[1] * 2)
  device_printf(softc->dev,
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

 scctx->isc_nrxqsets_max = min(pci_msix_count(softc->dev)-1,
     softc->fn_qcfg.alloc_completion_rings - 1);
 scctx->isc_nrxqsets_max = min(scctx->isc_nrxqsets_max,
     softc->fn_qcfg.alloc_rx_rings);
 scctx->isc_nrxqsets_max = min(scctx->isc_nrxqsets_max,
     softc->fn_qcfg.alloc_vnics);
 scctx->isc_ntxqsets_max = min(softc->fn_qcfg.alloc_tx_rings,
     softc->fn_qcfg.alloc_completion_rings - scctx->isc_nrxqsets_max - 1);

 scctx->isc_rss_table_size = HW_HASH_INDEX_SIZE;
 scctx->isc_rss_table_mask = scctx->isc_rss_table_size - 1;


 scctx->isc_msix_bar = pci_msix_table_bar(softc->dev);






 softc->hw_lro.enable = 0;
 softc->hw_lro.is_mode_gro = 0;
 softc->hw_lro.max_agg_segs = 5;
 softc->hw_lro.max_aggs = HWRM_VNIC_TPA_CFG_INPUT_MAX_AGGS_MAX;
 softc->hw_lro.min_agg_len = 512;


 softc->def_cp_ring.stats_ctx_id = HWRM_NA_SIGNATURE;
 softc->def_cp_ring.ring.phys_id = (uint16_t)HWRM_NA_SIGNATURE;
 softc->def_cp_ring.ring.softc = softc;
 softc->def_cp_ring.ring.id = 0;
 softc->def_cp_ring.ring.doorbell = softc->def_cp_ring.ring.id * 0x80;
 softc->def_cp_ring.ring.ring_size = PAGE_SIZE /
     sizeof(struct cmpl_base);
 rc = iflib_dma_alloc(ctx,
     sizeof(struct cmpl_base) * softc->def_cp_ring.ring.ring_size,
     &softc->def_cp_ring_mem, 0);
 softc->def_cp_ring.ring.vaddr = softc->def_cp_ring_mem.idi_vaddr;
 softc->def_cp_ring.ring.paddr = softc->def_cp_ring_mem.idi_paddr;
 iflib_config_gtask_init(ctx, &softc->def_cp_task, bnxt_def_cp_task,
     "dflt_cp");

 rc = bnxt_init_sysctl_ctx(softc);
 if (rc)
  goto init_sysctl_failed;
 if (BNXT_PF(softc)) {
  rc = bnxt_create_nvram_sysctls(softc->nvm_info);
  if (rc)
   goto failed;
 }

 arc4rand(softc->vnic_info.rss_hash_key, HW_HASH_KEY_SIZE, 0);
 softc->vnic_info.rss_hash_type =
     HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_IPV4 |
     HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_TCP_IPV4 |
     HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_UDP_IPV4 |
     HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_IPV6 |
     HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_TCP_IPV6 |
     HWRM_VNIC_RSS_CFG_INPUT_HASH_TYPE_UDP_IPV6;
 rc = bnxt_create_config_sysctls_pre(softc);
 if (rc)
  goto failed;

 rc = bnxt_create_hw_lro_sysctls(softc);
 if (rc)
  goto failed;

 rc = bnxt_create_pause_fc_sysctls(softc);
 if (rc)
  goto failed;


 SLIST_INIT(&softc->vnic_info.vlan_tags);
 softc->vnic_info.vlan_tag_list.idi_vaddr = ((void*)0);

 return (rc);

failed:
 bnxt_free_sysctl_ctx(softc);
init_sysctl_failed:
 bnxt_hwrm_func_drv_unrgtr(softc, 0);
drv_rgtr_fail:
 if (BNXT_PF(softc))
  free(softc->nvm_info, M_DEVBUF);
nvm_alloc_fail:
 bnxt_free_hwrm_short_cmd_req(softc);
hwrm_short_cmd_alloc_fail:
ver_fail:
 free(softc->ver_info, M_DEVBUF);
ver_alloc_fail:
 bnxt_free_hwrm_dma_mem(softc);
dma_fail:
 BNXT_HWRM_LOCK_DESTROY(softc);
 bnxt_pci_mapping_free(softc);
 pci_disable_busmaster(softc->dev);
 return (rc);
}
