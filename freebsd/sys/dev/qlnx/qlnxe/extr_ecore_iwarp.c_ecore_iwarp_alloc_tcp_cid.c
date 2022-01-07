
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {int max_count; } ;
struct TYPE_3__ {TYPE_2__ tcp_cid_map; int proto; int lock; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ) ;
 int ECORE_IWARP_INVALID_TCP_CID ;
 int ECORE_MSG_RDMA ;
 int ECORE_SUCCESS ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 scalar_t__ ecore_cxt_get_proto_cid_start (struct ecore_hwfn*,int ) ;
 int ecore_rdma_bmap_alloc_id (struct ecore_hwfn*,TYPE_2__*,int *) ;

__attribute__((used)) static enum _ecore_status_t
ecore_iwarp_alloc_tcp_cid(struct ecore_hwfn *p_hwfn, u32 *cid)
{
 enum _ecore_status_t rc;

 OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->lock);

 rc = ecore_rdma_bmap_alloc_id(p_hwfn,
          &p_hwfn->p_rdma_info->tcp_cid_map,
          cid);

 OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->lock);

 *cid += ecore_cxt_get_proto_cid_start(p_hwfn,
           p_hwfn->p_rdma_info->proto);
 if (rc != ECORE_SUCCESS) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
      "can't allocate iwarp tcp cid max-count=%d\n",
      p_hwfn->p_rdma_info->tcp_cid_map.max_count);

  *cid = ECORE_IWARP_INVALID_TCP_CID;
 }

 return rc;
}
