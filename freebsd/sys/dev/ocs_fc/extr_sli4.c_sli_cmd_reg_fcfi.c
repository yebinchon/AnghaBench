
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* uint16_t ;
typedef int sli4_t ;
struct TYPE_8__ {int type_match; int type_mask; int r_ctl_match; int r_ctl_mask; int rq_id; } ;
typedef TYPE_3__ sli4_cmd_rq_cfg_t ;
struct TYPE_6__ {int command; } ;
struct TYPE_9__ {void* vlan_tag; int vv; TYPE_2__* rq_cfg; int rq_id_3; int rq_id_2; int rq_id_1; int rq_id_0; void* fcf_index; TYPE_1__ hdr; } ;
typedef TYPE_4__ sli4_cmd_reg_fcfi_t ;
typedef int int32_t ;
struct TYPE_7__ {int type_match; int type_mask; int r_ctl_match; int r_ctl_mask; } ;


 int SLI4_CMD_REG_FCFI_NUM_RQ_CFG ;
 int SLI4_MBOX_COMMAND_REG_FCFI ;
 int TRUE ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_reg_fcfi(sli4_t *sli4, void *buf, size_t size, uint16_t index, sli4_cmd_rq_cfg_t rq_cfg[SLI4_CMD_REG_FCFI_NUM_RQ_CFG], uint16_t vlan_id)
{
 sli4_cmd_reg_fcfi_t *reg_fcfi = buf;
 uint32_t i;

 ocs_memset(buf, 0, size);

 reg_fcfi->hdr.command = SLI4_MBOX_COMMAND_REG_FCFI;

 reg_fcfi->fcf_index = index;

 for (i = 0; i < SLI4_CMD_REG_FCFI_NUM_RQ_CFG; i++) {
  switch(i) {
  case 0: reg_fcfi->rq_id_0 = rq_cfg[0].rq_id; break;
  case 1: reg_fcfi->rq_id_1 = rq_cfg[1].rq_id; break;
  case 2: reg_fcfi->rq_id_2 = rq_cfg[2].rq_id; break;
  case 3: reg_fcfi->rq_id_3 = rq_cfg[3].rq_id; break;
  }
  reg_fcfi->rq_cfg[i].r_ctl_mask = rq_cfg[i].r_ctl_mask;
  reg_fcfi->rq_cfg[i].r_ctl_match = rq_cfg[i].r_ctl_match;
  reg_fcfi->rq_cfg[i].type_mask = rq_cfg[i].type_mask;
  reg_fcfi->rq_cfg[i].type_match = rq_cfg[i].type_match;
 }

 if (vlan_id) {
  reg_fcfi->vv = TRUE;
  reg_fcfi->vlan_tag = vlan_id;
 }

 return sizeof(sli4_cmd_reg_fcfi_t);
}
