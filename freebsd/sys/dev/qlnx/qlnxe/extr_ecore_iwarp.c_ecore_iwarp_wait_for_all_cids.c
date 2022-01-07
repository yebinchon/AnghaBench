
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int cid_map; int tcp_cid_map; } ;


 int ECORE_IWARP_PREALLOC_CNT ;
 int ecore_bmap_release_id (struct ecore_hwfn*,int *,int) ;
 int ecore_iwarp_wait_cid_map_cleared (struct ecore_hwfn*,int *) ;

__attribute__((used)) static enum _ecore_status_t
ecore_iwarp_wait_for_all_cids(struct ecore_hwfn *p_hwfn)
{
 enum _ecore_status_t rc;
 int i;

 rc = ecore_iwarp_wait_cid_map_cleared(
  p_hwfn, &p_hwfn->p_rdma_info->tcp_cid_map);
 if (rc)
  return rc;


 for (i = 0; i < ECORE_IWARP_PREALLOC_CNT; i++) {
  ecore_bmap_release_id(p_hwfn,
          &p_hwfn->p_rdma_info->cid_map,
          i);
 }


 rc = ecore_iwarp_wait_cid_map_cleared(
  p_hwfn, &p_hwfn->p_rdma_info->cid_map);

 return rc;
}
