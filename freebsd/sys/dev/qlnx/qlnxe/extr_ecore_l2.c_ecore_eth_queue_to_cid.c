
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ecore_queue_start_common_params {int dummy; } ;
struct ecore_queue_cid_vf_params {int vf_legacy; int vf_qid; int vfid; } ;
struct ecore_queue_cid {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_CXT_PF_CID ;
 int ECORE_QCID_LEGACY_VF_CID ;
 scalar_t__ ECORE_SUCCESS ;
 scalar_t__ IS_PF (int ) ;
 struct ecore_queue_cid* OSAL_NULL ;
 int PROTOCOLID_ETH ;
 scalar_t__ _ecore_cxt_acquire_cid (struct ecore_hwfn*,int ,int *,int ) ;
 int _ecore_cxt_release_cid (struct ecore_hwfn*,int ,int ) ;
 struct ecore_queue_cid* _ecore_eth_queue_to_cid (struct ecore_hwfn*,int ,int ,struct ecore_queue_start_common_params*,int,struct ecore_queue_cid_vf_params*) ;

struct ecore_queue_cid *
ecore_eth_queue_to_cid(struct ecore_hwfn *p_hwfn, u16 opaque_fid,
         struct ecore_queue_start_common_params *p_params,
         bool b_is_rx,
         struct ecore_queue_cid_vf_params *p_vf_params)
{
 struct ecore_queue_cid *p_cid;
 u8 vfid = ECORE_CXT_PF_CID;
 bool b_legacy_vf = 0;
 u32 cid = 0;





 if (p_vf_params) {
  vfid = p_vf_params->vfid;

  if (p_vf_params->vf_legacy &
      ECORE_QCID_LEGACY_VF_CID) {
   b_legacy_vf = 1;
   cid = p_vf_params->vf_qid;
  }
 }





 if (IS_PF(p_hwfn->p_dev) && !b_legacy_vf) {
  if (_ecore_cxt_acquire_cid(p_hwfn, PROTOCOLID_ETH,
        &cid, vfid) != ECORE_SUCCESS) {
   DP_NOTICE(p_hwfn, 1, "Failed to acquire cid\n");
   return OSAL_NULL;
  }
 }

 p_cid = _ecore_eth_queue_to_cid(p_hwfn, opaque_fid, cid,
     p_params, b_is_rx, p_vf_params);
 if ((p_cid == OSAL_NULL) && IS_PF(p_hwfn->p_dev) && !b_legacy_vf)
  _ecore_cxt_release_cid(p_hwfn, cid, vfid);

 return p_cid;
}
