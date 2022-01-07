
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct ecore_rdma_info {int lock; int cid_map; int proto; } ;
struct ecore_hwfn {struct ecore_rdma_info* p_rdma_info; } ;


 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int ecore_bmap_release_id (struct ecore_hwfn*,int *,scalar_t__) ;
 scalar_t__ ecore_cxt_get_proto_cid_start (struct ecore_hwfn*,int ) ;

__attribute__((used)) static void ecore_roce_free_icid(struct ecore_hwfn *p_hwfn, u16 icid)
{
 struct ecore_rdma_info *p_rdma_info = p_hwfn->p_rdma_info;
 u32 start_cid, cid;

 start_cid = ecore_cxt_get_proto_cid_start(p_hwfn, p_rdma_info->proto);
 cid = icid - start_cid;

 OSAL_SPIN_LOCK(&p_rdma_info->lock);

 ecore_bmap_release_id(p_hwfn, &p_rdma_info->cid_map, cid);

 OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->lock);
}
