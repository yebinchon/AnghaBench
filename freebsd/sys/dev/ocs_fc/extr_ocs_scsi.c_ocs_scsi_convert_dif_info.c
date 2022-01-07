
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int hw; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_10__ {int dif_oper; int blk_size; int disable_app_ref_ffff; int disable_app_ffff; int dif_separate; int check_guard; int check_app_tag; int check_ref_tag; int app_tag; int ref_tag; } ;
typedef TYPE_2__ ocs_scsi_dif_info_t ;
struct TYPE_11__ {scalar_t__ dif; int auto_incr_ref_tag; int dif_seed; int disable_app_ref_ffff; int disable_app_ffff; int dif_separate; int check_guard; int check_app_tag; int check_ref_tag; int app_tag_cmp; int ref_tag_cmp; int app_tag_repl; int ref_tag_repl; int blk_size; int dif_oper; } ;
typedef TYPE_3__ ocs_hw_dif_info_t ;
typedef int int32_t ;


 int OCS_HW_DIF_BK_SIZE_1024 ;
 int OCS_HW_DIF_BK_SIZE_2048 ;
 int OCS_HW_DIF_BK_SIZE_4096 ;
 int OCS_HW_DIF_BK_SIZE_4104 ;
 int OCS_HW_DIF_BK_SIZE_512 ;
 int OCS_HW_DIF_BK_SIZE_520 ;
 int OCS_HW_DIF_BK_SIZE_NA ;
 int OCS_HW_DIF_OPER_DISABLED ;
 int OCS_HW_DIF_SEED ;
 int OCS_HW_SGE_DIF_OP_IN_CHKSUM_OUT_CHKSUM ;
 int OCS_HW_SGE_DIF_OP_IN_CHKSUM_OUT_CRC ;
 int OCS_HW_SGE_DIF_OP_IN_CHKSUM_OUT_NODIF ;
 int OCS_HW_SGE_DIF_OP_IN_CRC_OUT_CHKSUM ;
 int OCS_HW_SGE_DIF_OP_IN_CRC_OUT_CRC ;
 int OCS_HW_SGE_DIF_OP_IN_CRC_OUT_NODIF ;
 int OCS_HW_SGE_DIF_OP_IN_NODIF_OUT_CHKSUM ;
 int OCS_HW_SGE_DIF_OP_IN_NODIF_OUT_CRC ;
 int OCS_HW_SGE_DIF_OP_IN_RAW_OUT_RAW ;
 scalar_t__ SLI4_DIF_INSERT ;
 void* SLI4_DIF_PASS_THROUGH ;
 void* SLI4_DIF_STRIP ;
 int ocs_hw_get (int *,int ,int *) ;
 int ocs_log_test (TYPE_1__*,char*,int) ;
 int ocs_memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int32_t
ocs_scsi_convert_dif_info(ocs_t *ocs, ocs_scsi_dif_info_t *scsi_dif_info, ocs_hw_dif_info_t *hw_dif_info)
{
 uint32_t dif_seed;
 ocs_memset(hw_dif_info, 0, sizeof(ocs_hw_dif_info_t));

 if (scsi_dif_info == ((void*)0)) {
  hw_dif_info->dif_oper = OCS_HW_DIF_OPER_DISABLED;
  hw_dif_info->blk_size = OCS_HW_DIF_BK_SIZE_NA;
  return 0;
 }


 switch(scsi_dif_info->dif_oper) {
 case 129:
  hw_dif_info->dif_oper = OCS_HW_SGE_DIF_OP_IN_NODIF_OUT_CRC;
  hw_dif_info->dif = SLI4_DIF_INSERT;
  break;
 case 131:
  hw_dif_info->dif_oper = OCS_HW_SGE_DIF_OP_IN_CRC_OUT_NODIF;
  hw_dif_info->dif = SLI4_DIF_STRIP;
  break;
 case 130:
  hw_dif_info->dif_oper = OCS_HW_SGE_DIF_OP_IN_NODIF_OUT_CHKSUM;
  hw_dif_info->dif = SLI4_DIF_INSERT;
  break;
 case 134:
  hw_dif_info->dif_oper = OCS_HW_SGE_DIF_OP_IN_CHKSUM_OUT_NODIF;
  hw_dif_info->dif = SLI4_DIF_STRIP;
  break;
 case 132:
  hw_dif_info->dif_oper = OCS_HW_SGE_DIF_OP_IN_CRC_OUT_CRC;
  hw_dif_info->dif = SLI4_DIF_PASS_THROUGH;
  break;
 case 136:
  hw_dif_info->dif_oper = OCS_HW_SGE_DIF_OP_IN_CHKSUM_OUT_CHKSUM;
  hw_dif_info->dif = SLI4_DIF_PASS_THROUGH;
  break;
 case 133:
  hw_dif_info->dif_oper = OCS_HW_SGE_DIF_OP_IN_CRC_OUT_CHKSUM;
  hw_dif_info->dif = SLI4_DIF_PASS_THROUGH;
  break;
 case 135:
  hw_dif_info->dif_oper = OCS_HW_SGE_DIF_OP_IN_CHKSUM_OUT_CRC;
  hw_dif_info->dif = SLI4_DIF_PASS_THROUGH;
  break;
 case 128:
  hw_dif_info->dif_oper = OCS_HW_SGE_DIF_OP_IN_RAW_OUT_RAW;
  hw_dif_info->dif = SLI4_DIF_PASS_THROUGH;
  break;
 default:
  ocs_log_test(ocs, "unhandled SCSI DIF operation %d\n",
        scsi_dif_info->dif_oper);
  return -1;
 }

 switch(scsi_dif_info->blk_size) {
 case 138:
  hw_dif_info->blk_size = OCS_HW_DIF_BK_SIZE_512;
  break;
 case 142:
  hw_dif_info->blk_size = OCS_HW_DIF_BK_SIZE_1024;
  break;
 case 141:
  hw_dif_info->blk_size = OCS_HW_DIF_BK_SIZE_2048;
  break;
 case 140:
  hw_dif_info->blk_size = OCS_HW_DIF_BK_SIZE_4096;
  break;
 case 137:
  hw_dif_info->blk_size = OCS_HW_DIF_BK_SIZE_520;
  break;
 case 139:
  hw_dif_info->blk_size = OCS_HW_DIF_BK_SIZE_4104;
  break;
 default:
  ocs_log_test(ocs, "unhandled SCSI DIF block size %d\n",
        scsi_dif_info->blk_size);
  return -1;
 }



 if (hw_dif_info->dif == SLI4_DIF_INSERT ) {
  hw_dif_info->ref_tag_repl = scsi_dif_info->ref_tag;
  hw_dif_info->app_tag_repl = scsi_dif_info->app_tag;
 } else {
  hw_dif_info->ref_tag_cmp = scsi_dif_info->ref_tag;
  hw_dif_info->app_tag_cmp = scsi_dif_info->app_tag;
 }

 hw_dif_info->check_ref_tag = scsi_dif_info->check_ref_tag;
 hw_dif_info->check_app_tag = scsi_dif_info->check_app_tag;
 hw_dif_info->check_guard = scsi_dif_info->check_guard;
 hw_dif_info->auto_incr_ref_tag = 1;
 hw_dif_info->dif_separate = scsi_dif_info->dif_separate;
 hw_dif_info->disable_app_ffff = scsi_dif_info->disable_app_ffff;
 hw_dif_info->disable_app_ref_ffff = scsi_dif_info->disable_app_ref_ffff;

 ocs_hw_get(&ocs->hw, OCS_HW_DIF_SEED, &dif_seed);
 hw_dif_info->dif_seed = dif_seed;

 return 0;
}
