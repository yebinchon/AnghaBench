
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_76__ TYPE_9__ ;
typedef struct TYPE_75__ TYPE_8__ ;
typedef struct TYPE_74__ TYPE_7__ ;
typedef struct TYPE_73__ TYPE_6__ ;
typedef struct TYPE_72__ TYPE_5__ ;
typedef struct TYPE_71__ TYPE_4__ ;
typedef struct TYPE_70__ TYPE_3__ ;
typedef struct TYPE_69__ TYPE_35__ ;
typedef struct TYPE_68__ TYPE_2__ ;
typedef struct TYPE_67__ TYPE_1__ ;
typedef struct TYPE_66__ TYPE_17__ ;
typedef struct TYPE_65__ TYPE_16__ ;
typedef struct TYPE_64__ TYPE_15__ ;
typedef struct TYPE_63__ TYPE_14__ ;
typedef struct TYPE_62__ TYPE_13__ ;
typedef struct TYPE_61__ TYPE_12__ ;
typedef struct TYPE_60__ TYPE_11__ ;
typedef struct TYPE_59__ TYPE_10__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct TYPE_59__ {int rq_id; void* type_match; void* type_mask; void* r_ctl_match; void* r_ctl_mask; } ;
typedef TYPE_10__ sli4_cmd_rq_cfg_t ;
struct TYPE_60__ {int fcfi; } ;
typedef TYPE_11__ sli4_cmd_reg_fcfi_t ;
typedef int prop_buf ;
struct TYPE_62__ {scalar_t__ size; } ;
struct TYPE_75__ {int n_rq; scalar_t__ auto_xfer_rdy_size; int n_eq; int n_cq; int n_mq; int n_wq; int* filter_def; scalar_t__ emulate_tgt_wqe_timeout; scalar_t__ auto_xfer_rdy_t10_enable; scalar_t__ esoc; } ;
struct TYPE_67__ {void* mrqp; } ;
struct TYPE_68__ {TYPE_1__ flag; } ;
struct TYPE_70__ {TYPE_2__ features; } ;
struct TYPE_65__ {scalar_t__ if_type; TYPE_3__ config; } ;
struct TYPE_71__ {scalar_t__ override_fcfi; } ;
struct TYPE_61__ {int hw_rq_count; int first_domain_idx; int eq_count; int rq_count; int wq_count; int cq_count; int watchdog_timeout; TYPE_13__ loop_map; int os; TYPE_13__ fcf_dmem; TYPE_13__ domain_dmem; scalar_t__ expiration_logged; int send_frame_seq_id; TYPE_9__** hw_wq; int * wq_class_array; int wqe_timer; TYPE_8__ config; int state; TYPE_17__* cq; TYPE_16__ sli; int cq_hash; TYPE_7__* wq; int wq_hash; TYPE_6__* rq; int rq_hash; TYPE_17__* eq; int eth_license; int linkcfg; int q_hist; int fcf_indicator; TYPE_15__** hw_rq; scalar_t__ hw_mrq_count; int fcf_index_fcfi; TYPE_4__ workaround; int domains; TYPE_35__* rpi_ref; int * seq_pool; TYPE_13__ rnode_mem; int qtop; scalar_t__ sliport_healthcheck; void* auto_xfer_rdy_enabled; int io_port_dnrx; int io_timed_wqe; int io_wait_free; int io_port_owned; int io_free; int io_inuse; int cmd_lock; int cmd_pending; int cmd_head; } ;
typedef TYPE_12__ ocs_hw_t ;
typedef int ocs_hw_sequence_t ;
typedef int ocs_hw_rtn_e ;
typedef TYPE_13__ ocs_dma_t ;
struct TYPE_63__ {int * send_frame_io; } ;
typedef TYPE_14__ hw_wq_t ;
struct TYPE_64__ {scalar_t__ filter_mask; TYPE_5__* hdr; scalar_t__ entry_count; } ;
typedef TYPE_15__ hw_rq_t ;
struct TYPE_76__ {int * send_frame_io; } ;
struct TYPE_74__ {int id; } ;
struct TYPE_73__ {int id; } ;
struct TYPE_72__ {int id; } ;
struct TYPE_69__ {int rpi_attached; int rpi_count; } ;
struct TYPE_66__ {int id; } ;


 void* FALSE ;
 int MIN (int ,int ) ;
 int OCS_CMD_POLL ;
 scalar_t__ OCS_HW_FDT_XFER_HINT ;
 int OCS_HW_LINKCFG_NA ;
 int OCS_HW_MAX_NUM_CQ ;
 int OCS_HW_MAX_NUM_EQ ;
 int OCS_HW_MAX_NUM_MQ ;
 int OCS_HW_MAX_NUM_RQ ;
 int OCS_HW_MAX_NUM_WQ ;
 int OCS_HW_Q_HASH_SIZE ;
 int OCS_HW_READ_FCF_SIZE ;
 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_NO_MEMORY ;
 int OCS_HW_RTN_SUCCESS ;
 int OCS_HW_STATE_ACTIVE ;
 int OCS_HW_WQ_TIMER_PERIOD_MS ;
 int OCS_MIN (int,int) ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SLI4_BMBX_SIZE ;
 int SLI4_CMD_REG_FCFI_NUM_RQ_CFG ;
 int SLI4_CMD_REG_FCFI_SET_FCFI_MODE ;
 int SLI4_CMD_REG_FCFI_SET_MRQ_MODE ;
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ;
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ;
 int SLI4_MIN_LOOP_MAP_BYTES ;
 scalar_t__ SLI_LINK_MEDIUM_ETHERNET ;
 scalar_t__ SLI_LINK_MEDIUM_FC ;
 int SLI_QTYPE_CQ ;
 int SLI_QTYPE_EQ ;
 int SLI_QTYPE_MQ ;
 int SLI_QTYPE_RQ ;
 int SLI_QTYPE_WQ ;
 int SLI_RSRC_FCOE_RPI ;
 void* TRUE ;
 int UINT16_MAX ;
 int dnrx_link ;
 int link ;
 int * ocs_array_alloc (int ,int,int) ;
 int ocs_atomic_init (int *,int ) ;
 scalar_t__ ocs_dma_alloc (int ,TYPE_13__*,int,int) ;
 int ocs_dma_free (int ,TYPE_13__*) ;
 scalar_t__ ocs_get_property (char*,char*,int) ;
 int ocs_hw_command (TYPE_12__*,void**,int ,int *,int *) ;
 int ocs_hw_config_auto_xfer_rdy_t10pi (TYPE_12__*,void**) ;
 int ocs_hw_config_mrq (TYPE_12__*,int ,int ,int ) ;
 int ocs_hw_config_set_fdt_xfer_hint (TYPE_12__*,scalar_t__) ;
 int ocs_hw_config_sli_port_health_check (TYPE_12__*,int ,int) ;
 int ocs_hw_config_watchdog_timer (TYPE_12__*) ;
 int ocs_hw_get_linkcfg (TYPE_12__*,int ,int ,TYPE_12__*) ;
 int ocs_hw_init_io (TYPE_12__*) ;
 int ocs_hw_init_linkcfg_cb ;
 int ocs_hw_init_queues (TYPE_12__*,int ) ;
 void* ocs_hw_io_alloc (TYPE_12__*) ;
 int ocs_hw_io_t ;
 int ocs_hw_queue_hash_add (int ,int ,int) ;
 int ocs_hw_reqtag_init (TYPE_12__*) ;
 scalar_t__ ocs_hw_rqpair_init (TYPE_12__*) ;
 int ocs_hw_rx_allocate (TYPE_12__*) ;
 int ocs_hw_rx_free (TYPE_12__*) ;
 scalar_t__ ocs_hw_rx_post (TYPE_12__*) ;
 int ocs_hw_set_dif_mode (TYPE_12__*) ;
 int ocs_hw_set_dif_seed (TYPE_12__*) ;
 scalar_t__ ocs_hw_set_eth_license (TYPE_12__*,int ) ;
 int ocs_hw_setup_io (TYPE_12__*) ;
 int ocs_list_empty (int *) ;
 int ocs_list_init (int *,int ,int ) ;
 int ocs_list_remove_head (int *) ;
 scalar_t__ ocs_list_valid (int *) ;
 int ocs_lock (int *) ;
 int ocs_log_debug (int ,char*,...) ;
 int ocs_log_err (int ,char*,...) ;
 int ocs_log_info (int ,char*,int) ;
 int ocs_log_test (int ,char*) ;
 TYPE_35__* ocs_malloc (int ,int,int) ;
 int ocs_memset (int ,int ,int) ;
 int ocs_queue_history_init (int ,int *) ;
 int ocs_setup_timer (int ,int *,int ,TYPE_12__*,int ) ;
 int ocs_strtoul (char*,int ,int ) ;
 int ocs_unlock (int *) ;
 int ocs_varray_get_count (int ) ;
 TYPE_14__* ocs_varray_iter_next (int ) ;
 int sli_cmd_config_auto_xfer_rdy (TYPE_16__*,void**,int,scalar_t__) ;
 int sli_cmd_config_auto_xfer_rdy_hp (TYPE_16__*,void**,int,scalar_t__,int,int) ;
 scalar_t__ sli_cmd_fcoe_post_hdr_templates (TYPE_16__*,void**,int,TYPE_13__*,int ,TYPE_13__*) ;
 scalar_t__ sli_cmd_reg_fcfi (TYPE_16__*,void**,int,int ,TYPE_10__*,int ) ;
 int sli_fc_get_rpi_requirements (TYPE_16__*,int) ;
 scalar_t__ sli_get_auto_xfer_rdy_capable (TYPE_16__*) ;
 scalar_t__ sli_get_dif_capable (TYPE_16__*) ;
 scalar_t__ sli_get_if_type (TYPE_16__*) ;
 int sli_get_max_queue (TYPE_16__*,int ) ;
 int sli_get_max_rsrc (TYPE_16__*,int ) ;
 scalar_t__ sli_get_medium (TYPE_16__*) ;
 scalar_t__ sli_init (TYPE_16__*) ;
 int sli_queue_arm (TYPE_16__*,TYPE_17__*,void*) ;
 int target_wqe_timer_cb ;
 int wqe_link ;

ocs_hw_rtn_e
ocs_hw_init(ocs_hw_t *hw)
{
 ocs_hw_rtn_e rc;
 uint32_t i = 0;
 uint8_t buf[SLI4_BMBX_SIZE];
 uint32_t max_rpi;
 int rem_count;
 int written_size = 0;
 uint32_t count;
 char prop_buf[32];
 uint32_t ramdisc_blocksize = 512;
 uint32_t q_count = 0;






 ocs_lock(&hw->cmd_lock);
  if (!ocs_list_empty(&hw->cmd_head)) {
   ocs_log_test(hw->os, "command found on cmd list\n");
   ocs_unlock(&hw->cmd_lock);
   return OCS_HW_RTN_ERROR;
  }
  if (!ocs_list_empty(&hw->cmd_pending)) {
   ocs_log_test(hw->os, "command found on pending list\n");
   ocs_unlock(&hw->cmd_lock);
   return OCS_HW_RTN_ERROR;
  }
 ocs_unlock(&hw->cmd_lock);


 ocs_hw_rx_free(hw);
 rem_count=0;
 if (ocs_list_valid(&hw->io_wait_free)) {
  while ((!ocs_list_empty(&hw->io_wait_free))) {
   rem_count++;
   ocs_list_remove_head(&hw->io_wait_free);
  }
  if (rem_count > 0) {
   ocs_log_debug(hw->os, "removed %d items from io_wait_free list\n", rem_count);
  }
 }
 rem_count=0;
 if (ocs_list_valid(&hw->io_inuse)) {
  while ((!ocs_list_empty(&hw->io_inuse))) {
   rem_count++;
   ocs_list_remove_head(&hw->io_inuse);
  }
  if (rem_count > 0) {
   ocs_log_debug(hw->os, "removed %d items from io_inuse list\n", rem_count);
  }
 }
 rem_count=0;
 if (ocs_list_valid(&hw->io_free)) {
  while ((!ocs_list_empty(&hw->io_free))) {
   rem_count++;
   ocs_list_remove_head(&hw->io_free);
  }
  if (rem_count > 0) {
   ocs_log_debug(hw->os, "removed %d items from io_free list\n", rem_count);
  }
 }
 if (ocs_list_valid(&hw->io_port_owned)) {
  while ((!ocs_list_empty(&hw->io_port_owned))) {
   ocs_list_remove_head(&hw->io_port_owned);
  }
 }
 ocs_list_init(&hw->io_inuse, ocs_hw_io_t, link);
 ocs_list_init(&hw->io_free, ocs_hw_io_t, link);
 ocs_list_init(&hw->io_port_owned, ocs_hw_io_t, link);
 ocs_list_init(&hw->io_wait_free, ocs_hw_io_t, link);
 ocs_list_init(&hw->io_timed_wqe, ocs_hw_io_t, wqe_link);
 ocs_list_init(&hw->io_port_dnrx, ocs_hw_io_t, dnrx_link);


 if (hw->config.n_rq == 1) {
  hw->sli.config.features.flag.mrqp = FALSE;
 }

 if (sli_init(&hw->sli)) {
  ocs_log_err(hw->os, "SLI failed to initialize\n");
  return OCS_HW_RTN_ERROR;
 }




 hw->auto_xfer_rdy_enabled = FALSE;
 if (sli_get_auto_xfer_rdy_capable(&hw->sli) &&
     hw->config.auto_xfer_rdy_size > 0) {
  if (hw->config.esoc){
   if (ocs_get_property("ramdisc_blocksize", prop_buf, sizeof(prop_buf)) == 0) {
    ramdisc_blocksize = ocs_strtoul(prop_buf, 0, 0);
   }
   written_size = sli_cmd_config_auto_xfer_rdy_hp(&hw->sli, buf, SLI4_BMBX_SIZE, hw->config.auto_xfer_rdy_size, 1, ramdisc_blocksize);
  } else {
   written_size = sli_cmd_config_auto_xfer_rdy(&hw->sli, buf, SLI4_BMBX_SIZE, hw->config.auto_xfer_rdy_size);
  }
  if (written_size) {
   rc = ocs_hw_command(hw, buf, OCS_CMD_POLL, ((void*)0), ((void*)0));
   if (rc != OCS_HW_RTN_SUCCESS) {
    ocs_log_err(hw->os, "config auto xfer rdy failed\n");
    return rc;
   }
  }
  hw->auto_xfer_rdy_enabled = TRUE;

  if (hw->config.auto_xfer_rdy_t10_enable) {
   rc = ocs_hw_config_auto_xfer_rdy_t10pi(hw, buf);
   if (rc != OCS_HW_RTN_SUCCESS) {
    ocs_log_err(hw->os, "set parameters auto xfer rdy T10 PI failed\n");
    return rc;
   }
  }
 }

 if(hw->sliport_healthcheck) {
  rc = ocs_hw_config_sli_port_health_check(hw, 0, 1);
  if (rc != OCS_HW_RTN_SUCCESS) {
   ocs_log_err(hw->os, "Enabling Sliport Health check failed \n");
   return rc;
  }
 }




 if ((hw->sli.if_type == SLI4_IF_TYPE_LANCER_FC_ETH) && (OCS_HW_FDT_XFER_HINT != 0)) {




  ocs_hw_config_set_fdt_xfer_hint(hw, OCS_HW_FDT_XFER_HINT);
 }




 q_count = MIN(sli_get_max_queue(&hw->sli, SLI_QTYPE_EQ),
     OCS_HW_MAX_NUM_EQ);
 if (hw->config.n_eq > q_count) {
  ocs_log_err(hw->os, "requested %d EQ but %d allowed\n",
       hw->config.n_eq, q_count);
  return OCS_HW_RTN_ERROR;
 }

 q_count = MIN(sli_get_max_queue(&hw->sli, SLI_QTYPE_CQ),
     OCS_HW_MAX_NUM_CQ);
 if (hw->config.n_cq > q_count) {
  ocs_log_err(hw->os, "requested %d CQ but %d allowed\n",
       hw->config.n_cq, q_count);
  return OCS_HW_RTN_ERROR;
 }

 q_count = MIN(sli_get_max_queue(&hw->sli, SLI_QTYPE_MQ),
     OCS_HW_MAX_NUM_MQ);
 if (hw->config.n_mq > q_count) {
  ocs_log_err(hw->os, "requested %d MQ but %d allowed\n",
       hw->config.n_mq, q_count);
  return OCS_HW_RTN_ERROR;
 }

 q_count = MIN(sli_get_max_queue(&hw->sli, SLI_QTYPE_RQ),
     OCS_HW_MAX_NUM_RQ);
 if (hw->config.n_rq > q_count) {
  ocs_log_err(hw->os, "requested %d RQ but %d allowed\n",
       hw->config.n_rq, q_count);
  return OCS_HW_RTN_ERROR;
 }

 q_count = MIN(sli_get_max_queue(&hw->sli, SLI_QTYPE_WQ),
     OCS_HW_MAX_NUM_WQ);
 if (hw->config.n_wq > q_count) {
  ocs_log_err(hw->os, "requested %d WQ but %d allowed\n",
       hw->config.n_wq, q_count);
  return OCS_HW_RTN_ERROR;
 }


 ocs_memset(hw->cq_hash, 0, sizeof(hw->cq_hash));
 ocs_log_debug(hw->os, "Max CQs %d, hash size = %d\n",
   OCS_HW_MAX_NUM_CQ, OCS_HW_Q_HASH_SIZE);

 ocs_memset(hw->rq_hash, 0, sizeof(hw->rq_hash));
 ocs_log_debug(hw->os, "Max RQs %d, hash size = %d\n",
   OCS_HW_MAX_NUM_RQ, OCS_HW_Q_HASH_SIZE);

 ocs_memset(hw->wq_hash, 0, sizeof(hw->wq_hash));
 ocs_log_debug(hw->os, "Max WQs %d, hash size = %d\n",
   OCS_HW_MAX_NUM_WQ, OCS_HW_Q_HASH_SIZE);


 rc = ocs_hw_init_queues(hw, hw->qtop);
 if (rc != OCS_HW_RTN_SUCCESS) {
  return rc;
 }

 max_rpi = sli_get_max_rsrc(&hw->sli, SLI_RSRC_FCOE_RPI);
 i = sli_fc_get_rpi_requirements(&hw->sli, max_rpi);
 if (i) {
  ocs_dma_t payload_memory;

  rc = OCS_HW_RTN_ERROR;

  if (hw->rnode_mem.size) {
   ocs_dma_free(hw->os, &hw->rnode_mem);
  }

  if (ocs_dma_alloc(hw->os, &hw->rnode_mem, i, 4096)) {
   ocs_log_err(hw->os, "remote node memory allocation fail\n");
   return OCS_HW_RTN_NO_MEMORY;
  }

  payload_memory.size = 0;
  if (sli_cmd_fcoe_post_hdr_templates(&hw->sli, buf, SLI4_BMBX_SIZE,
     &hw->rnode_mem, UINT16_MAX, &payload_memory)) {
   rc = ocs_hw_command(hw, buf, OCS_CMD_POLL, ((void*)0), ((void*)0));

   if (payload_memory.size != 0) {

    ocs_dma_free(hw->os, &payload_memory);
   }
  }

  if (rc != OCS_HW_RTN_SUCCESS) {
   ocs_log_err(hw->os, "header template registration failed\n");
   return rc;
  }
 }


 rc = ocs_hw_rx_allocate(hw);
 if (rc) {
  ocs_log_err(hw->os, "rx_allocate failed\n");
  return rc;
 }


 if (hw->seq_pool == ((void*)0)) {
  uint32_t count = 0;
  uint32_t i;


  for (i = 0; i < hw->hw_rq_count; i++) {
   count += hw->hw_rq[i]->entry_count;
  }

  hw->seq_pool = ocs_array_alloc(hw->os, sizeof(ocs_hw_sequence_t), count);
  if (hw->seq_pool == ((void*)0)) {
   ocs_log_err(hw->os, "malloc seq_pool failed\n");
   return OCS_HW_RTN_NO_MEMORY;
  }
 }

 if(ocs_hw_rx_post(hw)) {
  ocs_log_err(hw->os, "WARNING - error posting RQ buffers\n");
 }


 if (hw->rpi_ref == ((void*)0)) {
  hw->rpi_ref = ocs_malloc(hw->os, max_rpi * sizeof(*hw->rpi_ref),
       OCS_M_ZERO | OCS_M_NOWAIT);
  if (hw->rpi_ref == ((void*)0)) {
   ocs_log_err(hw->os, "rpi_ref allocation failure (%d)\n", i);
   return OCS_HW_RTN_NO_MEMORY;
  }
 }

 for (i = 0; i < max_rpi; i ++) {
  ocs_atomic_init(&hw->rpi_ref[i].rpi_count, 0);
  ocs_atomic_init(&hw->rpi_ref[i].rpi_attached, 0);
 }

 ocs_memset(hw->domains, 0, sizeof(hw->domains));


 if (hw->workaround.override_fcfi) {
  hw->first_domain_idx = -1;
 }

 ocs_memset(hw->fcf_index_fcfi, 0, sizeof(hw->fcf_index_fcfi));


 if (sli_get_medium(&hw->sli) == SLI_LINK_MEDIUM_FC) {

  if (hw->hw_mrq_count) {
   ocs_log_debug(hw->os, "using REG_FCFI MRQ\n");

   rc = ocs_hw_config_mrq(hw, SLI4_CMD_REG_FCFI_SET_FCFI_MODE, 0, 0);
   if (rc != OCS_HW_RTN_SUCCESS) {
    ocs_log_err(hw->os, "REG_FCFI_MRQ FCFI registration failed\n");
    return rc;
   }

   rc = ocs_hw_config_mrq(hw, SLI4_CMD_REG_FCFI_SET_MRQ_MODE, 0, 0);
   if (rc != OCS_HW_RTN_SUCCESS) {
    ocs_log_err(hw->os, "REG_FCFI_MRQ MRQ registration failed\n");
    return rc;
   }
  } else {
   sli4_cmd_rq_cfg_t rq_cfg[SLI4_CMD_REG_FCFI_NUM_RQ_CFG];

   ocs_log_debug(hw->os, "using REG_FCFI standard\n");


   for (i = 0; i < SLI4_CMD_REG_FCFI_NUM_RQ_CFG; i++) {
    rq_cfg[i].rq_id = 0xffff;
    rq_cfg[i].r_ctl_mask = (uint8_t) hw->config.filter_def[i];
    rq_cfg[i].r_ctl_match = (uint8_t) (hw->config.filter_def[i] >> 8);
    rq_cfg[i].type_mask = (uint8_t) (hw->config.filter_def[i] >> 16);
    rq_cfg[i].type_match = (uint8_t) (hw->config.filter_def[i] >> 24);
   }





   for (i = 0; i < OCS_MIN(hw->hw_rq_count, SLI4_CMD_REG_FCFI_NUM_RQ_CFG); i++) {
    hw_rq_t *rq = hw->hw_rq[i];
    uint32_t j;
    for (j = 0; j < SLI4_CMD_REG_FCFI_NUM_RQ_CFG; j++) {
     uint32_t mask = (rq->filter_mask != 0) ? rq->filter_mask : 1;
     if (mask & (1U << j)) {
      rq_cfg[j].rq_id = rq->hdr->id;
      ocs_log_debug(hw->os, "REG_FCFI: filter[%d] %08X -> RQ[%d] id=%d\n",
       j, hw->config.filter_def[j], i, rq->hdr->id);
     }
    }
   }

   rc = OCS_HW_RTN_ERROR;

   if (sli_cmd_reg_fcfi(&hw->sli, buf, SLI4_BMBX_SIZE, 0, rq_cfg, 0)) {
    rc = ocs_hw_command(hw, buf, OCS_CMD_POLL, ((void*)0), ((void*)0));
   }

   if (rc != OCS_HW_RTN_SUCCESS) {
    ocs_log_err(hw->os, "FCFI registration failed\n");
    return rc;
   }
   hw->fcf_indicator = ((sli4_cmd_reg_fcfi_t *)buf)->fcfi;
  }

 }





 rc = ocs_hw_reqtag_init(hw);
 if (rc) {
  ocs_log_err(hw->os, "ocs_pool_alloc hw_wq_callback_t failed: %d\n", rc);
  return rc;
 }

 rc = ocs_hw_setup_io(hw);
 if (rc) {
  ocs_log_err(hw->os, "IO allocation failure\n");
  return rc;
 }

 rc = ocs_hw_init_io(hw);
 if (rc) {
  ocs_log_err(hw->os, "IO initialization failure\n");
  return rc;
 }

 ocs_queue_history_init(hw->os, &hw->q_hist);


 hw->linkcfg = OCS_HW_LINKCFG_NA;
 ocs_hw_get_linkcfg(hw, OCS_CMD_POLL, ocs_hw_init_linkcfg_cb, hw);


 if ((hw->sli.if_type == SLI4_IF_TYPE_LANCER_FC_ETH) &&
     (sli_get_medium(&hw->sli) == SLI_LINK_MEDIUM_ETHERNET)) {
  if (ocs_hw_set_eth_license(hw, hw->eth_license)) {

   ocs_log_err(hw->os, "Failed to set ethernet license\n");
  }
 }


 if (SLI4_IF_TYPE_LANCER_FC_ETH == sli_get_if_type(&hw->sli) &&
     ocs_hw_set_dif_seed(hw) != OCS_HW_RTN_SUCCESS) {
  ocs_log_err(hw->os, "Failed to set DIF seed value\n");
  return rc;
 }


 if (SLI4_IF_TYPE_BE3_SKH_PF == sli_get_if_type(&hw->sli) &&
     sli_get_dif_capable(&hw->sli)) {
  rc = ocs_hw_set_dif_mode(hw);
  if (rc != OCS_HW_RTN_SUCCESS) {
   ocs_log_err(hw->os, "Failed to set DIF mode value\n");
   return rc;
  }
 }




 for (i = 0; i < hw->eq_count; i++) {
  sli_queue_arm(&hw->sli, &hw->eq[i], TRUE);
 }




 for (i = 0; i < hw->rq_count; i++) {
  ocs_hw_queue_hash_add(hw->rq_hash, hw->rq[i].id, i);
 }




 for (i = 0; i < hw->wq_count; i++) {
  ocs_hw_queue_hash_add(hw->wq_hash, hw->wq[i].id, i);
 }




 for (i = 0; i < hw->cq_count; i++) {
  ocs_hw_queue_hash_add(hw->cq_hash, hw->cq[i].id, i);
  sli_queue_arm(&hw->sli, &hw->cq[i], TRUE);
 }


 hw->state = OCS_HW_STATE_ACTIVE;


 if (ocs_hw_rqpair_init(hw)) {
  ocs_log_err(hw->os, "WARNING - error initializing RQ pair\n");
 }


 if (hw->config.emulate_tgt_wqe_timeout) {
  ocs_setup_timer(hw->os, &hw->wqe_timer, target_wqe_timer_cb, hw,
    OCS_HW_WQ_TIMER_PERIOD_MS);
 }





 if ((count = ocs_varray_get_count(hw->wq_class_array[1])) > 0) {
  for (i = 0; i < count; i++) {
   hw_wq_t *wq = ocs_varray_iter_next(hw->wq_class_array[1]);
   wq->send_frame_io = ocs_hw_io_alloc(hw);
   if (wq->send_frame_io == ((void*)0)) {
    ocs_log_err(hw->os, "ocs_hw_io_alloc for send_frame_io failed\n");
   }
  }
 } else {
  hw->hw_wq[0]->send_frame_io = ocs_hw_io_alloc(hw);
  if (hw->hw_wq[0]->send_frame_io == ((void*)0)) {
   ocs_log_err(hw->os, "ocs_hw_io_alloc for send_frame_io failed\n");
  }
 }


 ocs_atomic_init(&hw->send_frame_seq_id, 0);


 hw->expiration_logged = 0;
 if(hw->watchdog_timeout) {
  if((hw->watchdog_timeout < 1) || (hw->watchdog_timeout > 65534)) {
   ocs_log_err(hw->os, "watchdog_timeout out of range: Valid range is 1 - 65534\n");
  }else if(!ocs_hw_config_watchdog_timer(hw)) {
   ocs_log_info(hw->os, "watchdog timer configured with timeout = %d seconds \n", hw->watchdog_timeout);
  }
 }

 if (ocs_dma_alloc(hw->os, &hw->domain_dmem, 112, 4)) {
    ocs_log_err(hw->os, "domain node memory allocation fail\n");
    return OCS_HW_RTN_NO_MEMORY;
 }

 if (ocs_dma_alloc(hw->os, &hw->fcf_dmem, OCS_HW_READ_FCF_SIZE, OCS_HW_READ_FCF_SIZE)) {
    ocs_log_err(hw->os, "domain fcf memory allocation fail\n");
    return OCS_HW_RTN_NO_MEMORY;
 }

 if ((0 == hw->loop_map.size) && ocs_dma_alloc(hw->os, &hw->loop_map,
    SLI4_MIN_LOOP_MAP_BYTES, 4)) {
  ocs_log_err(hw->os, "Loop dma alloc failed size:%d \n", hw->loop_map.size);
 }

 return OCS_HW_RTN_SUCCESS;
}
