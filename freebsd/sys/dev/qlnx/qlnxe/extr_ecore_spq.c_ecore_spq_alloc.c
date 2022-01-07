
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slow_path_element {int dummy; } ;
struct ecore_spq_entry {int dummy; } ;
struct ecore_spq {int chain; int lock; int p_phys; struct ecore_spq_entry* p_virt; } ;
struct ecore_hwfn {int p_dev; struct ecore_spq* p_spq; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef int dma_addr_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_CHAIN_CNT_TYPE_U16 ;
 int ECORE_CHAIN_MODE_SINGLE ;
 int ECORE_CHAIN_USE_TO_PRODUCE ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int GFP_KERNEL ;
 struct ecore_spq_entry* OSAL_DMA_ALLOC_COHERENT (int ,int *,int) ;
 int OSAL_FREE (int ,struct ecore_spq*) ;
 void* OSAL_NULL ;
 scalar_t__ OSAL_SPIN_LOCK_ALLOC (struct ecore_hwfn*,int *) ;
 struct ecore_spq* OSAL_ZALLOC (int ,int ,int) ;
 scalar_t__ ecore_chain_alloc (int ,int ,int ,int ,int ,int,int *,void*) ;
 int ecore_chain_free (int ,int *) ;
 int ecore_chain_get_capacity (int *) ;

enum _ecore_status_t ecore_spq_alloc(struct ecore_hwfn *p_hwfn)
{
 struct ecore_spq_entry *p_virt = OSAL_NULL;
 struct ecore_spq *p_spq = OSAL_NULL;
 dma_addr_t p_phys = 0;
 u32 capacity;


 p_spq =
     OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL, sizeof(struct ecore_spq));
 if (!p_spq) {
  DP_NOTICE(p_hwfn, 0, "Failed to allocate `struct ecore_spq'\n");
  return ECORE_NOMEM;
 }


 if (ecore_chain_alloc(p_hwfn->p_dev,
         ECORE_CHAIN_USE_TO_PRODUCE,
         ECORE_CHAIN_MODE_SINGLE,
         ECORE_CHAIN_CNT_TYPE_U16,
         0,
         sizeof(struct slow_path_element),
         &p_spq->chain, OSAL_NULL)) {
  DP_NOTICE(p_hwfn, 0, "Failed to allocate spq chain\n");
  goto spq_allocate_fail;
 }


 capacity = ecore_chain_get_capacity(&p_spq->chain);
 p_virt = OSAL_DMA_ALLOC_COHERENT(p_hwfn->p_dev, &p_phys,
      capacity *
      sizeof(struct ecore_spq_entry));
 if (!p_virt) {
  goto spq_allocate_fail;
 }

 p_spq->p_virt = p_virt;
 p_spq->p_phys = p_phys;






 p_hwfn->p_spq = p_spq;
 return ECORE_SUCCESS;

spq_allocate_fail:
 ecore_chain_free(p_hwfn->p_dev, &p_spq->chain);
 OSAL_FREE(p_hwfn->p_dev, p_spq);
 return ECORE_NOMEM;
}
