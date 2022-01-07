
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
typedef void* uint16_t ;
typedef int sli4_t ;
struct TYPE_8__ {int rq_id; int type_match; int type_mask; int r_ctl_match; int r_ctl_mask; } ;
typedef TYPE_3__ sli4_cmd_rq_cfg_t ;
struct TYPE_6__ {int command; } ;
struct TYPE_9__ {void* num_mrq_pairs; scalar_t__ mrq_filter_bitmask; scalar_t__ rq_selection_policy; int rq_id_0; int rq_id_1; int rq_id_2; int rq_id_3; TYPE_2__* rq_cfg; scalar_t__ mode; void* vlan_tag; int vv; void* fcf_index; TYPE_1__ hdr; } ;
typedef TYPE_4__ sli4_cmd_reg_fcfi_mrq_t ;
typedef int int32_t ;
struct TYPE_7__ {int type_match; int type_mask; int r_ctl_match; int r_ctl_mask; } ;


 size_t SLI4_CMD_REG_FCFI_NUM_RQ_CFG ;
 scalar_t__ SLI4_CMD_REG_FCFI_SET_FCFI_MODE ;
 int SLI4_MBOX_COMMAND_REG_FCFI_MRQ ;
 int TRUE ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_reg_fcfi_mrq(sli4_t *sli4, void *buf, size_t size, uint8_t mode,
       uint16_t fcf_index, uint16_t vlan_id, uint8_t rq_selection_policy,
       uint8_t mrq_bit_mask, uint16_t num_mrqs,
       sli4_cmd_rq_cfg_t rq_cfg[SLI4_CMD_REG_FCFI_NUM_RQ_CFG])
{
 sli4_cmd_reg_fcfi_mrq_t *reg_fcfi_mrq = buf;
 uint32_t i;

 ocs_memset(buf, 0, size);

 reg_fcfi_mrq->hdr.command = SLI4_MBOX_COMMAND_REG_FCFI_MRQ;
 if (mode == SLI4_CMD_REG_FCFI_SET_FCFI_MODE) {
  reg_fcfi_mrq->fcf_index = fcf_index;
  if (vlan_id) {
   reg_fcfi_mrq->vv = TRUE;
   reg_fcfi_mrq->vlan_tag = vlan_id;
  }
  goto done;
 }

 reg_fcfi_mrq->mode = mode;
 for (i = 0; i < SLI4_CMD_REG_FCFI_NUM_RQ_CFG; i++) {
  reg_fcfi_mrq->rq_cfg[i].r_ctl_mask = rq_cfg[i].r_ctl_mask;
  reg_fcfi_mrq->rq_cfg[i].r_ctl_match = rq_cfg[i].r_ctl_match;
  reg_fcfi_mrq->rq_cfg[i].type_mask = rq_cfg[i].type_mask;
  reg_fcfi_mrq->rq_cfg[i].type_match = rq_cfg[i].type_match;

  switch(i) {
  case 3: reg_fcfi_mrq->rq_id_3 = rq_cfg[i].rq_id; break;
  case 2: reg_fcfi_mrq->rq_id_2 = rq_cfg[i].rq_id; break;
  case 1: reg_fcfi_mrq->rq_id_1 = rq_cfg[i].rq_id; break;
  case 0: reg_fcfi_mrq->rq_id_0 = rq_cfg[i].rq_id; break;
  }
 }

 reg_fcfi_mrq->rq_selection_policy = rq_selection_policy;
 reg_fcfi_mrq->mrq_filter_bitmask = mrq_bit_mask;
 reg_fcfi_mrq->num_mrq_pairs = num_mrqs;
done:
 return sizeof(sli4_cmd_reg_fcfi_mrq_t);
}
