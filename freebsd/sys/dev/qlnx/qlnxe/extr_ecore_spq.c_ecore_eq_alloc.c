
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union event_ring_element {int dummy; } event_ring_element ;
typedef int u16 ;
struct ecore_hwfn {int p_dev; struct ecore_eq* p_eq; } ;
struct ecore_eq {int p_fw_cons; int eq_sb_index; int chain; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_CHAIN_CNT_TYPE_U16 ;
 int ECORE_CHAIN_MODE_PBL ;
 int ECORE_CHAIN_USE_TO_PRODUCE ;
 int ECORE_NOMEM ;
 scalar_t__ ECORE_SUCCESS ;
 int GFP_KERNEL ;
 int OSAL_FREE (int ,struct ecore_eq*) ;
 int OSAL_NULL ;
 struct ecore_eq* OSAL_ZALLOC (int ,int ,int) ;
 scalar_t__ ecore_chain_alloc (int ,int ,int ,int ,int ,int,int *,int ) ;
 int ecore_eq_completion ;
 int ecore_int_register_cb (struct ecore_hwfn*,int ,struct ecore_eq*,int *,int *) ;

enum _ecore_status_t ecore_eq_alloc(struct ecore_hwfn *p_hwfn, u16 num_elem)
{
 struct ecore_eq *p_eq;


 p_eq = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL, sizeof(*p_eq));
 if (!p_eq) {
  DP_NOTICE(p_hwfn, 0,
     "Failed to allocate `struct ecore_eq'\n");
  return ECORE_NOMEM;
 }


 if (ecore_chain_alloc(p_hwfn->p_dev,
         ECORE_CHAIN_USE_TO_PRODUCE,
         ECORE_CHAIN_MODE_PBL,
         ECORE_CHAIN_CNT_TYPE_U16,
         num_elem,
         sizeof(union event_ring_element),
         &p_eq->chain, OSAL_NULL) != ECORE_SUCCESS) {
  DP_NOTICE(p_hwfn, 0, "Failed to allocate eq chain\n");
  goto eq_allocate_fail;
 }


 ecore_int_register_cb(p_hwfn, ecore_eq_completion,
         p_eq, &p_eq->eq_sb_index, &p_eq->p_fw_cons);

 p_hwfn->p_eq = p_eq;
 return ECORE_SUCCESS;

eq_allocate_fail:
 OSAL_FREE(p_hwfn->p_dev, p_eq);
 return ECORE_NOMEM;
}
