
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_2__ {int channel; struct dmae_cmd* p_dmae_cmd; } ;
struct ecore_hwfn {TYPE_1__ dmae_info; } ;
struct dmae_cmd {int dst_addr_lo; int dst_addr_hi; int src_addr_lo; int src_addr_hi; int length_dw; int opcode_b; int opcode; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DMAE_CMD_SIZE ;
 int DMAE_CMD_SIZE_TO_FILL ;
 int DMAE_GO_VALUE ;
 scalar_t__ DMAE_REG_CMD_MEM ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int,int ,int ,int ,int ,int ,int ,int ) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,int ,int ,int ,int ,int ,int ,int ) ;
 int ECORE_INVAL ;
 int ECORE_MSG_HW ;
 int ECORE_SUCCESS ;
 int OSAL_LE16_TO_CPU (int ) ;
 int OSAL_LE32_TO_CPU (int ) ;
 scalar_t__ ecore_dmae_idx_to_go_cmd (int) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int ) ;

__attribute__((used)) static enum _ecore_status_t ecore_dmae_post_command(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt)
{
 struct dmae_cmd *p_command = p_hwfn->dmae_info.p_dmae_cmd;
 u8 idx_cmd = p_hwfn->dmae_info.channel, i;
 enum _ecore_status_t ecore_status = ECORE_SUCCESS;


 if ((((!p_command->dst_addr_lo) && (!p_command->dst_addr_hi)) ||
      ((!p_command->src_addr_lo) && (!p_command->src_addr_hi)))) {
  DP_NOTICE(p_hwfn, 1,
     "source or destination address 0 idx_cmd=%d\n"
     "opcode = [0x%08x,0x%04x] len=0x%x src=0x%x:%x dst=0x%x:%x\n",
     idx_cmd,
     OSAL_LE32_TO_CPU(p_command->opcode),
     OSAL_LE16_TO_CPU(p_command->opcode_b),
     OSAL_LE16_TO_CPU(p_command->length_dw),
     OSAL_LE32_TO_CPU(p_command->src_addr_hi),
     OSAL_LE32_TO_CPU(p_command->src_addr_lo),
     OSAL_LE32_TO_CPU(p_command->dst_addr_hi),
     OSAL_LE32_TO_CPU(p_command->dst_addr_lo));

  return ECORE_INVAL;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_HW,
     "Posting DMAE command [idx %d]: opcode = [0x%08x,0x%04x] len=0x%x src=0x%x:%x dst=0x%x:%x\n",
     idx_cmd,
     OSAL_LE32_TO_CPU(p_command->opcode),
     OSAL_LE16_TO_CPU(p_command->opcode_b),
     OSAL_LE16_TO_CPU(p_command->length_dw),
     OSAL_LE32_TO_CPU(p_command->src_addr_hi),
     OSAL_LE32_TO_CPU(p_command->src_addr_lo),
     OSAL_LE32_TO_CPU(p_command->dst_addr_hi),
     OSAL_LE32_TO_CPU(p_command->dst_addr_lo));
 for (i = 0; i < DMAE_CMD_SIZE; i++) {
  u32 data = (i < DMAE_CMD_SIZE_TO_FILL) ?
       *(((u32 *)p_command) + i) : 0;

  ecore_wr(p_hwfn, p_ptt,
    DMAE_REG_CMD_MEM +
    (idx_cmd * DMAE_CMD_SIZE * sizeof(u32)) +
    (i * sizeof(u32)), data);
 }

 ecore_wr(p_hwfn, p_ptt,
   ecore_dmae_idx_to_go_cmd(idx_cmd),
   DMAE_GO_VALUE);

 return ecore_status;
}
