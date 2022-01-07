
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int u16 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_3__ {int b_mem_ready; struct dmae_cmd* p_dmae_cmd; int completion_word_phys_addr; } ;
struct ecore_hwfn {TYPE_2__* p_dev; TYPE_1__ dmae_info; } ;
struct ecore_dmae_params {int dummy; } ;
struct dmae_cmd {void* comp_val; void* comp_addr_hi; void* comp_addr_lo; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef int dma_addr_t ;
struct TYPE_4__ {scalar_t__ recov_in_prog; } ;


 int DMAE_COMPLETION_VAL ;
 int DMAE_MAX_RW_SIZE ;
 int DMA_HI (int ) ;
 int DMA_LO (int ) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int,unsigned long long,unsigned long long,...) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,unsigned long long,int ,unsigned long long,int ,int) ;
 int ECORE_DMAE_ADDRESS_GRC ;
 int ECORE_DMAE_FLAGS_IS_SET (struct ecore_dmae_params*,int ) ;
 int ECORE_HW_ERR_DMAE_FAIL ;
 int ECORE_INVAL ;
 int ECORE_MSG_HW ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 void* OSAL_CPU_TO_LE32 (int ) ;
 int RW_REPL_SRC ;
 int ecore_dmae_execute_sub_operation (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,scalar_t__,int ,int ,int) ;
 int ecore_dmae_opcode (struct ecore_hwfn*,int,int,struct ecore_dmae_params*) ;
 int ecore_hw_err_notify (struct ecore_hwfn*,int ) ;

__attribute__((used)) static enum _ecore_status_t ecore_dmae_execute_command(struct ecore_hwfn *p_hwfn,
             struct ecore_ptt *p_ptt,
             u64 src_addr, u64 dst_addr,
             u8 src_type, u8 dst_type,
             u32 size_in_dwords,
             struct ecore_dmae_params *p_params)
{
 dma_addr_t phys = p_hwfn->dmae_info.completion_word_phys_addr;
 u16 length_cur = 0, i = 0, cnt_split = 0, length_mod = 0;
 struct dmae_cmd *cmd = p_hwfn->dmae_info.p_dmae_cmd;
 u64 src_addr_split = 0, dst_addr_split = 0;
 u16 length_limit = DMAE_MAX_RW_SIZE;
 enum _ecore_status_t ecore_status = ECORE_SUCCESS;
 u32 offset = 0;

 if (!p_hwfn->dmae_info.b_mem_ready) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_HW,
      "No buffers allocated. Avoid DMAE transaction [{src: addr 0x%llx, type %d}, {dst: addr 0x%llx, type %d}, size %d].\n",
      (unsigned long long)src_addr, src_type, (unsigned long long)dst_addr, dst_type,
      size_in_dwords);
  return ECORE_NOMEM;
 }

 if (p_hwfn->p_dev->recov_in_prog) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_HW,
      "Recovery is in progress. Avoid DMAE transaction [{src: addr 0x%llx, type %d}, {dst: addr 0x%llx, type %d}, size %d].\n",
      (unsigned long long)src_addr, src_type, (unsigned long long)dst_addr, dst_type,
      size_in_dwords);



  return ECORE_SUCCESS;
 }

 if (!cmd) {
  DP_NOTICE(p_hwfn, 1,
     "ecore_dmae_execute_sub_operation failed. Invalid state. source_addr 0x%llx, destination addr 0x%llx, size_in_dwords 0x%x\n",
     (unsigned long long)src_addr, (unsigned long long)dst_addr, length_cur);
  return ECORE_INVAL;
 }

 ecore_dmae_opcode(p_hwfn,
     (src_type == ECORE_DMAE_ADDRESS_GRC),
     (dst_type == ECORE_DMAE_ADDRESS_GRC),
     p_params);

 cmd->comp_addr_lo = OSAL_CPU_TO_LE32(DMA_LO(phys));
 cmd->comp_addr_hi = OSAL_CPU_TO_LE32(DMA_HI(phys));
 cmd->comp_val = OSAL_CPU_TO_LE32(DMAE_COMPLETION_VAL);


 cnt_split = size_in_dwords / length_limit;
 length_mod = size_in_dwords % length_limit;

 src_addr_split = src_addr;
 dst_addr_split = dst_addr;

 for (i = 0; i <= cnt_split; i++) {
  offset = length_limit * i;

  if (!ECORE_DMAE_FLAGS_IS_SET(p_params, RW_REPL_SRC)) {
   if (src_type == ECORE_DMAE_ADDRESS_GRC)
    src_addr_split = src_addr + offset;
   else
    src_addr_split = src_addr + (offset*4);
  }

  if (dst_type == ECORE_DMAE_ADDRESS_GRC)
   dst_addr_split = dst_addr + offset;
  else
   dst_addr_split = dst_addr + (offset*4);

  length_cur = (cnt_split == i) ? length_mod : length_limit;


  if (!length_cur)
   continue;

  ecore_status = ecore_dmae_execute_sub_operation(p_hwfn,
        p_ptt,
        src_addr_split,
        dst_addr_split,
        src_type,
        dst_type,
        length_cur);
  if (ecore_status != ECORE_SUCCESS) {
   DP_NOTICE(p_hwfn, 0,
      "ecore_dmae_execute_sub_operation Failed with error 0x%x. source_addr 0x%llx, destination addr 0x%llx, size_in_dwords 0x%x\n",
      ecore_status, (unsigned long long)src_addr, (unsigned long long)dst_addr, length_cur);

   ecore_hw_err_notify(p_hwfn, ECORE_HW_ERR_DMAE_FAIL);
   break;
  }
 }

 return ecore_status;
}
