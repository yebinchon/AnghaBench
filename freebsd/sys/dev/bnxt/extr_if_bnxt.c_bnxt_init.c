
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;


typedef int uint16_t ;
struct ifmediareq {int dummy; } ;
struct ctx_hw_stats {int dummy; } ;
struct TYPE_20__ {scalar_t__ idi_vaddr; } ;
struct TYPE_24__ {int rss_hash_type; TYPE_2__ rss_grp_tbl; int mru; int def_ring_grp; int rss_id; } ;
struct TYPE_18__ {int phys_id; } ;
struct TYPE_23__ {int v_bit; scalar_t__ stats_ctx_id; TYPE_12__ ring; void* cons; void* last_idx; } ;
struct TYPE_21__ {scalar_t__ idi_paddr; } ;
struct TYPE_22__ {scalar_t__ idi_paddr; } ;
struct bnxt_softc {int nrxqsets; int ntxqsets; TYPE_6__ vnic_info; int ctx; TYPE_5__ def_cp_ring; TYPE_12__* tx_rings; TYPE_5__* tx_cp_rings; TYPE_3__ tx_stats; TYPE_11__* grp_info; TYPE_1__* scctx; TYPE_5__* rx_cp_rings; TYPE_12__* ag_rings; TYPE_12__* rx_rings; TYPE_4__ rx_stats; } ;
typedef int if_ctx_t ;
struct TYPE_19__ {int isc_max_frame_size; } ;
struct TYPE_17__ {int grp_id; int cp_ring_id; int ag_ring_id; int rx_ring_id; scalar_t__ stats_ctx; } ;


 int BNXT_RX_DB (TYPE_12__*,int ) ;
 int BNXT_TX_DB (TYPE_12__*,int ) ;
 scalar_t__ HWRM_NA_SIGNATURE ;
 int HWRM_RING_ALLOC_INPUT_RING_TYPE_L2_CMPL ;
 int HWRM_RING_ALLOC_INPUT_RING_TYPE_RX ;
 int HWRM_RING_ALLOC_INPUT_RING_TYPE_TX ;
 int HW_HASH_INDEX_SIZE ;
 void* UINT32_MAX ;
 int bnxt_cfg_async_cr (struct bnxt_softc*) ;
 int bnxt_clear_ids (struct bnxt_softc*) ;
 int bnxt_do_enable_intr (TYPE_5__*) ;
 int bnxt_hwrm_cfa_l2_set_rx_mask (struct bnxt_softc*,TYPE_6__*) ;
 int bnxt_hwrm_func_reset (struct bnxt_softc*) ;
 int bnxt_hwrm_ring_alloc (struct bnxt_softc*,int ,TYPE_12__*,int ,scalar_t__,int) ;
 int bnxt_hwrm_ring_grp_alloc (struct bnxt_softc*,TYPE_11__*) ;
 int bnxt_hwrm_rss_cfg (struct bnxt_softc*,TYPE_6__*,int ) ;
 int bnxt_hwrm_set_filter (struct bnxt_softc*,TYPE_6__*) ;
 int bnxt_hwrm_stat_ctx_alloc (struct bnxt_softc*,TYPE_5__*,scalar_t__) ;
 int bnxt_hwrm_vnic_alloc (struct bnxt_softc*,TYPE_6__*) ;
 int bnxt_hwrm_vnic_cfg (struct bnxt_softc*,TYPE_6__*) ;
 int bnxt_hwrm_vnic_ctx_alloc (struct bnxt_softc*,int *) ;
 int bnxt_hwrm_vnic_tpa_cfg (struct bnxt_softc*) ;
 int bnxt_mark_cpr_invalid (TYPE_5__*) ;
 int bnxt_media_status (int ,struct ifmediareq*) ;
 int htole16 (int ) ;
 struct bnxt_softc* iflib_get_softc (int ) ;

__attribute__((used)) static void
bnxt_init(if_ctx_t ctx)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);
 struct ifmediareq ifmr;
 int i, j;
 int rc;

 rc = bnxt_hwrm_func_reset(softc);
 if (rc)
  return;
 bnxt_clear_ids(softc);


 softc->def_cp_ring.cons = UINT32_MAX;
 softc->def_cp_ring.v_bit = 1;
 bnxt_mark_cpr_invalid(&softc->def_cp_ring);
 rc = bnxt_hwrm_ring_alloc(softc,
     HWRM_RING_ALLOC_INPUT_RING_TYPE_L2_CMPL,
     &softc->def_cp_ring.ring,
     (uint16_t)HWRM_NA_SIGNATURE,
     HWRM_NA_SIGNATURE, 1);
 if (rc)
  goto fail;


 rc = bnxt_cfg_async_cr(softc);
 if (rc)
  goto fail;

 for (i = 0; i < softc->nrxqsets; i++) {

  rc = bnxt_hwrm_stat_ctx_alloc(softc, &softc->rx_cp_rings[i],
      softc->rx_stats.idi_paddr +
      (sizeof(struct ctx_hw_stats) * i));
  if (rc)
   goto fail;


  softc->rx_cp_rings[i].cons = UINT32_MAX;
  softc->rx_cp_rings[i].v_bit = 1;
  softc->rx_cp_rings[i].last_idx = UINT32_MAX;
  bnxt_mark_cpr_invalid(&softc->rx_cp_rings[i]);
  rc = bnxt_hwrm_ring_alloc(softc,
      HWRM_RING_ALLOC_INPUT_RING_TYPE_L2_CMPL,
      &softc->rx_cp_rings[i].ring, (uint16_t)HWRM_NA_SIGNATURE,
      HWRM_NA_SIGNATURE, 1);
  if (rc)
   goto fail;


  rc = bnxt_hwrm_ring_alloc(softc,
      HWRM_RING_ALLOC_INPUT_RING_TYPE_RX,
      &softc->rx_rings[i], (uint16_t)HWRM_NA_SIGNATURE,
      HWRM_NA_SIGNATURE, 0);
  if (rc)
   goto fail;
  BNXT_RX_DB(&softc->rx_rings[i], 0);

  BNXT_RX_DB(&softc->rx_rings[i], 0);


  rc = bnxt_hwrm_ring_alloc(softc,
      HWRM_RING_ALLOC_INPUT_RING_TYPE_RX,
      &softc->ag_rings[i], (uint16_t)HWRM_NA_SIGNATURE,
      HWRM_NA_SIGNATURE, 0);
  if (rc)
   goto fail;
  BNXT_RX_DB(&softc->rx_rings[i], 0);

  BNXT_RX_DB(&softc->ag_rings[i], 0);


  softc->grp_info[i].stats_ctx =
      softc->rx_cp_rings[i].stats_ctx_id;
  softc->grp_info[i].rx_ring_id = softc->rx_rings[i].phys_id;
  softc->grp_info[i].ag_ring_id = softc->ag_rings[i].phys_id;
  softc->grp_info[i].cp_ring_id =
      softc->rx_cp_rings[i].ring.phys_id;
  rc = bnxt_hwrm_ring_grp_alloc(softc, &softc->grp_info[i]);
  if (rc)
   goto fail;

 }


 rc = bnxt_hwrm_vnic_ctx_alloc(softc, &softc->vnic_info.rss_id);
 if (rc)
  goto fail;


 softc->vnic_info.def_ring_grp = softc->grp_info[0].grp_id;
 softc->vnic_info.mru = softc->scctx->isc_max_frame_size;
 rc = bnxt_hwrm_vnic_alloc(softc, &softc->vnic_info);
 if (rc)
  goto fail;
 rc = bnxt_hwrm_vnic_cfg(softc, &softc->vnic_info);
 if (rc)
  goto fail;
 rc = bnxt_hwrm_set_filter(softc, &softc->vnic_info);
 if (rc)
  goto fail;


 for (i = 0, j = 0; i < HW_HASH_INDEX_SIZE; i++) {
  ((uint16_t *)
      softc->vnic_info.rss_grp_tbl.idi_vaddr)[i] =
      htole16(softc->grp_info[j].grp_id);
  if (++j == softc->nrxqsets)
   j = 0;
 }

 rc = bnxt_hwrm_rss_cfg(softc, &softc->vnic_info,
     softc->vnic_info.rss_hash_type);
 if (rc)
  goto fail;

 rc = bnxt_hwrm_vnic_tpa_cfg(softc);
 if (rc)
  goto fail;

 for (i = 0; i < softc->ntxqsets; i++) {

  rc = bnxt_hwrm_stat_ctx_alloc(softc, &softc->tx_cp_rings[i],
      softc->tx_stats.idi_paddr +
      (sizeof(struct ctx_hw_stats) * i));
  if (rc)
   goto fail;


  softc->tx_cp_rings[i].cons = UINT32_MAX;
  softc->tx_cp_rings[i].v_bit = 1;
  bnxt_mark_cpr_invalid(&softc->tx_cp_rings[i]);
  rc = bnxt_hwrm_ring_alloc(softc,
      HWRM_RING_ALLOC_INPUT_RING_TYPE_L2_CMPL,
      &softc->tx_cp_rings[i].ring, (uint16_t)HWRM_NA_SIGNATURE,
      HWRM_NA_SIGNATURE, 0);
  if (rc)
   goto fail;


  rc = bnxt_hwrm_ring_alloc(softc,
      HWRM_RING_ALLOC_INPUT_RING_TYPE_TX,
      &softc->tx_rings[i], softc->tx_cp_rings[i].ring.phys_id,
      softc->tx_cp_rings[i].stats_ctx_id, 0);
  if (rc)
   goto fail;
  BNXT_TX_DB(&softc->tx_rings[i], 0);

  BNXT_TX_DB(&softc->tx_rings[i], 0);
 }

 bnxt_do_enable_intr(&softc->def_cp_ring);
 bnxt_media_status(softc->ctx, &ifmr);
 bnxt_hwrm_cfa_l2_set_rx_mask(softc, &softc->vnic_info);
 return;

fail:
 bnxt_hwrm_func_reset(softc);
 bnxt_clear_ids(softc);
 return;
}
