
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_dev {int dummy; } ;
struct ecore_chain {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef int dma_addr_t ;


 int DP_NOTICE (struct ecore_dev*,int,char*) ;
 int ECORE_CHAIN_PAGE_SIZE ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 void* OSAL_DMA_ALLOC_COHERENT (struct ecore_dev*,int *,int ) ;
 void* OSAL_NULL ;
 int ecore_chain_init_mem (struct ecore_chain*,void*,int ) ;
 int ecore_chain_reset (struct ecore_chain*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_chain_alloc_single(struct ecore_dev *p_dev, struct ecore_chain *p_chain)
{
 dma_addr_t p_phys = 0;
 void *p_virt = OSAL_NULL;

 p_virt = OSAL_DMA_ALLOC_COHERENT(p_dev, &p_phys, ECORE_CHAIN_PAGE_SIZE);
 if (!p_virt) {
  DP_NOTICE(p_dev, 0, "Failed to allocate chain memory\n");
  return ECORE_NOMEM;
 }

 ecore_chain_init_mem(p_chain, p_virt, p_phys);
 ecore_chain_reset(p_chain);

 return ECORE_SUCCESS;
}
