
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int active; int ref_cnt; int lock; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int ECORE_RDMA_MAX_FLOW_TIME ;
 int ECORE_SUCCESS ;
 int ECORE_TIMEOUT ;
 int OSAL_MSLEEP (int ) ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;

__attribute__((used)) static enum _ecore_status_t ecore_rdma_deactivate(struct ecore_hwfn *p_hwfn)
{
 int wait_count;

 OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->lock);
 p_hwfn->p_rdma_info->active = 0;
 OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->lock);


 wait_count = p_hwfn->p_rdma_info->ref_cnt;

 while (p_hwfn->p_rdma_info->ref_cnt) {
  OSAL_MSLEEP(ECORE_RDMA_MAX_FLOW_TIME);
  if (--wait_count == 0) {
   DP_NOTICE(p_hwfn, 0,
      "Timeout on refcnt=%d\n",
      p_hwfn->p_rdma_info->ref_cnt);
   return ECORE_TIMEOUT;
  }
 }
 return ECORE_SUCCESS;
}
