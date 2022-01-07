
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u16 ;
struct TYPE_2__ {size_t queue_id; } ;
struct ecore_queue_cid {scalar_t__ qid_usage_idx; TYPE_1__ rel; } ;
struct ecore_l2_info {size_t queues; int lock; int * pp_qid_usage; } ;
struct ecore_hwfn {struct ecore_l2_info* p_l2_info; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,size_t,size_t) ;
 scalar_t__ MAX_QUEUES_PER_QZONE ;
 scalar_t__ OSAL_FIND_FIRST_ZERO_BIT (int ,scalar_t__) ;
 int OSAL_MUTEX_ACQUIRE (int *) ;
 int OSAL_MUTEX_RELEASE (int *) ;
 int OSAL_SET_BIT (scalar_t__,int ) ;

__attribute__((used)) static bool ecore_eth_queue_qid_usage_add(struct ecore_hwfn *p_hwfn,
       struct ecore_queue_cid *p_cid)
{
 struct ecore_l2_info *p_l2_info = p_hwfn->p_l2_info;
 u16 queue_id = p_cid->rel.queue_id;
 bool b_rc = 1;
 u8 first;

 OSAL_MUTEX_ACQUIRE(&p_l2_info->lock);

 if (queue_id > p_l2_info->queues) {
  DP_NOTICE(p_hwfn, 1,
     "Requested to increase usage for qzone %04x out of %08x\n",
     queue_id, p_l2_info->queues);
  b_rc = 0;
  goto out;
 }

 first = (u8)OSAL_FIND_FIRST_ZERO_BIT(p_l2_info->pp_qid_usage[queue_id],
          MAX_QUEUES_PER_QZONE);
 if (first >= MAX_QUEUES_PER_QZONE) {
  b_rc = 0;
  goto out;
 }

 OSAL_SET_BIT(first, p_l2_info->pp_qid_usage[queue_id]);
 p_cid->qid_usage_idx = first;

out:
 OSAL_MUTEX_RELEASE(&p_l2_info->lock);
 return b_rc;
}
