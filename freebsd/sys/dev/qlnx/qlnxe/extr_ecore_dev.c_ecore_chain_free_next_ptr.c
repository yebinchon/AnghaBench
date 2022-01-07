
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ecore_dev {int dummy; } ;
struct ecore_chain_next {int next_phys; void* next_virt; } ;
struct ecore_chain {scalar_t__ elem_size; scalar_t__ usable_per_page; scalar_t__ page_cnt; int p_phys_addr; void* p_virt_addr; } ;
typedef int dma_addr_t ;


 int ECORE_CHAIN_PAGE_SIZE ;
 int HILO_DMA_REGPAIR (int ) ;
 int OSAL_DMA_FREE_COHERENT (struct ecore_dev*,void*,int ,int ) ;
 void* OSAL_NULL ;

__attribute__((used)) static void ecore_chain_free_next_ptr(struct ecore_dev *p_dev,
          struct ecore_chain *p_chain)
{
 void *p_virt = p_chain->p_virt_addr, *p_virt_next = OSAL_NULL;
 dma_addr_t p_phys = p_chain->p_phys_addr, p_phys_next = 0;
 struct ecore_chain_next *p_next;
 u32 size, i;

 if (!p_virt)
  return;

 size = p_chain->elem_size * p_chain->usable_per_page;

 for (i = 0; i < p_chain->page_cnt; i++) {
  if (!p_virt)
   break;

  p_next = (struct ecore_chain_next *)((u8 *)p_virt + size);
  p_virt_next = p_next->next_virt;
  p_phys_next = HILO_DMA_REGPAIR(p_next->next_phys);

  OSAL_DMA_FREE_COHERENT(p_dev, p_virt, p_phys,
           ECORE_CHAIN_PAGE_SIZE);

  p_virt = p_virt_next;
  p_phys = p_phys_next;
 }
}
