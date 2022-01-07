
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ecore_rdma_info {int lock; int cid_map; } ;
struct ecore_hwfn {int p_dev; struct ecore_rdma_info* p_rdma_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (int ,char*,int,int) ;
 int ECORE_AGAIN ;
 scalar_t__ ECORE_ROCE_CREATE_QP_ATTEMPTS ;
 int ECORE_ROCE_CREATE_QP_MSLEEP ;
 scalar_t__ ECORE_ROCE_QP_TO_ICID (scalar_t__) ;
 int ECORE_SUCCESS ;
 int OSAL_MSLEEP (int ) ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int ecore_bmap_test_id (struct ecore_hwfn*,int *,scalar_t__) ;

__attribute__((used)) static enum _ecore_status_t ecore_roce_wait_free_cids(struct ecore_hwfn *p_hwfn, u32 qp_idx)
{
 struct ecore_rdma_info *p_rdma_info = p_hwfn->p_rdma_info;
 bool cids_free = 0;
 u32 icid, iter = 0;
 int req, resp;

 icid = ECORE_ROCE_QP_TO_ICID(qp_idx);
 do {
  OSAL_SPIN_LOCK(&p_rdma_info->lock);
  resp = ecore_bmap_test_id(p_hwfn, &p_rdma_info->cid_map, icid);
  req = ecore_bmap_test_id(p_hwfn, &p_rdma_info->cid_map, icid + 1);
  if (!resp && !req)
   cids_free = 1;

  OSAL_SPIN_UNLOCK(&p_rdma_info->lock);

  if (!cids_free) {
   OSAL_MSLEEP(ECORE_ROCE_CREATE_QP_MSLEEP);
   iter++;
  }
 } while (!cids_free && iter < ECORE_ROCE_CREATE_QP_ATTEMPTS);

 if (!cids_free) {
  DP_ERR(p_hwfn->p_dev,
         "responder and/or requester CIDs are still in use. resp=%d, req=%d\n",
         resp, req);
  return ECORE_AGAIN;
 }

 return ECORE_SUCCESS;
}
