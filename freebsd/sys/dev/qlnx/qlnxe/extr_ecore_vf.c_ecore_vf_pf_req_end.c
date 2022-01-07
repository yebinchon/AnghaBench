
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
union pfvf_tlvs {TYPE_2__ default_resp; } ;
struct ecore_hwfn {TYPE_3__* vf_iov_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_6__ {int mutex; union pfvf_tlvs* pf2vf_reply; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,int ) ;
 int ECORE_MSG_IOV ;
 int OSAL_MUTEX_RELEASE (int *) ;

__attribute__((used)) static void ecore_vf_pf_req_end(struct ecore_hwfn *p_hwfn,
     enum _ecore_status_t req_status)
{
 union pfvf_tlvs *resp = p_hwfn->vf_iov_info->pf2vf_reply;

 DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
     "VF request status = 0x%x, PF reply status = 0x%x\n",
     req_status, resp->default_resp.hdr.status);

 OSAL_MUTEX_RELEASE(&(p_hwfn->vf_iov_info->mutex));
}
