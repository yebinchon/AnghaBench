
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_32__ {int if_type; } ;
struct TYPE_29__ {int n_io; int n_sgl; int rq_default_buffer_size; int auto_xfer_rdy_xri_cnt; int auto_xfer_rdy_size; int auto_xfer_rdy_t10_enable; int auto_xfer_rdy_p_type; int auto_xfer_rdy_ref_tag_is_lba; int auto_xfer_rdy_app_tag_valid; int auto_xfer_rdy_app_tag_value; int topology; int speed; int dif_seed; int dif_mode; int i_only_aab; int emulate_tgt_wqe_timeout; int rq_selection_policy; int rr_quanta; int auto_xfer_rdy_blk_size_chip; } ;
struct TYPE_28__ {int disable_ar_tgt_dif; int ignore_send_frame; int sglc_misreported; } ;
struct TYPE_30__ {int speed; int topology; } ;
struct TYPE_31__ {int* num_qentries; int dump_size; int linkcfg; int eth_license; int os; TYPE_5__ sli; TYPE_2__ config; TYPE_1__ workaround; TYPE_3__ link; } ;
typedef TYPE_4__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
typedef int ocs_hw_property_e ;
typedef int int32_t ;


 int FALSE ;
 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;







 int OCS_HW_TOPOLOGY_LOOP ;
 int OCS_HW_TOPOLOGY_NONE ;
 int OCS_HW_TOPOLOGY_NPORT ;

 int SLI4_IF_TYPE_BE3_SKH_PF ;
 int SLI4_IF_TYPE_BE3_SKH_VF ;
 int SLI4_IF_TYPE_LANCER_FC_ETH ;
 int SLI4_SGE_MAX_RESERVED ;



 size_t SLI_QTYPE_RQ ;
 int SLI_RSRC_FCOE_RPI ;
 int SLI_RSRC_FCOE_VPI ;
 int SLI_RSRC_FCOE_XRI ;
 int TRUE ;
 int ocs_hw_get_fw_timed_out (TYPE_4__*) ;
 int ocs_hw_get_num_chutes (TYPE_4__*) ;
 int ocs_log_test (int ,char*,int) ;
 int sli_dump_is_present (TYPE_5__*) ;
 int sli_dump_is_ready (TYPE_5__*) ;
 int sli_fw_error_status (TYPE_5__*) ;
 int sli_fw_ready (TYPE_5__*) ;
 int sli_get_auto_xfer_rdy_capable (TYPE_5__*) ;
 int sli_get_dif_capable (TYPE_5__*) ;
 int sli_get_hlm_capable (TYPE_5__*) ;
 int sli_get_hw_revision (TYPE_5__*,int) ;
 int sli_get_if_type (TYPE_5__*) ;
 int sli_get_is_sgl_chaining_capable (TYPE_5__*) ;
 int sli_get_link_module_type (TYPE_5__*) ;
 int sli_get_max_rsrc (TYPE_5__*,int ) ;
 int sli_get_max_sge (TYPE_5__*) ;
 int sli_get_max_sgl (TYPE_5__*) ;
 int sli_get_sgl_preregister (TYPE_5__*) ;
 int sli_get_sgl_preregister_required (TYPE_5__*) ;
 int sli_get_sli_family (TYPE_5__*) ;
 int sli_get_sli_rev (TYPE_5__*) ;
 int sli_get_vpd_len (TYPE_5__*) ;
 int sli_reset_required (TYPE_5__*) ;

ocs_hw_rtn_e
ocs_hw_get(ocs_hw_t *hw, ocs_hw_property_e prop, uint32_t *value)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
 int32_t tmp;

 if (!value) {
  return OCS_HW_RTN_ERROR;
 }

 *value = 0;

 switch (prop) {
 case 145:
  *value = hw->config.n_io;
  break;
 case 144:
  *value = (hw->config.n_sgl - SLI4_SGE_MAX_RESERVED);
  break;
 case 152:
  *value = sli_get_max_rsrc(&hw->sli, SLI_RSRC_FCOE_XRI);
  break;
 case 151:
  *value = sli_get_max_rsrc(&hw->sli, SLI_RSRC_FCOE_RPI);
  break;
 case 150:
  *value = hw->num_qentries[SLI_QTYPE_RQ];
  break;
 case 141:
  *value = hw->config.rq_default_buffer_size;
  break;
 case 182:
  *value = sli_get_auto_xfer_rdy_capable(&hw->sli);
  break;
 case 177:
  *value = hw->config.auto_xfer_rdy_xri_cnt;
  break;
 case 179:
  *value = hw->config.auto_xfer_rdy_size;
  break;
 case 183:
  switch (hw->config.auto_xfer_rdy_blk_size_chip) {
  case 0:
   *value = 512;
   break;
  case 1:
   *value = 1024;
   break;
  case 2:
   *value = 2048;
   break;
  case 3:
   *value = 4096;
   break;
  case 4:
   *value = 520;
   break;
  default:
   *value = 0;
   rc = OCS_HW_RTN_ERROR;
   break;
  }
  break;
 case 178:
  *value = hw->config.auto_xfer_rdy_t10_enable;
  break;
 case 181:
  *value = hw->config.auto_xfer_rdy_p_type;
  break;
 case 180:
  *value = hw->config.auto_xfer_rdy_ref_tag_is_lba;
  break;
 case 185:
  *value = hw->config.auto_xfer_rdy_app_tag_valid;
  break;
 case 184:
  *value = hw->config.auto_xfer_rdy_app_tag_value;
  break;
 case 149:
  *value = sli_get_max_sge(&hw->sli);
  break;
 case 148:
  *value = sli_get_max_sgl(&hw->sli);
  break;
 case 132:




  if (hw->link.speed == 0) {
   *value = OCS_HW_TOPOLOGY_NONE;
   break;
  }
  switch (hw->link.topology) {
  case 128:
   *value = OCS_HW_TOPOLOGY_NPORT;
   break;
  case 130:
   *value = OCS_HW_TOPOLOGY_LOOP;
   break;
  case 129:
   *value = OCS_HW_TOPOLOGY_NONE;
   break;
  default:
   ocs_log_test(hw->os, "unsupported topology %#x\n", hw->link.topology);
   rc = OCS_HW_RTN_ERROR;
   break;
  }
  break;
 case 176:
  *value = hw->config.topology;
  break;
 case 153:
  *value = hw->link.speed;
  break;
 case 155:
  switch (hw->config.speed) {
  case 192:
   *value = 10000;
   break;
  case 186:
   *value = 0;
   break;
  case 190:
   *value = 2000;
   break;
  case 188:
   *value = 4000;
   break;
  case 187:
   *value = 8000;
   break;
  case 191:
   *value = 16000;
   break;
  case 189:
   *value = 32000;
   break;
  default:
   ocs_log_test(hw->os, "unsupported speed %#x\n", hw->config.speed);
   rc = OCS_HW_RTN_ERROR;
   break;
  }
  break;
 case 157:
  *value = sli_get_if_type(&hw->sli);
  break;
 case 133:
  *value = sli_get_sli_rev(&hw->sli);
  break;
 case 134:
  *value = sli_get_sli_family(&hw->sli);
  break;
 case 175:
  *value = sli_get_dif_capable(&hw->sli);
  break;
 case 172:
  *value = hw->config.dif_seed;
  break;
 case 174:
  *value = hw->config.dif_mode;
  break;
 case 173:

  if (hw->sli.if_type == SLI4_IF_TYPE_LANCER_FC_ETH) {
   *value = TRUE;
  } else {
   *value = FALSE;
  }
  break;
 case 170:
  *value = hw->dump_size;
  break;
 case 168:
  *value = sli_dump_is_ready(&hw->sli);
  break;
 case 169:
  *value = sli_dump_is_present(&hw->sli);
  break;
 case 142:
  tmp = sli_reset_required(&hw->sli);
  if(tmp < 0) {
   rc = OCS_HW_RTN_ERROR;
  } else {
   *value = tmp;
  }
  break;
 case 164:
  *value = sli_fw_error_status(&hw->sli);
  break;
 case 163:
  *value = sli_fw_ready(&hw->sli);
  break;
 case 162:
  *value = ocs_hw_get_fw_timed_out(hw);
  break;
 case 161:
  *value = sli_get_hlm_capable(&hw->sli);
  break;
 case 143:
  *value = sli_get_sgl_preregister_required(&hw->sli);
  break;
 case 160:
  *value = sli_get_hw_revision(&hw->sli, 0);
  break;
 case 159:
  *value = sli_get_hw_revision(&hw->sli, 1);
  break;
 case 158:
  *value = sli_get_hw_revision(&hw->sli, 2);
  break;
 case 156:
  *value = hw->linkcfg;
  break;
 case 165:
  *value = hw->eth_license;
  break;
 case 154:
  *value = sli_get_link_module_type(&hw->sli);
  break;
 case 146:
  *value = ocs_hw_get_num_chutes(hw);
  break;
 case 171:
  *value = hw->workaround.disable_ar_tgt_dif;
  break;
 case 167:
  *value = hw->config.i_only_aab;
  break;
 case 166:
  *value = hw->config.emulate_tgt_wqe_timeout;
  break;
 case 131:
  *value = sli_get_vpd_len(&hw->sli);
  break;
 case 136:
  *value = sli_get_is_sgl_chaining_capable(&hw->sli) || hw->workaround.sglc_misreported;
  break;
 case 137:





  *value = FALSE;
  if ((sli_get_is_sgl_chaining_capable(&hw->sli) || hw->workaround.sglc_misreported) &&
      !sli_get_sgl_preregister(&hw->sli) &&
      SLI4_IF_TYPE_LANCER_FC_ETH == sli_get_if_type(&hw->sli)) {
   *value = TRUE;
  }

  if ((sli_get_is_sgl_chaining_capable(&hw->sli) || hw->workaround.sglc_misreported) &&
      sli_get_sgl_preregister(&hw->sli) &&
      ((SLI4_IF_TYPE_BE3_SKH_PF == sli_get_if_type(&hw->sli)) ||
   (SLI4_IF_TYPE_BE3_SKH_VF == sli_get_if_type(&hw->sli)))) {
   *value = TRUE;
  }
  break;
 case 135:

  *value = ((sli_get_is_sgl_chaining_capable(&hw->sli) || hw->workaround.sglc_misreported) &&
     (SLI4_IF_TYPE_LANCER_FC_ETH == sli_get_if_type(&hw->sli)));
  break;
 case 138:
  if (hw->workaround.ignore_send_frame) {
   *value = 0;
  } else {

   *value = sli_get_if_type(&hw->sli) == SLI4_IF_TYPE_LANCER_FC_ETH;
  }
  break;
 case 140:
  *value = hw->config.rq_selection_policy;
  break;
 case 139:
  *value = hw->config.rr_quanta;
  break;
 case 147:
  *value = sli_get_max_rsrc(&hw->sli, SLI_RSRC_FCOE_VPI);
  break;
 default:
  ocs_log_test(hw->os, "unsupported property %#x\n", prop);
  rc = OCS_HW_RTN_ERROR;
 }

 return rc;
}
