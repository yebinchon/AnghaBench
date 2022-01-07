
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,int ,scalar_t__) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ) ;
 int ECORE_INVAL ;
 int ECORE_MSG_RDMA ;
 int ECORE_RDMA_DEREGISTER_TIMEOUT_MSEC ;
 int ECORE_SUCCESS ;
 int ECORE_TIMEOUT ;
 int ECORE_UNKNOWN_ERROR ;
 int OSAL_MSLEEP (int ) ;
 scalar_t__ RDMA_RETURN_DEREGISTER_MR_BAD_STATE_ERR ;
 scalar_t__ RDMA_RETURN_NIG_DRAIN_REQ ;
 scalar_t__ RDMA_RETURN_OK ;
 int ecore_mcp_drain (struct ecore_hwfn*,struct ecore_ptt*) ;
 struct ecore_ptt* ecore_ptt_acquire (struct ecore_hwfn*) ;
 int ecore_ptt_release (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_rdma_send_deregister_tid_ramrod (struct ecore_hwfn*,int ,scalar_t__*) ;

enum _ecore_status_t ecore_rdma_deregister_tid(void *rdma_cxt,
            u32 itid)
{
 enum _ecore_status_t rc;
 u8 fw_ret_code;
 struct ecore_ptt *p_ptt;
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;


 rc = ecore_rdma_send_deregister_tid_ramrod(p_hwfn, itid, &fw_ret_code);
 if (rc != ECORE_SUCCESS)
  return rc;

 if (fw_ret_code != RDMA_RETURN_NIG_DRAIN_REQ)
  goto done;
 OSAL_MSLEEP(ECORE_RDMA_DEREGISTER_TIMEOUT_MSEC);
 rc = ecore_rdma_send_deregister_tid_ramrod(p_hwfn, itid, &fw_ret_code);
 if (rc != ECORE_SUCCESS)
  return rc;

 if (fw_ret_code != RDMA_RETURN_NIG_DRAIN_REQ)
  goto done;


 p_ptt = ecore_ptt_acquire(p_hwfn);
 if (!p_ptt)
  return ECORE_TIMEOUT;

 rc = ecore_mcp_drain(p_hwfn, p_ptt);
 if (rc != ECORE_SUCCESS) {
  ecore_ptt_release(p_hwfn, p_ptt);
  return rc;
 }

 ecore_ptt_release(p_hwfn, p_ptt);

 rc = ecore_rdma_send_deregister_tid_ramrod(p_hwfn, itid, &fw_ret_code);
 if (rc != ECORE_SUCCESS)
  return rc;

done:
 if (fw_ret_code == RDMA_RETURN_OK) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "De-registered itid=%d\n",
      itid);
  return ECORE_SUCCESS;
 } else if (fw_ret_code == RDMA_RETURN_DEREGISTER_MR_BAD_STATE_ERR) {






  DP_NOTICE(p_hwfn, 0, "itid=%d, fw_ret_code=%d\n", itid,
     fw_ret_code);
  return ECORE_INVAL;
 } else {
  DP_NOTICE(p_hwfn, 1,
     "deregister failed after three attempts. itid=%d, fw_ret_code=%d\n",
     itid, fw_ret_code);
  return ECORE_UNKNOWN_ERROR;
 }
}
