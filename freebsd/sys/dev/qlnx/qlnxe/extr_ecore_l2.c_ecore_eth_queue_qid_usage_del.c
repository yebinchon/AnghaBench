
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t queue_id; } ;
struct ecore_queue_cid {TYPE_1__ rel; int qid_usage_idx; } ;
struct ecore_hwfn {TYPE_2__* p_l2_info; } ;
struct TYPE_4__ {int lock; int * pp_qid_usage; } ;


 int OSAL_CLEAR_BIT (int ,int ) ;
 int OSAL_MUTEX_ACQUIRE (int *) ;
 int OSAL_MUTEX_RELEASE (int *) ;

__attribute__((used)) static void ecore_eth_queue_qid_usage_del(struct ecore_hwfn *p_hwfn,
       struct ecore_queue_cid *p_cid)
{
 OSAL_MUTEX_ACQUIRE(&p_hwfn->p_l2_info->lock);

 OSAL_CLEAR_BIT(p_cid->qid_usage_idx,
         p_hwfn->p_l2_info->pp_qid_usage[p_cid->rel.queue_id]);

 OSAL_MUTEX_RELEASE(&p_hwfn->p_l2_info->lock);
}
