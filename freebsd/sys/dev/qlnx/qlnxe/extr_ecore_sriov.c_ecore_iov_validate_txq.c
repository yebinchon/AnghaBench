
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ecore_vf_info {scalar_t__ num_txqs; int abs_vf_id; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum ecore_iov_validate_q_mode { ____Placeholder_ecore_iov_validate_q_mode } ecore_iov_validate_q_mode ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,scalar_t__,scalar_t__) ;
 int ECORE_MSG_IOV ;
 int ecore_iov_validate_queue_mode (struct ecore_vf_info*,scalar_t__,int,int) ;

__attribute__((used)) static bool ecore_iov_validate_txq(struct ecore_hwfn *p_hwfn,
       struct ecore_vf_info *p_vf,
       u16 tx_qid,
       enum ecore_iov_validate_q_mode mode)
{
 if (tx_qid >= p_vf->num_txqs) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "VF[0x%02x] - can't touch Tx queue[%04x]; Only 0x%04x are allocated\n",
      p_vf->abs_vf_id, tx_qid, p_vf->num_txqs);
  return 0;
 }

 return ecore_iov_validate_queue_mode(p_vf, tx_qid, mode, 1);
}
