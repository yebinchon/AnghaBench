
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_hwfn {TYPE_2__* p_rdma_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {int ep_free_list; int qp_lock; int iw_lock; } ;
struct TYPE_4__ {TYPE_1__ iwarp; int tcp_cid_map; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;
 int ECORE_IWARP_PREALLOC_CNT ;
 int ECORE_MSG_RDMA ;
 int ECORE_SUCCESS ;
 int OSAL_LIST_INIT (int *) ;
 int OSAL_SPIN_LOCK_ALLOC (struct ecore_hwfn*,int *) ;
 int OSAL_SPIN_LOCK_INIT (int *) ;
 int ecore_iwarp_prealloc_ep (struct ecore_hwfn*,int) ;
 int ecore_ooo_alloc (struct ecore_hwfn*) ;
 int ecore_rdma_bmap_alloc (struct ecore_hwfn*,int *,int ,char*) ;

enum _ecore_status_t
ecore_iwarp_alloc(struct ecore_hwfn *p_hwfn)
{
 enum _ecore_status_t rc;





 OSAL_SPIN_LOCK_INIT(&p_hwfn->p_rdma_info->iwarp.iw_lock);
 OSAL_SPIN_LOCK_INIT(&p_hwfn->p_rdma_info->iwarp.qp_lock);





 rc = ecore_rdma_bmap_alloc(p_hwfn, &p_hwfn->p_rdma_info->tcp_cid_map,
       ECORE_IWARP_PREALLOC_CNT,
       "TCP_CID");
 if (rc != ECORE_SUCCESS) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "Failed to allocate tcp cid, rc = %d\n",
      rc);
  return rc;
 }

 OSAL_LIST_INIT(&p_hwfn->p_rdma_info->iwarp.ep_free_list);

 rc = ecore_iwarp_prealloc_ep(p_hwfn, 1);
 if (rc != ECORE_SUCCESS) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "ecore_iwarp_prealloc_ep failed, rc = %d\n",
      rc);
  return rc;
 }
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "ecore_iwarp_prealloc_ep success, rc = %d\n",
      rc);

 return ecore_ooo_alloc(p_hwfn);
}
