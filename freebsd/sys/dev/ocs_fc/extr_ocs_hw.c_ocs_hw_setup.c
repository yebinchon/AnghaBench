
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef size_t uint32_t ;
typedef int sli4_port_type_e ;
typedef int prop_buf ;
typedef int ocs_os_handle_t ;
struct TYPE_15__ {scalar_t__ n_eq; scalar_t__ n_cq; scalar_t__ n_rq; scalar_t__ n_wq; scalar_t__ n_mq; int queue_topology; int dif_mode; void* i_only_aab; int auto_xfer_rdy_xri_cnt; int n_io; int rq_default_buffer_size; int auto_xfer_rdy_app_tag_value; int auto_xfer_rdy_app_tag_valid; int auto_xfer_rdy_ref_tag_is_lba; int auto_xfer_rdy_blk_size_chip; scalar_t__ dif_seed; int speed; } ;
struct TYPE_16__ {scalar_t__ use_dif_sec_xri; scalar_t__ override_fcfi; } ;
struct TYPE_17__ {int first_domain_idx; int ulp_start; int ulp_max; int os; TYPE_1__ config; TYPE_9__* qtop; int sli; int sec_hio_wait_list; TYPE_2__ workaround; int * num_qentries; struct TYPE_17__* fcf_index_fcfi; struct TYPE_17__* domains; int io_alloc_failed_count; int io_abort_lock; int io_lock; scalar_t__ cmd_head_count; int cmd_pending; int cmd_head; int cmd_lock; void* hw_setup_called; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
struct TYPE_18__ {scalar_t__* entry_counts; } ;
struct TYPE_14__ {int queue_topology_string; } ;


 size_t ARRAY_SIZE (int *) ;
 int FC_LINK_SPEED_AUTO_16_8_4 ;
 scalar_t__ OCE_HW_MAX_NUM_MRQ_PAIRS ;
 int OCS_HW_AUTO_XFER_RDY_APP_TAG_VALID_DEFAULT ;
 int OCS_HW_AUTO_XFER_RDY_APP_TAG_VALUE_DEFAULT ;
 int OCS_HW_AUTO_XFER_RDY_BLK_SIZE_DEFAULT ;
 int OCS_HW_AUTO_XFER_RDY_REF_TAG_IS_LBA_DEFAULT ;
 int OCS_HW_DIF_MODE_SEPARATE ;
 scalar_t__ OCS_HW_MAX_NUM_CQ ;
 scalar_t__ OCS_HW_MAX_NUM_EQ ;
 scalar_t__ OCS_HW_MAX_NUM_MQ ;
 scalar_t__ OCS_HW_MAX_NUM_WQ ;
 int OCS_HW_RQ_SIZE_PAYLOAD ;
 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 size_t QTOP_CQ ;
 size_t QTOP_EQ ;
 size_t QTOP_MQ ;
 size_t QTOP_RQ ;
 size_t QTOP_WQ ;
 int SLI4_CB_FIP ;
 int SLI4_CB_LINK ;
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ;
 int SLI_RSRC_FCOE_XRI ;
 void* TRUE ;
 TYPE_13__ hw_global ;
 int link ;
 int ocs_atomic_init (int *,int ) ;
 int ocs_command_ctx_t ;
 scalar_t__ ocs_get_property (char*,char*,int) ;
 int ocs_hw_adjust_wqs (TYPE_3__*) ;
 int ocs_hw_cb_fip ;
 int ocs_hw_cb_link ;
 int ocs_hw_io_t ;
 int ocs_hw_link_event_init (TYPE_3__*) ;
 TYPE_9__* ocs_hw_qtop_parse (TYPE_3__*,int ) ;
 int ocs_hw_read_max_dump_size (TYPE_3__*) ;
 int ocs_hw_workaround_setup (TYPE_3__*) ;
 int ocs_instance (int ) ;
 int ocs_list_init (int *,int ,int ) ;
 int ocs_lock_init (int ,int *,char*,int ) ;
 int ocs_log_crit (int ,char*,scalar_t__) ;
 int ocs_log_debug (int ,char*,int,int) ;
 int ocs_log_err (int ,char*,...) ;
 int ocs_log_test (int ,char*) ;
 int ocs_memset (TYPE_3__*,int ,int) ;
 int ocs_strtoul (char*,int ,int ) ;
 int sli_callback (int *,int ,int ,TYPE_3__*) ;
 scalar_t__ sli_get_if_type (int *) ;
 scalar_t__ sli_get_is_dual_ulp_capable (int *) ;
 scalar_t__ sli_get_is_ulp_enabled (int *,int) ;
 int sli_get_max_qentries (int *,size_t) ;
 int sli_get_max_rsrc (int *,int ) ;
 int sli_is_dif_inline_capable (int *) ;
 scalar_t__ sli_setup (int *,int ,int ) ;

ocs_hw_rtn_e
ocs_hw_setup(ocs_hw_t *hw, ocs_os_handle_t os, sli4_port_type_e port_type)
{
 uint32_t i;
 char prop_buf[32];

 if (hw == ((void*)0)) {
  ocs_log_err(os, "bad parameter(s) hw=%p\n", hw);
  return OCS_HW_RTN_ERROR;
 }

 if (hw->hw_setup_called) {



  ocs_hw_workaround_setup(hw);
  return OCS_HW_RTN_SUCCESS;
 }






 ocs_memset(hw, 0, sizeof(ocs_hw_t));

 hw->hw_setup_called = TRUE;

 hw->os = os;

 ocs_lock_init(hw->os, &hw->cmd_lock, "HW_cmd_lock[%d]", ocs_instance(hw->os));
 ocs_list_init(&hw->cmd_head, ocs_command_ctx_t, link);
 ocs_list_init(&hw->cmd_pending, ocs_command_ctx_t, link);
 hw->cmd_head_count = 0;

 ocs_lock_init(hw->os, &hw->io_lock, "HW_io_lock[%d]", ocs_instance(hw->os));
 ocs_lock_init(hw->os, &hw->io_abort_lock, "HW_io_abort_lock[%d]", ocs_instance(hw->os));

 ocs_atomic_init(&hw->io_alloc_failed_count, 0);

 hw->config.speed = FC_LINK_SPEED_AUTO_16_8_4;
 hw->config.dif_seed = 0;
 hw->config.auto_xfer_rdy_blk_size_chip = OCS_HW_AUTO_XFER_RDY_BLK_SIZE_DEFAULT;
 hw->config.auto_xfer_rdy_ref_tag_is_lba = OCS_HW_AUTO_XFER_RDY_REF_TAG_IS_LBA_DEFAULT;
 hw->config.auto_xfer_rdy_app_tag_valid = OCS_HW_AUTO_XFER_RDY_APP_TAG_VALID_DEFAULT;
 hw->config.auto_xfer_rdy_app_tag_value = OCS_HW_AUTO_XFER_RDY_APP_TAG_VALUE_DEFAULT;


 if (sli_setup(&hw->sli, hw->os, port_type)) {
  ocs_log_err(hw->os, "SLI setup failed\n");
  return OCS_HW_RTN_ERROR;
 }

 ocs_memset(hw->domains, 0, sizeof(hw->domains));

 ocs_memset(hw->fcf_index_fcfi, 0, sizeof(hw->fcf_index_fcfi));

 ocs_hw_link_event_init(hw);

 sli_callback(&hw->sli, SLI4_CB_LINK, ocs_hw_cb_link, hw);
 sli_callback(&hw->sli, SLI4_CB_FIP, ocs_hw_cb_fip, hw);





 for (i = 0; i < ARRAY_SIZE(hw->num_qentries); i++) {
  hw->num_qentries[i] = sli_get_max_qentries(&hw->sli, i);
 }




 hw->config.rq_default_buffer_size = OCS_HW_RQ_SIZE_PAYLOAD;
 hw->config.n_io = sli_get_max_rsrc(&hw->sli, SLI_RSRC_FCOE_XRI);
 if (ocs_get_property("auto_xfer_rdy_xri_cnt", prop_buf, sizeof(prop_buf)) == 0) {
  hw->config.auto_xfer_rdy_xri_cnt = ocs_strtoul(prop_buf, 0, 0);
 }


 hw->config.i_only_aab = TRUE;


 ocs_hw_workaround_setup(hw);


 if (hw->workaround.override_fcfi) {
  hw->first_domain_idx = -1;
 }


 if (SLI4_IF_TYPE_LANCER_FC_ETH == sli_get_if_type(&hw->sli)) {
  (void)ocs_hw_read_max_dump_size(hw);
 }


 ocs_hw_adjust_wqs(hw);


 if (! sli_is_dif_inline_capable(&hw->sli)) {
  ocs_log_test(hw->os, "not inline capable, setting mode to separate\n");
  hw->config.dif_mode = OCS_HW_DIF_MODE_SEPARATE;
 }

 if (hw->workaround.use_dif_sec_xri) {
  ocs_list_init(&hw->sec_hio_wait_list, ocs_hw_io_t, link);
 }





 if (sli_get_is_dual_ulp_capable(&hw->sli)) {
  if (sli_get_is_ulp_enabled(&hw->sli, 0) &&
      sli_get_is_ulp_enabled(&hw->sli, 1)) {
   hw->ulp_start = 0;
   hw->ulp_max = 1;
  } else if (sli_get_is_ulp_enabled(&hw->sli, 0)) {
   hw->ulp_start = 0;
   hw->ulp_max = 0;
  } else {
   hw->ulp_start = 1;
   hw->ulp_max = 1;
  }
 } else {
  if (sli_get_is_ulp_enabled(&hw->sli, 0)) {
   hw->ulp_start = 0;
   hw->ulp_max = 0;
  } else {
   hw->ulp_start = 1;
   hw->ulp_max = 1;
  }
 }
 ocs_log_debug(hw->os, "ulp_start %d, ulp_max %d\n",
  hw->ulp_start, hw->ulp_max);
 hw->config.queue_topology = hw_global.queue_topology_string;

 hw->qtop = ocs_hw_qtop_parse(hw, hw->config.queue_topology);

 hw->config.n_eq = hw->qtop->entry_counts[QTOP_EQ];
 hw->config.n_cq = hw->qtop->entry_counts[QTOP_CQ];
 hw->config.n_rq = hw->qtop->entry_counts[QTOP_RQ];
 hw->config.n_wq = hw->qtop->entry_counts[QTOP_WQ];
 hw->config.n_mq = hw->qtop->entry_counts[QTOP_MQ];


 if (hw->config.n_rq > OCE_HW_MAX_NUM_MRQ_PAIRS) {
  ocs_log_crit(hw->os, "Max supported MRQ pairs = %d\n",
    OCE_HW_MAX_NUM_MRQ_PAIRS);
  return OCS_HW_RTN_ERROR;
 }

 if (hw->config.n_eq > OCS_HW_MAX_NUM_EQ) {
  ocs_log_crit(hw->os, "Max supported EQs = %d\n",
    OCS_HW_MAX_NUM_EQ);
  return OCS_HW_RTN_ERROR;
 }

 if (hw->config.n_cq > OCS_HW_MAX_NUM_CQ) {
  ocs_log_crit(hw->os, "Max supported CQs = %d\n",
    OCS_HW_MAX_NUM_CQ);
  return OCS_HW_RTN_ERROR;
 }

 if (hw->config.n_wq > OCS_HW_MAX_NUM_WQ) {
  ocs_log_crit(hw->os, "Max supported WQs = %d\n",
    OCS_HW_MAX_NUM_WQ);
  return OCS_HW_RTN_ERROR;
 }

 if (hw->config.n_mq > OCS_HW_MAX_NUM_MQ) {
  ocs_log_crit(hw->os, "Max supported MQs = %d\n",
    OCS_HW_MAX_NUM_MQ);
  return OCS_HW_RTN_ERROR;
 }

 return OCS_HW_RTN_SUCCESS;
}
