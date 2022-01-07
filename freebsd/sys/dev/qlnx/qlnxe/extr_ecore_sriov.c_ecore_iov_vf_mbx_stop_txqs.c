
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct vfpf_stop_txqs_tlv {int num_txqs; int tx_qid; } ;
struct pfvf_def_resp_tlv {int dummy; } ;
struct ecore_iov_vf_mbx {TYPE_1__* req_virt; } ;
struct ecore_vf_info {int relative_vf_id; struct ecore_iov_vf_mbx vf_mbx; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {struct vfpf_stop_txqs_tlv stop_txqs; } ;


 int CHANNEL_TLV_STOP_TXQS ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ) ;
 scalar_t__ ECORE_IOV_QID_INVALID ;
 int ECORE_MSG_IOV ;
 int ECORE_SUCCESS ;
 scalar_t__ PFVF_STATUS_FAILURE ;
 scalar_t__ PFVF_STATUS_NOT_SUPPORTED ;
 scalar_t__ PFVF_STATUS_SUCCESS ;
 int ecore_iov_prepare_resp (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int ,int,scalar_t__) ;
 scalar_t__ ecore_iov_vf_mbx_qid (struct ecore_hwfn*,struct ecore_vf_info*,int) ;
 int ecore_iov_vf_stop_txqs (struct ecore_hwfn*,struct ecore_vf_info*,int ,scalar_t__) ;

__attribute__((used)) static void ecore_iov_vf_mbx_stop_txqs(struct ecore_hwfn *p_hwfn,
           struct ecore_ptt *p_ptt,
           struct ecore_vf_info *vf)
{
 u16 length = sizeof(struct pfvf_def_resp_tlv);
 struct ecore_iov_vf_mbx *mbx = &vf->vf_mbx;
 u8 status = PFVF_STATUS_FAILURE;
 struct vfpf_stop_txqs_tlv *req;
 u8 qid_usage_idx;
 enum _ecore_status_t rc;





 req = &mbx->req_virt->stop_txqs;
 if (req->num_txqs != 1) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "Odd; VF[%d] tried stopping multiple Tx queues\n",
      vf->relative_vf_id);
  status = PFVF_STATUS_NOT_SUPPORTED;
  goto out;
 }


 qid_usage_idx = ecore_iov_vf_mbx_qid(p_hwfn, vf, 1);
 if (qid_usage_idx == ECORE_IOV_QID_INVALID)
  goto out;

 rc = ecore_iov_vf_stop_txqs(p_hwfn, vf, req->tx_qid,
        qid_usage_idx);
 if (rc == ECORE_SUCCESS)
  status = PFVF_STATUS_SUCCESS;

out:
 ecore_iov_prepare_resp(p_hwfn, p_ptt, vf, CHANNEL_TLV_STOP_TXQS,
          length, status);
}
