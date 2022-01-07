
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int lock; int cid_map; int proto; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_ELEM_CXT ;
 int ECORE_SUCCESS ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int ecore_bmap_release_id (struct ecore_hwfn*,int *,int ) ;
 int ecore_cxt_dynamic_ilt_alloc (struct ecore_hwfn*,int ,int ) ;
 scalar_t__ ecore_cxt_get_proto_cid_start (struct ecore_hwfn*,int ) ;
 int ecore_rdma_bmap_alloc_id (struct ecore_hwfn*,int *,int *) ;

__attribute__((used)) static enum _ecore_status_t
ecore_iwarp_alloc_cid(struct ecore_hwfn *p_hwfn, u32 *cid)
{
 enum _ecore_status_t rc;

 OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->lock);

 rc = ecore_rdma_bmap_alloc_id(p_hwfn,
          &p_hwfn->p_rdma_info->cid_map,
          cid);

 OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->lock);
 *cid += ecore_cxt_get_proto_cid_start(p_hwfn,
           p_hwfn->p_rdma_info->proto);
 if (rc != ECORE_SUCCESS) {
  DP_NOTICE(p_hwfn, 0, "Failed in allocating iwarp cid\n");
  return rc;
 }

 rc = ecore_cxt_dynamic_ilt_alloc(p_hwfn, ECORE_ELEM_CXT, *cid);

 if (rc != ECORE_SUCCESS) {
  OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->lock);
  *cid -= ecore_cxt_get_proto_cid_start(p_hwfn,
          p_hwfn->p_rdma_info->proto);

  ecore_bmap_release_id(p_hwfn,
          &p_hwfn->p_rdma_info->cid_map,
          *cid);

  OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->lock);
 }

 return rc;
}
