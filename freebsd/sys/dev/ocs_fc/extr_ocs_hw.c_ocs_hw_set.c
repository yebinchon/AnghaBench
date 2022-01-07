
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int n_io; int n_sgl; int topology; int dif_seed; int dif_mode; int rq_default_buffer_size; int auto_xfer_rdy_xri_cnt; int auto_xfer_rdy_size; int auto_xfer_rdy_blk_size_chip; int auto_xfer_rdy_t10_enable; int auto_xfer_rdy_p_type; int auto_xfer_rdy_ref_tag_is_lba; int auto_xfer_rdy_app_tag_valid; int auto_xfer_rdy_app_tag_value; int esoc; int i_only_aab; int emulate_tgt_wqe_timeout; int bounce; int rq_selection_policy; int rr_quanta; int speed; } ;
struct TYPE_10__ {int hw_rq_count; int eth_license; int os; TYPE_3__ config; int sli; TYPE_1__* cq; TYPE_5__** hw_rq; } ;
typedef TYPE_4__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
typedef int ocs_hw_property_e ;
struct TYPE_11__ {TYPE_2__* cq; } ;
typedef TYPE_5__ hw_rq_t ;
struct TYPE_8__ {size_t instance; } ;
struct TYPE_7__ {int proc_limit; } ;


 int FC_LINK_SPEED_10G ;
 int FC_LINK_SPEED_16G ;
 int FC_LINK_SPEED_2G ;
 int FC_LINK_SPEED_32G ;
 int FC_LINK_SPEED_4G ;
 int FC_LINK_SPEED_8G ;
 int FC_LINK_SPEED_AUTO_16_8_4 ;
 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;




 int SLI4_IF_TYPE_LANCER_FC_ETH ;
 int SLI4_READ_CFG_TOPO_FC ;
 int SLI4_READ_CFG_TOPO_FCOE ;
 int SLI4_READ_CFG_TOPO_FC_AL ;
 int SLI4_READ_CFG_TOPO_FC_DA ;
 int SLI4_SGE_MAX_RESERVED ;
 int SLI_LINK_MEDIUM_FC ;
 int SLI_RSRC_FCOE_XRI ;
 int ocs_log_err (int ,char*,int) ;
 int ocs_log_test (int ,char*,...) ;
 int sli_get_if_type (int *) ;
 int sli_get_max_rsrc (int *,int ) ;
 int sli_get_max_sgl (int *) ;
 int sli_get_medium (int *) ;
 int sli_is_dif_inline_capable (int *) ;
 int sli_is_dif_separate_capable (int *) ;
 int sli_set_hlm (int *,int) ;
 int sli_set_sgl_preregister (int *,int) ;
 int sli_set_topology (int *,int ) ;

ocs_hw_rtn_e
ocs_hw_set(ocs_hw_t *hw, ocs_hw_property_e prop, uint32_t value)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;

 switch (prop) {
 case 138:
  if (value > sli_get_max_rsrc(&hw->sli, SLI_RSRC_FCOE_XRI) ||
      value == 0) {
   ocs_log_test(hw->os, "IO value out of range %d vs %d\n",
     value, sli_get_max_rsrc(&hw->sli, SLI_RSRC_FCOE_XRI));
   rc = OCS_HW_RTN_ERROR;
  } else {
   hw->config.n_io = value;
  }
  break;
 case 137:
  value += SLI4_SGE_MAX_RESERVED;
  if (value > sli_get_max_sgl(&hw->sli)) {
   ocs_log_test(hw->os, "SGL value out of range %d vs %d\n",
     value, sli_get_max_sgl(&hw->sli));
   rc = OCS_HW_RTN_ERROR;
  } else {
   hw->config.n_sgl = value;
  }
  break;
 case 131:
  if ((sli_get_medium(&hw->sli) != SLI_LINK_MEDIUM_FC) &&
    (value != 130)) {
   ocs_log_test(hw->os, "unsupported topology=%#x medium=%#x\n",
     value, sli_get_medium(&hw->sli));
   rc = OCS_HW_RTN_ERROR;
   break;
  }

  switch (value) {
  case 130:
   if (sli_get_medium(&hw->sli) == SLI_LINK_MEDIUM_FC) {
    sli_set_topology(&hw->sli, SLI4_READ_CFG_TOPO_FC);
   } else {
    sli_set_topology(&hw->sli, SLI4_READ_CFG_TOPO_FCOE);
   }
   break;
  case 128:
   sli_set_topology(&hw->sli, SLI4_READ_CFG_TOPO_FC_DA);
   break;
  case 129:
   sli_set_topology(&hw->sli, SLI4_READ_CFG_TOPO_FC_AL);
   break;
  default:
   ocs_log_test(hw->os, "unsupported topology %#x\n", value);
   rc = OCS_HW_RTN_ERROR;
  }
  hw->config.topology = value;
  break;
 case 139:
  if (sli_get_medium(&hw->sli) != SLI_LINK_MEDIUM_FC) {
   switch (value) {
   case 0:
   case 10000:
    hw->config.speed = FC_LINK_SPEED_10G;
    break;
   default:
    ocs_log_test(hw->os, "unsupported speed=%#x medium=%#x\n",
      value, sli_get_medium(&hw->sli));
    rc = OCS_HW_RTN_ERROR;
   }
   break;
  }

  switch (value) {
  case 0:
   hw->config.speed = FC_LINK_SPEED_AUTO_16_8_4;
   break;
  case 2000:
   hw->config.speed = FC_LINK_SPEED_2G;
   break;
  case 4000:
   hw->config.speed = FC_LINK_SPEED_4G;
   break;
  case 8000:
   hw->config.speed = FC_LINK_SPEED_8G;
   break;
  case 16000:
   hw->config.speed = FC_LINK_SPEED_16G;
   break;
  case 32000:
   hw->config.speed = FC_LINK_SPEED_32G;
   break;
  default:
   ocs_log_test(hw->os, "unsupported speed %d\n", value);
   rc = OCS_HW_RTN_ERROR;
  }
  break;
 case 144:

  if (SLI4_IF_TYPE_LANCER_FC_ETH != sli_get_if_type(&hw->sli)) {
   ocs_log_test(hw->os, "DIF seed not supported for this device\n");
   rc = OCS_HW_RTN_ERROR;
  } else {
   hw->config.dif_seed = value;
  }
  break;
 case 147:
  switch (value) {
  case 146:






   if (sli_is_dif_inline_capable(&hw->sli)) {
    hw->config.dif_mode = value;
   } else {
    ocs_log_test(hw->os, "chip does not support DIF inline\n");
    rc = OCS_HW_RTN_ERROR;
   }
   break;
  case 145:

   if (sli_is_dif_separate_capable(&hw->sli)) {
    hw->config.dif_mode = value;
   } else {
    ocs_log_test(hw->os, "chip does not support DIF separate\n");
    rc = OCS_HW_RTN_ERROR;
   }
  }
  break;
 case 134: {
  hw_rq_t *rq;
  uint32_t i;


  for (i = 0; i < hw->hw_rq_count; i++) {
   rq = hw->hw_rq[i];
   hw->cq[rq->cq->instance].proc_limit = value;
  }
  break;
 }
 case 135:
  hw->config.rq_default_buffer_size = value;
  break;
 case 149:
  hw->config.auto_xfer_rdy_xri_cnt = value;
  break;
 case 151:
  hw->config.auto_xfer_rdy_size = value;
  break;
 case 154:
  switch (value) {
  case 512:
   hw->config.auto_xfer_rdy_blk_size_chip = 0;
   break;
  case 1024:
   hw->config.auto_xfer_rdy_blk_size_chip = 1;
   break;
  case 2048:
   hw->config.auto_xfer_rdy_blk_size_chip = 2;
   break;
  case 4096:
   hw->config.auto_xfer_rdy_blk_size_chip = 3;
   break;
  case 520:
   hw->config.auto_xfer_rdy_blk_size_chip = 4;
   break;
  default:
   ocs_log_err(hw->os, "Invalid block size %d\n",
        value);
   rc = OCS_HW_RTN_ERROR;
  }
  break;
 case 150:
  hw->config.auto_xfer_rdy_t10_enable = value;
  break;
 case 153:
  hw->config.auto_xfer_rdy_p_type = value;
  break;
 case 152:
  hw->config.auto_xfer_rdy_ref_tag_is_lba = value;
  break;
 case 156:
  hw->config.auto_xfer_rdy_app_tag_valid = value;
  break;
 case 155:
  hw->config.auto_xfer_rdy_app_tag_value = value;
  break;
 case 157:
  hw->config.esoc = value;
  break;
 case 140:
  rc = sli_set_hlm(&hw->sli, value);
  break;
 case 136:
  rc = sli_set_sgl_preregister(&hw->sli, value);
  break;
 case 141:
  hw->eth_license = value;
  break;
 case 143:
  hw->config.i_only_aab = value;
  break;
 case 142:
  hw->config.emulate_tgt_wqe_timeout = value;
  break;
 case 148:
  hw->config.bounce = value;
  break;
 case 133:
  hw->config.rq_selection_policy = value;
  break;
 case 132:
  hw->config.rr_quanta = value;
  break;
 default:
  ocs_log_test(hw->os, "unsupported property %#x\n", prop);
  rc = OCS_HW_RTN_ERROR;
 }

 return rc;
}
