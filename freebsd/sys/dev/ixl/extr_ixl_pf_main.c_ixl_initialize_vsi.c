
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
typedef int tctx ;
struct tx_ring {int tx_paddr; } ;
struct rx_ring {scalar_t__ mbuf_sz; int rx_paddr; } ;
struct TYPE_13__ {int * qs_handle; } ;
struct ixl_vsi {int num_tx_queues; int num_rx_queues; struct i40e_hw* hw; int ctx; scalar_t__ enable_head_writeback; TYPE_7__ info; scalar_t__ hw_filters_del; scalar_t__ hw_filters_add; int vsi_num; int ifp; int seid; struct ixl_rx_queue* rx_queues; struct ixl_tx_queue* tx_queues; struct ixl_pf* back; } ;
struct ixl_tx_queue {struct tx_ring txr; } ;
struct ixl_rx_queue {struct rx_ring rxr; } ;
struct TYPE_10__ {int first_qidx; int num_allocated; } ;
struct ixl_pf {scalar_t__ veb_seid; scalar_t__ iw_enabled; TYPE_3__ qtag; } ;
struct TYPE_12__ {int* tc_mapping; int queueing_opt_flags; int valid_sections; int port_vlan_flags; scalar_t__* queue_mapping; int mapping_flags; int up_enable_bits; int stat_counter_idx; } ;
struct i40e_vsi_context {scalar_t__ uplink_seid; int pf_num; int dbuff; int hbuff; int dsize; int base; int tphrdesc_ena; int tphwdesc_ena; int lrxqthresh; int crcstrip; int l2tsel; int showiv; int prefena; scalar_t__ fc_ena; scalar_t__ tphhead_ena; scalar_t__ tphdata_ena; int qlen; scalar_t__ hsplit_0; scalar_t__ dtype; scalar_t__ rxmax; int flags; TYPE_6__ info; int vsi_number; int vf_num; int vsis_unallocated; int vsis_allocated; int seid; } ;
struct i40e_tx_desc {int dummy; } ;
struct TYPE_8__ {scalar_t__ rx_buf_chain_len; } ;
struct TYPE_9__ {int asq_last_status; } ;
struct i40e_hw {int pf_id; TYPE_1__ func_caps; TYPE_2__ aq; } ;
struct i40e_hmc_obj_txq {int new_context; int base; int qlen; int head_wb_ena; int head_wb_addr; scalar_t__ rdylist_act; int rdylist; scalar_t__ fc_ena; } ;
struct i40e_hmc_obj_rxq {scalar_t__ uplink_seid; int pf_num; int dbuff; int hbuff; int dsize; int base; int tphrdesc_ena; int tphwdesc_ena; int lrxqthresh; int crcstrip; int l2tsel; int showiv; int prefena; scalar_t__ fc_ena; scalar_t__ tphhead_ena; scalar_t__ tphdata_ena; int qlen; scalar_t__ hsplit_0; scalar_t__ dtype; scalar_t__ rxmax; int flags; TYPE_6__ info; int vsi_number; int vf_num; int vsis_unallocated; int vsis_allocated; int seid; } ;
typedef TYPE_4__* if_softc_ctx_t ;
typedef int device_t ;
typedef int ctxt ;
struct TYPE_11__ {int* isc_ntxd; scalar_t__ isc_max_frame_size; int * isc_nrxd; } ;


 int I40E_AQ_VSI_PROP_QUEUE_MAP_VALID ;
 int I40E_AQ_VSI_PROP_QUEUE_OPT_VALID ;
 int I40E_AQ_VSI_PROP_VLAN_VALID ;
 int I40E_AQ_VSI_PVLAN_EMOD_NOTHING ;
 int I40E_AQ_VSI_PVLAN_EMOD_STR_BOTH ;
 int I40E_AQ_VSI_PVLAN_MODE_ALL ;
 int I40E_AQ_VSI_QUE_MAP_CONTIG ;
 int I40E_AQ_VSI_QUE_OPT_TCP_ENA ;
 int I40E_AQ_VSI_TC_QUE_NUMBER_MASK ;
 int I40E_AQ_VSI_TC_QUE_NUMBER_SHIFT ;
 int I40E_AQ_VSI_TC_QUE_OFFSET_MASK ;
 int I40E_AQ_VSI_TC_QUE_OFFSET_SHIFT ;
 int I40E_AQ_VSI_TYPE_PF ;
 int I40E_QRX_TAIL (int) ;
 int I40E_QTX_CTL (int) ;
 int I40E_QTX_CTL_PF_INDX_MASK ;
 int I40E_QTX_CTL_PF_INDX_SHIFT ;
 int I40E_QTX_CTL_PF_QUEUE ;
 int I40E_RXQ_CTX_DBUFF_SHIFT ;
 int I40E_RXQ_CTX_HBUFF_SHIFT ;
 int IFCAP_VLAN_HWTAGGING ;
 int IXL_DBG_SWITCH_INFO ;
 int IXL_RX_CTX_BASE_UNITS ;
 int IXL_TX_CTX_BASE_UNITS ;
 int bcopy (TYPE_6__*,TYPE_7__*,int) ;
 int bzero (struct i40e_hmc_obj_txq*,int) ;
 int device_printf (int ,char*,...) ;
 int fls (int ) ;
 int htole16 (int ) ;
 int i40e_aq_get_vsi_params (struct i40e_hw*,struct i40e_vsi_context*,int *) ;
 int i40e_aq_update_vsi_params (struct i40e_hw*,struct i40e_vsi_context*,int *) ;
 int i40e_clear_lan_rx_queue_context (struct i40e_hw*,int) ;
 int i40e_clear_lan_tx_queue_context (struct i40e_hw*,int) ;
 int i40e_set_lan_rx_queue_context (struct i40e_hw*,int,struct i40e_vsi_context*) ;
 int i40e_set_lan_tx_queue_context (struct i40e_hw*,int,struct i40e_hmc_obj_txq*) ;
 int if_getcapenable (int ) ;
 int iflib_get_dev (int ) ;
 scalar_t__ iflib_get_rx_mbuf_sz (int ) ;
 TYPE_4__* iflib_get_softc_ctx (int ) ;
 int ixl_dbg (struct ixl_pf*,int ,char*,int ,scalar_t__,int ,int ,int ,int ,int,int ,int ,int ) ;
 scalar_t__ ixl_enable_iwarp ;
 int ixl_flush (struct i40e_hw*) ;
 int ixl_init_tx_ring (struct ixl_vsi*,struct ixl_tx_queue*) ;
 int ixl_vsi_reset_stats (struct ixl_vsi*) ;
 int memset (struct i40e_vsi_context*,int ,int) ;
 int wr32 (struct i40e_hw*,int ,int) ;

int
ixl_initialize_vsi(struct ixl_vsi *vsi)
{
 struct ixl_pf *pf = vsi->back;
 if_softc_ctx_t scctx = iflib_get_softc_ctx(vsi->ctx);
 struct ixl_tx_queue *tx_que = vsi->tx_queues;
 struct ixl_rx_queue *rx_que = vsi->rx_queues;
 device_t dev = iflib_get_dev(vsi->ctx);
 struct i40e_hw *hw = vsi->hw;
 struct i40e_vsi_context ctxt;
 int tc_queues;
 int err = 0;

 memset(&ctxt, 0, sizeof(ctxt));
 ctxt.seid = vsi->seid;
 if (pf->veb_seid != 0)
  ctxt.uplink_seid = pf->veb_seid;
 ctxt.pf_num = hw->pf_id;
 err = i40e_aq_get_vsi_params(hw, &ctxt, ((void*)0));
 if (err) {
  device_printf(dev, "i40e_aq_get_vsi_params() failed, error %d"
      " aq_error %d\n", err, hw->aq.asq_last_status);
  return (err);
 }
 ixl_dbg(pf, IXL_DBG_SWITCH_INFO,
     "get_vsi_params: seid: %d, uplinkseid: %d, vsi_number: %d, "
     "vsis_allocated: %d, vsis_unallocated: %d, flags: 0x%x, "
     "pfnum: %d, vfnum: %d, stat idx: %d, enabled: %d\n", ctxt.seid,
     ctxt.uplink_seid, ctxt.vsi_number,
     ctxt.vsis_allocated, ctxt.vsis_unallocated,
     ctxt.flags, ctxt.pf_num, ctxt.vf_num,
     ctxt.info.stat_counter_idx, ctxt.info.up_enable_bits);





 ctxt.info.valid_sections = I40E_AQ_VSI_PROP_QUEUE_MAP_VALID;
 ctxt.info.mapping_flags |= I40E_AQ_VSI_QUE_MAP_CONTIG;

 ctxt.info.queue_mapping[0] = 0;





 tc_queues = fls(pf->qtag.num_allocated) - 1;
 ctxt.info.tc_mapping[0] = ((pf->qtag.first_qidx << I40E_AQ_VSI_TC_QUE_OFFSET_SHIFT)
     & I40E_AQ_VSI_TC_QUE_OFFSET_MASK) |
     ((tc_queues << I40E_AQ_VSI_TC_QUE_NUMBER_SHIFT)
     & I40E_AQ_VSI_TC_QUE_NUMBER_MASK);


 ctxt.info.valid_sections |= I40E_AQ_VSI_PROP_VLAN_VALID;
 ctxt.info.port_vlan_flags = I40E_AQ_VSI_PVLAN_MODE_ALL;
 if (if_getcapenable(vsi->ifp) & IFCAP_VLAN_HWTAGGING)
  ctxt.info.port_vlan_flags |= I40E_AQ_VSI_PVLAN_EMOD_STR_BOTH;
 else
  ctxt.info.port_vlan_flags |= I40E_AQ_VSI_PVLAN_EMOD_NOTHING;
 vsi->vsi_num = ctxt.vsi_number;
 bcopy(&ctxt.info, &vsi->info, sizeof(vsi->info));


 ixl_vsi_reset_stats(vsi);
 vsi->hw_filters_add = 0;
 vsi->hw_filters_del = 0;

 ctxt.flags = htole16(I40E_AQ_VSI_TYPE_PF);

 err = i40e_aq_update_vsi_params(hw, &ctxt, ((void*)0));
 if (err) {
  device_printf(dev, "i40e_aq_update_vsi_params() failed, error %d,"
      " aq_error %d\n", err, hw->aq.asq_last_status);
  return (err);
 }

 for (int i = 0; i < vsi->num_tx_queues; i++, tx_que++) {
  struct tx_ring *txr = &tx_que->txr;
  struct i40e_hmc_obj_txq tctx;
  u32 txctl;


  bzero(&tctx, sizeof(tctx));
  tctx.new_context = 1;
  tctx.base = (txr->tx_paddr/IXL_TX_CTX_BASE_UNITS);
  tctx.qlen = scctx->isc_ntxd[0];
  tctx.fc_ena = 0;




  tctx.rdylist = vsi->info.qs_handle[0];





  if (vsi->enable_head_writeback) {
   tctx.head_wb_ena = 1;
   tctx.head_wb_addr = txr->tx_paddr +
       (scctx->isc_ntxd[0] * sizeof(struct i40e_tx_desc));
  } else {
   tctx.head_wb_ena = 0;
   tctx.head_wb_addr = 0;
  }
  tctx.rdylist_act = 0;
  err = i40e_clear_lan_tx_queue_context(hw, i);
  if (err) {
   device_printf(dev, "Unable to clear TX context\n");
   break;
  }
  err = i40e_set_lan_tx_queue_context(hw, i, &tctx);
  if (err) {
   device_printf(dev, "Unable to set TX context\n");
   break;
  }

  txctl = I40E_QTX_CTL_PF_QUEUE;
  txctl |= ((hw->pf_id << I40E_QTX_CTL_PF_INDX_SHIFT) &
      I40E_QTX_CTL_PF_INDX_MASK);
  wr32(hw, I40E_QTX_CTL(i), txctl);
  ixl_flush(hw);


  ixl_init_tx_ring(vsi, tx_que);
 }
 for (int i = 0; i < vsi->num_rx_queues; i++, rx_que++) {
  struct rx_ring *rxr = &rx_que->rxr;
  struct i40e_hmc_obj_rxq rctx;


  rxr->mbuf_sz = iflib_get_rx_mbuf_sz(vsi->ctx);

  u16 max_rxmax = rxr->mbuf_sz * hw->func_caps.rx_buf_chain_len;


  memset(&rctx, 0, sizeof(struct i40e_hmc_obj_rxq));
  rctx.dbuff = rxr->mbuf_sz >> I40E_RXQ_CTX_DBUFF_SHIFT;

  rctx.hbuff = 0 >> I40E_RXQ_CTX_HBUFF_SHIFT;
  rctx.rxmax = (scctx->isc_max_frame_size < max_rxmax) ?
      scctx->isc_max_frame_size : max_rxmax;
  rctx.dtype = 0;
  rctx.dsize = 1;
  rctx.hsplit_0 = 0;
  rctx.base = (rxr->rx_paddr/IXL_RX_CTX_BASE_UNITS);
  rctx.qlen = scctx->isc_nrxd[0];
  rctx.tphrdesc_ena = 1;
  rctx.tphwdesc_ena = 1;
  rctx.tphdata_ena = 0;
  rctx.tphhead_ena = 0;
  rctx.lrxqthresh = 1;
  rctx.crcstrip = 1;
  rctx.l2tsel = 1;
  rctx.showiv = 1;
  rctx.fc_ena = 0;
  rctx.prefena = 1;

  err = i40e_clear_lan_rx_queue_context(hw, i);
  if (err) {
   device_printf(dev,
       "Unable to clear RX context %d\n", i);
   break;
  }
  err = i40e_set_lan_rx_queue_context(hw, i, &rctx);
  if (err) {
   device_printf(dev, "Unable to set RX context %d\n", i);
   break;
  }
  wr32(vsi->hw, I40E_QRX_TAIL(i), 0);
 }
 return (err);
}
