
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ecore_ptt_pool {int lock; int free_list; TYPE_3__* ptts; } ;
struct ecore_hwfn {struct ecore_ptt_pool* p_ptt_pool; int my_id; int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {scalar_t__ control; } ;
struct TYPE_5__ {TYPE_1__ pretend; int offset; } ;
struct TYPE_6__ {int idx; int list_entry; int hwfn_id; TYPE_2__ pxp; } ;


 int ECORE_BAR_INVALID_OFFSET ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int GFP_KERNEL ;
 struct ecore_ptt_pool* OSAL_ALLOC (int ,int ,int) ;
 int OSAL_LIST_INIT (int *) ;
 int OSAL_LIST_PUSH_HEAD (int *,int *) ;
 scalar_t__ OSAL_SPIN_LOCK_ALLOC (struct ecore_hwfn*,int *) ;
 int OSAL_SPIN_LOCK_INIT (int *) ;
 int PXP_EXTERNAL_BAR_PF_WINDOW_NUM ;
 int RESERVED_PTT_MAX ;
 int __ecore_ptt_pool_free (struct ecore_hwfn*) ;

enum _ecore_status_t ecore_ptt_pool_alloc(struct ecore_hwfn *p_hwfn)
{
 struct ecore_ptt_pool *p_pool = OSAL_ALLOC(p_hwfn->p_dev,
         GFP_KERNEL,
         sizeof(*p_pool));
 int i;

 if (!p_pool)
  return ECORE_NOMEM;

 OSAL_LIST_INIT(&p_pool->free_list);
 for (i = 0; i < PXP_EXTERNAL_BAR_PF_WINDOW_NUM; i++) {
  p_pool->ptts[i].idx = i;
  p_pool->ptts[i].pxp.offset = ECORE_BAR_INVALID_OFFSET;
  p_pool->ptts[i].pxp.pretend.control = 0;
  p_pool->ptts[i].hwfn_id = p_hwfn->my_id;




  if (i >= RESERVED_PTT_MAX)
   OSAL_LIST_PUSH_HEAD(&p_pool->ptts[i].list_entry,
         &p_pool->free_list);
 }

 p_hwfn->p_ptt_pool = p_pool;






 OSAL_SPIN_LOCK_INIT(&p_pool->lock);
 return ECORE_SUCCESS;
}
