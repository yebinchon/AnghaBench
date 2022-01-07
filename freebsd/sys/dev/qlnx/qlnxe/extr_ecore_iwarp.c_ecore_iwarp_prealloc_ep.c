
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ecore_iwarp_ep {int list_entry; int tcp_cid; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {int iw_lock; int ep_free_list; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 int ECORE_IWARP_PREALLOC_CNT ;
 int ECORE_SUCCESS ;
 int OSAL_LIST_PUSH_TAIL (int *,int *) ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int ecore_iwarp_alloc_cid (struct ecore_hwfn*,int *) ;
 int ecore_iwarp_alloc_tcp_cid (struct ecore_hwfn*,int *) ;
 int ecore_iwarp_create_ep (struct ecore_hwfn*,struct ecore_iwarp_ep**) ;
 int ecore_iwarp_destroy_ep (struct ecore_hwfn*,struct ecore_iwarp_ep*,int) ;
 int ecore_iwarp_set_tcp_cid (struct ecore_hwfn*,int ) ;

__attribute__((used)) static enum _ecore_status_t
ecore_iwarp_prealloc_ep(struct ecore_hwfn *p_hwfn, bool init)
{
 struct ecore_iwarp_ep *ep;
 int rc = ECORE_SUCCESS;
 u32 cid;
 int count;
 int i;

 if (init)
  count = ECORE_IWARP_PREALLOC_CNT;
 else
  count = 1;

 for (i = 0; i < count; i++) {
  rc = ecore_iwarp_create_ep(p_hwfn, &ep);
  if (rc != ECORE_SUCCESS)
   return rc;




  if (init) {
   rc = ecore_iwarp_alloc_cid(p_hwfn, &cid);
   if (rc != ECORE_SUCCESS)
    goto err;
   ecore_iwarp_set_tcp_cid(p_hwfn, cid);
  } else {




   ecore_iwarp_alloc_tcp_cid(p_hwfn, &cid);
  }

  ep->tcp_cid = cid;

  OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->iwarp.iw_lock);
  OSAL_LIST_PUSH_TAIL(&ep->list_entry,
        &p_hwfn->p_rdma_info->iwarp.ep_free_list);
  OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->iwarp.iw_lock);
 }

 return rc;

err:
 ecore_iwarp_destroy_ep(p_hwfn, ep, 0);

 return rc;
}
