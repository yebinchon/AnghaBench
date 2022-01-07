
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int p_dev; struct ecore_consq* p_consq; } ;
struct ecore_consq {int chain; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_CHAIN_CNT_TYPE_U16 ;
 int ECORE_CHAIN_MODE_PBL ;
 int ECORE_CHAIN_PAGE_SIZE ;
 int ECORE_CHAIN_USE_TO_PRODUCE ;
 int ECORE_NOMEM ;
 scalar_t__ ECORE_SUCCESS ;
 int GFP_KERNEL ;
 int OSAL_FREE (int ,struct ecore_consq*) ;
 int OSAL_NULL ;
 struct ecore_consq* OSAL_ZALLOC (int ,int ,int) ;
 scalar_t__ ecore_chain_alloc (int ,int ,int ,int ,int,int,int *,int ) ;

enum _ecore_status_t ecore_consq_alloc(struct ecore_hwfn *p_hwfn)
{
 struct ecore_consq *p_consq;


 p_consq = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL, sizeof(*p_consq));
 if (!p_consq) {
  DP_NOTICE(p_hwfn, 0,
     "Failed to allocate `struct ecore_consq'\n");
  return ECORE_NOMEM;
 }


 if (ecore_chain_alloc(p_hwfn->p_dev,
         ECORE_CHAIN_USE_TO_PRODUCE,
         ECORE_CHAIN_MODE_PBL,
         ECORE_CHAIN_CNT_TYPE_U16,
         ECORE_CHAIN_PAGE_SIZE/0x80,
         0x80,
         &p_consq->chain, OSAL_NULL) != ECORE_SUCCESS) {
  DP_NOTICE(p_hwfn, 0, "Failed to allocate consq chain");
  goto consq_allocate_fail;
 }

 p_hwfn->p_consq = p_consq;
 return ECORE_SUCCESS;

consq_allocate_fail:
 OSAL_FREE(p_hwfn->p_dev, p_consq);
 return ECORE_NOMEM;
}
