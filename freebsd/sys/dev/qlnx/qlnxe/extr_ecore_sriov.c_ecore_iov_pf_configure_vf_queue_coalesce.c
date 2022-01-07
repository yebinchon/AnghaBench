
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct ecore_vf_queue {TYPE_2__* cids; int fw_rx_qid; } ;
struct ecore_vf_info {size_t rx_coal; size_t tx_coal; int abs_vf_id; struct ecore_vf_queue* vf_queues; } ;
struct ecore_queue_cid {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* pf_iov_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {scalar_t__ p_cid; int b_is_tx; } ;
struct TYPE_3__ {struct ecore_vf_info* vfs_array; } ;


 int DP_ERR (struct ecore_hwfn*,char*,int ,size_t) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,size_t) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,...) ;
 int ECORE_AGAIN ;
 int ECORE_INVAL ;
 int ECORE_IOV_VALIDATE_Q_ENABLE ;
 int ECORE_MSG_IOV ;
 int ECORE_SUCCESS ;
 int MAX_QUEUES_PER_QZONE ;
 scalar_t__ OSAL_NULL ;
 struct ecore_queue_cid* ecore_iov_get_vf_rx_queue_cid (struct ecore_vf_queue*) ;
 int ecore_iov_is_valid_vfid (struct ecore_hwfn*,size_t,int,int) ;
 int ecore_iov_validate_rxq (struct ecore_hwfn*,struct ecore_vf_info*,size_t,int ) ;
 int ecore_iov_validate_txq (struct ecore_hwfn*,struct ecore_vf_info*,size_t,int ) ;
 struct ecore_ptt* ecore_ptt_acquire (struct ecore_hwfn*) ;
 int ecore_ptt_release (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_set_rxq_coalesce (struct ecore_hwfn*,struct ecore_ptt*,size_t,struct ecore_queue_cid*) ;
 int ecore_set_txq_coalesce (struct ecore_hwfn*,struct ecore_ptt*,size_t,scalar_t__) ;

enum _ecore_status_t
ecore_iov_pf_configure_vf_queue_coalesce(struct ecore_hwfn *p_hwfn,
      u16 rx_coal, u16 tx_coal,
      u16 vf_id, u16 qid)
{
 struct ecore_queue_cid *p_cid;
 struct ecore_vf_info *vf;
 struct ecore_ptt *p_ptt;
 int i, rc = 0;

 if (!ecore_iov_is_valid_vfid(p_hwfn, vf_id, 1, 1)) {
  DP_NOTICE(p_hwfn, 1,
     "VF[%d] - Can not set coalescing: VF is not active\n",
     vf_id);
  return ECORE_INVAL;
 }

 vf = &p_hwfn->pf_iov_info->vfs_array[vf_id];
 p_ptt = ecore_ptt_acquire(p_hwfn);
 if (!p_ptt)
  return ECORE_AGAIN;

 if (!ecore_iov_validate_rxq(p_hwfn, vf, qid,
        ECORE_IOV_VALIDATE_Q_ENABLE) &&
     rx_coal) {
  DP_ERR(p_hwfn, "VF[%d]: Invalid Rx queue_id = %d\n",
         vf->abs_vf_id, qid);
  goto out;
 }

 if (!ecore_iov_validate_txq(p_hwfn, vf, qid,
        ECORE_IOV_VALIDATE_Q_ENABLE) &&
     tx_coal) {
  DP_ERR(p_hwfn, "VF[%d]: Invalid Tx queue_id = %d\n",
         vf->abs_vf_id, qid);
  goto out;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
     "VF[%d]: Setting coalesce for VF rx_coal = %d, tx_coal = %d at queue = %d\n",
     vf->abs_vf_id, rx_coal, tx_coal, qid);

 if (rx_coal) {
  p_cid = ecore_iov_get_vf_rx_queue_cid(&vf->vf_queues[qid]);

  rc = ecore_set_rxq_coalesce(p_hwfn, p_ptt, rx_coal, p_cid);
  if (rc != ECORE_SUCCESS) {
   DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
       "VF[%d]: Unable to set rx queue = %d coalesce\n",
       vf->abs_vf_id, vf->vf_queues[qid].fw_rx_qid);
   goto out;
  }
  vf->rx_coal = rx_coal;
 }




 if (tx_coal) {
  struct ecore_vf_queue *p_queue = &vf->vf_queues[qid];

  for (i = 0; i < MAX_QUEUES_PER_QZONE; i++) {
   if (p_queue->cids[i].p_cid == OSAL_NULL)
    continue;

   if (!p_queue->cids[i].b_is_tx)
    continue;

   rc = ecore_set_txq_coalesce(p_hwfn, p_ptt, tx_coal,
          p_queue->cids[i].p_cid);
   if (rc != ECORE_SUCCESS) {
    DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
        "VF[%d]: Unable to set tx queue coalesce\n",
        vf->abs_vf_id);
    goto out;
   }
  }
  vf->tx_coal = tx_coal;
 }

out:
 ecore_ptt_release(p_hwfn, p_ptt);

 return rc;
}
