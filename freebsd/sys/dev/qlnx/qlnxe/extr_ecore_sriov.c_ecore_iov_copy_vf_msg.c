
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union vfpf_tlvs {int dummy; } vfpf_tlvs ;
typedef int u16 ;
struct TYPE_2__ {int req_phys; int pending_req; } ;
struct ecore_vf_info {TYPE_1__ vf_mbx; int abs_vf_id; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dmae_params {int flags; int src_vfid; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;
 int ECORE_DMAE_FLAG_COMPLETION_DST ;
 int ECORE_DMAE_FLAG_VF_SRC ;
 int ECORE_INVAL ;
 int ECORE_IO ;
 int ECORE_MSG_IOV ;
 int ECORE_SUCCESS ;
 int OSAL_MEMSET (struct ecore_dmae_params*,int ,int) ;
 scalar_t__ ecore_dmae_host2host (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int,struct ecore_dmae_params*) ;
 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;

enum _ecore_status_t ecore_iov_copy_vf_msg(struct ecore_hwfn *p_hwfn,
        struct ecore_ptt *ptt,
        int vfid)
{
 struct ecore_dmae_params params;
 struct ecore_vf_info *vf_info;

 vf_info = ecore_iov_get_vf_info(p_hwfn, (u16)vfid, 1);
 if (!vf_info)
  return ECORE_INVAL;

 OSAL_MEMSET(&params, 0, sizeof(struct ecore_dmae_params));
 params.flags = ECORE_DMAE_FLAG_VF_SRC |
         ECORE_DMAE_FLAG_COMPLETION_DST;
 params.src_vfid = vf_info->abs_vf_id;

 if (ecore_dmae_host2host(p_hwfn, ptt,
     vf_info->vf_mbx.pending_req,
     vf_info->vf_mbx.req_phys,
     sizeof(union vfpf_tlvs) / 4,
     &params)) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "Failed to copy message from VF 0x%02x\n",
      vfid);

  return ECORE_IO;
 }

 return ECORE_SUCCESS;
}
