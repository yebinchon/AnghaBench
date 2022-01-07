
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int u16 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_2__ {void* p_intermediate_buffer; scalar_t__ intermediate_buffer_phys_addr; struct dmae_cmd* p_dmae_cmd; } ;
struct ecore_hwfn {TYPE_1__ dmae_info; int p_dev; } ;
struct dmae_cmd {void* src_addr_lo; void* src_addr_hi; int length_dw; void* dst_addr_lo; void* dst_addr_hi; } ;
typedef scalar_t__ osal_uintptr_t ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef scalar_t__ dma_addr_t ;


 int DMA_HI (scalar_t__) ;
 int DMA_LO (scalar_t__) ;
 int DP_NOTICE (struct ecore_hwfn*,int ,char*,unsigned long long,unsigned long long,int,unsigned long long) ;



 int ECORE_INVAL ;
 int ECORE_MSG_HW ;
 int ECORE_SUCCESS ;
 scalar_t__ HILO_U64 (void*,void*) ;
 int OSAL_CPU_TO_LE16 (int ) ;
 void* OSAL_CPU_TO_LE32 (int ) ;
 int OSAL_DMA_SYNC (int ,void*,int,int) ;
 int OSAL_MEMCPY (void*,void*,int) ;
 int ecore_dmae_operation_wait (struct ecore_hwfn*) ;
 int ecore_dmae_post_command (struct ecore_hwfn*,struct ecore_ptt*) ;

__attribute__((used)) static enum _ecore_status_t ecore_dmae_execute_sub_operation(struct ecore_hwfn *p_hwfn,
            struct ecore_ptt *p_ptt,
            u64 src_addr,
            u64 dst_addr,
            u8 src_type,
            u8 dst_type,
            u32 length_dw)
{
 dma_addr_t phys = p_hwfn->dmae_info.intermediate_buffer_phys_addr;
 struct dmae_cmd *cmd = p_hwfn->dmae_info.p_dmae_cmd;
 enum _ecore_status_t ecore_status = ECORE_SUCCESS;

 switch (src_type) {
 case 130:
 case 129:
  cmd->src_addr_hi = OSAL_CPU_TO_LE32(DMA_HI(src_addr));
  cmd->src_addr_lo = OSAL_CPU_TO_LE32(DMA_LO(src_addr));
  break;

 case 128:
  cmd->src_addr_hi = OSAL_CPU_TO_LE32(DMA_HI(phys));
  cmd->src_addr_lo = OSAL_CPU_TO_LE32(DMA_LO(phys));
  OSAL_MEMCPY(&(p_hwfn->dmae_info.p_intermediate_buffer[0]),
       (void *)(osal_uintptr_t)src_addr,
       length_dw * sizeof(u32));
  break;
 default:
  return ECORE_INVAL;
 }

 switch (dst_type) {
 case 130:
 case 129:
  cmd->dst_addr_hi = OSAL_CPU_TO_LE32(DMA_HI(dst_addr));
  cmd->dst_addr_lo = OSAL_CPU_TO_LE32(DMA_LO(dst_addr));
  break;

 case 128:
  cmd->dst_addr_hi = OSAL_CPU_TO_LE32(DMA_HI(phys));
  cmd->dst_addr_lo = OSAL_CPU_TO_LE32(DMA_LO(phys));
  break;
 default:
  return ECORE_INVAL;
 }

 cmd->length_dw = OSAL_CPU_TO_LE16((u16)length_dw);

 if (src_type == 128 ||
     src_type == 129)
  OSAL_DMA_SYNC(p_hwfn->p_dev,
         (void *)HILO_U64(cmd->src_addr_hi,
            cmd->src_addr_lo),
         length_dw * sizeof(u32), 0);


 ecore_dmae_post_command(p_hwfn, p_ptt);

 ecore_status = ecore_dmae_operation_wait(p_hwfn);



 if (src_type == 128 ||
     src_type == 129)
  OSAL_DMA_SYNC(p_hwfn->p_dev,
         (void *)HILO_U64(cmd->src_addr_hi,
            cmd->src_addr_lo),
         length_dw * sizeof(u32), 1);


 if (ecore_status != ECORE_SUCCESS) {
  DP_NOTICE(p_hwfn, ECORE_MSG_HW,
     "Wait Failed. source_addr 0x%llx, grc_addr 0x%llx, size_in_dwords 0x%x, intermediate buffer 0x%llx.\n",
     (unsigned long long)src_addr, (unsigned long long)dst_addr, length_dw,
     (unsigned long long)p_hwfn->dmae_info.intermediate_buffer_phys_addr);
  return ecore_status;
 }

 if (dst_type == 128)
  OSAL_MEMCPY((void *)(osal_uintptr_t)(dst_addr),
       &p_hwfn->dmae_info.p_intermediate_buffer[0],
       length_dw * sizeof(u32));

 return ECORE_SUCCESS;
}
