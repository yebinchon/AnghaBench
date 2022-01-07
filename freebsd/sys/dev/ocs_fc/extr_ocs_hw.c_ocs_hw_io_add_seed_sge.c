
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int last; } ;
typedef TYPE_3__ sli4_sge_t ;
struct TYPE_15__ {void* dif_op_tx; void* dif_op_rx; int new_ref_tag; int check_crc; int check_ref_tag; int check_app_tag; int auto_incr_ref_tag; int dif_blk_size; int app_tag_cmp; int sge_type; int at; int atrt; int repl_app_tag; int app_tag_repl; int ref_tag_repl; int ref_tag_cmp; } ;
typedef TYPE_4__ sli4_diseed_sge_t ;
struct TYPE_13__ {scalar_t__ if_type; } ;
struct TYPE_16__ {int * os; TYPE_2__ sli; } ;
typedef TYPE_5__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
struct TYPE_17__ {scalar_t__ type; scalar_t__ n_sge; TYPE_1__* sgl; } ;
typedef TYPE_6__ ocs_hw_io_t ;
struct TYPE_18__ {int dif_oper; int repl_ref_tag; int check_guard; int check_ref_tag; int check_app_tag; int auto_incr_ref_tag; int blk_size; int app_tag_cmp; scalar_t__ dif_separate; int disable_app_ffff; int disable_app_ref_ffff; int repl_app_tag; int app_tag_repl; int ref_tag_repl; int ref_tag_cmp; } ;
typedef TYPE_7__ ocs_hw_dif_info_t ;
struct TYPE_12__ {TYPE_3__* virt; } ;


 int FALSE ;
 int OCS_HW_DIF_OPER_DISABLED ;
 scalar_t__ OCS_HW_IO_INITIATOR_READ ;
 scalar_t__ OCS_HW_IO_TARGET_WRITE ;
 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ;
 void* SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_CHKSUM ;
 void* SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_CRC ;
 void* SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_NODIF ;
 void* SLI4_SGE_DIF_OP_IN_CRC_OUT_CHKSUM ;
 void* SLI4_SGE_DIF_OP_IN_CRC_OUT_CRC ;
 void* SLI4_SGE_DIF_OP_IN_CRC_OUT_NODIF ;
 void* SLI4_SGE_DIF_OP_IN_NODIF_OUT_CHKSUM ;
 void* SLI4_SGE_DIF_OP_IN_NODIF_OUT_CRC ;
 void* SLI4_SGE_DIF_OP_IN_RAW_OUT_RAW ;
 int SLI4_SGE_TYPE_DISEED ;
 int SLI4_SGE_TYPE_SKIP ;
 int TRUE ;
 int ocs_log_err (int *,char*,...) ;
 int ocs_memset (TYPE_3__*,int ,int) ;

ocs_hw_rtn_e
ocs_hw_io_add_seed_sge(ocs_hw_t *hw, ocs_hw_io_t *io, ocs_hw_dif_info_t *dif_info)
{
 sli4_sge_t *data = ((void*)0);
 sli4_diseed_sge_t *dif_seed;


 if ((dif_info == ((void*)0)) || (dif_info->dif_oper == OCS_HW_DIF_OPER_DISABLED)) {
  return OCS_HW_RTN_SUCCESS;
 }

 if (!hw || !io) {
  ocs_log_err(hw ? hw->os : ((void*)0), "bad parameter hw=%p io=%p dif_info=%p\n",
       hw, io, dif_info);
  return OCS_HW_RTN_ERROR;
 }

 data = io->sgl->virt;
 data += io->n_sge;


 ocs_memset(data, 0, sizeof(sli4_diseed_sge_t));
 dif_seed = (sli4_diseed_sge_t *)data;
 dif_seed->ref_tag_cmp = dif_info->ref_tag_cmp;
 dif_seed->ref_tag_repl = dif_info->ref_tag_repl;
 dif_seed->app_tag_repl = dif_info->app_tag_repl;
 dif_seed->repl_app_tag = dif_info->repl_app_tag;
 if (SLI4_IF_TYPE_LANCER_FC_ETH != hw->sli.if_type) {
  dif_seed->atrt = dif_info->disable_app_ref_ffff;
  dif_seed->at = dif_info->disable_app_ffff;
 }
 dif_seed->sge_type = SLI4_SGE_TYPE_DISEED;

 if (((io->type == OCS_HW_IO_TARGET_WRITE) || (io->type == OCS_HW_IO_INITIATOR_READ)) &&
  (SLI4_IF_TYPE_LANCER_FC_ETH != hw->sli.if_type) && dif_info->dif_separate) {
  dif_seed->sge_type = SLI4_SGE_TYPE_SKIP;
 }

 dif_seed->app_tag_cmp = dif_info->app_tag_cmp;
 dif_seed->dif_blk_size = dif_info->blk_size;
 dif_seed->auto_incr_ref_tag = dif_info->auto_incr_ref_tag;
 dif_seed->check_app_tag = dif_info->check_app_tag;
 dif_seed->check_ref_tag = dif_info->check_ref_tag;
 dif_seed->check_crc = dif_info->check_guard;
 dif_seed->new_ref_tag = dif_info->repl_ref_tag;

 switch(dif_info->dif_oper) {
 case 129:
  dif_seed->dif_op_rx = SLI4_SGE_DIF_OP_IN_NODIF_OUT_CRC;
  dif_seed->dif_op_tx = SLI4_SGE_DIF_OP_IN_NODIF_OUT_CRC;
  break;
 case 131:
  dif_seed->dif_op_rx = SLI4_SGE_DIF_OP_IN_CRC_OUT_NODIF;
  dif_seed->dif_op_tx = SLI4_SGE_DIF_OP_IN_CRC_OUT_NODIF;
  break;
 case 130:
  dif_seed->dif_op_rx = SLI4_SGE_DIF_OP_IN_NODIF_OUT_CHKSUM;
  dif_seed->dif_op_tx = SLI4_SGE_DIF_OP_IN_NODIF_OUT_CHKSUM;
  break;
 case 134:
  dif_seed->dif_op_rx = SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_NODIF;
  dif_seed->dif_op_tx = SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_NODIF;
  break;
 case 132:
  dif_seed->dif_op_rx = SLI4_SGE_DIF_OP_IN_CRC_OUT_CRC;
  dif_seed->dif_op_tx = SLI4_SGE_DIF_OP_IN_CRC_OUT_CRC;
  break;
 case 136:
  dif_seed->dif_op_rx = SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_CHKSUM;
  dif_seed->dif_op_tx = SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_CHKSUM;
  break;
 case 133:
  dif_seed->dif_op_rx = SLI4_SGE_DIF_OP_IN_CRC_OUT_CHKSUM;
  dif_seed->dif_op_tx = SLI4_SGE_DIF_OP_IN_CRC_OUT_CHKSUM;
  break;
 case 135:
  dif_seed->dif_op_rx = SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_CRC;
  dif_seed->dif_op_tx = SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_CRC;
  break;
 case 128:
  dif_seed->dif_op_rx = SLI4_SGE_DIF_OP_IN_RAW_OUT_RAW;
  dif_seed->dif_op_tx = SLI4_SGE_DIF_OP_IN_RAW_OUT_RAW;
  break;
 default:
  ocs_log_err(hw->os, "unsupported DIF operation %#x\n",
       dif_info->dif_oper);
  return OCS_HW_RTN_ERROR;
 }




 data->last = TRUE;
 if (io->n_sge) {
  data[-1].last = FALSE;
 }

 io->n_sge++;

 return OCS_HW_RTN_SUCCESS;
}
