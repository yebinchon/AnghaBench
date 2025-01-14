
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int b_mem_ready; scalar_t__ p_completion_word; scalar_t__ p_dmae_cmd; scalar_t__ p_intermediate_buffer; int intermediate_buffer_phys_addr; int dmae_cmd_phys_addr; int completion_word_phys_addr; int lock; } ;
struct ecore_hwfn {TYPE_1__ dmae_info; int p_dev; } ;
struct dmae_cmd {int dummy; } ;
typedef int dma_addr_t ;


 int DMAE_MAX_RW_SIZE ;
 int OSAL_DMA_FREE_COHERENT (int ,scalar_t__,int ,int) ;
 scalar_t__ OSAL_NULL ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;

void ecore_dmae_info_free(struct ecore_hwfn *p_hwfn)
{
 dma_addr_t p_phys;

 OSAL_SPIN_LOCK(&p_hwfn->dmae_info.lock);
 p_hwfn->dmae_info.b_mem_ready = 0;
 OSAL_SPIN_UNLOCK(&p_hwfn->dmae_info.lock);

 if (p_hwfn->dmae_info.p_completion_word != OSAL_NULL) {
  p_phys = p_hwfn->dmae_info.completion_word_phys_addr;
  OSAL_DMA_FREE_COHERENT(p_hwfn->p_dev,
           p_hwfn->dmae_info.p_completion_word,
           p_phys, sizeof(u32));
  p_hwfn->dmae_info.p_completion_word = OSAL_NULL;
 }

 if (p_hwfn->dmae_info.p_dmae_cmd != OSAL_NULL) {
  p_phys = p_hwfn->dmae_info.dmae_cmd_phys_addr;
  OSAL_DMA_FREE_COHERENT(p_hwfn->p_dev,
           p_hwfn->dmae_info.p_dmae_cmd,
           p_phys, sizeof(struct dmae_cmd));
  p_hwfn->dmae_info.p_dmae_cmd = OSAL_NULL;
 }

 if (p_hwfn->dmae_info.p_intermediate_buffer != OSAL_NULL) {
  p_phys = p_hwfn->dmae_info.intermediate_buffer_phys_addr;
  OSAL_DMA_FREE_COHERENT(p_hwfn->p_dev,
           p_hwfn->dmae_info.p_intermediate_buffer,
           p_phys, sizeof(u32) * DMAE_MAX_RW_SIZE);
  p_hwfn->dmae_info.p_intermediate_buffer = OSAL_NULL;
 }
}
