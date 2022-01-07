
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ecore_queue_start_common_params {int sb_idx; TYPE_1__* p_sb; int stats_id; int queue_id; int vport_id; } ;
struct TYPE_4__ {int stats_id; int queue_id; int vport_id; } ;
struct ecore_queue_cid_vf_params {int b_is_rx; scalar_t__ vfid; int sb_idx; int sb_igu_id; TYPE_2__ abs; TYPE_2__ rel; int qid_usage_idx; int cid; int opaque_fid; int vf_legacy; int vf_qid; struct ecore_hwfn* p_owner; } ;
struct ecore_queue_cid {int b_is_rx; scalar_t__ vfid; int sb_idx; int sb_igu_id; TYPE_2__ abs; TYPE_2__ rel; int qid_usage_idx; int cid; int opaque_fid; int vf_legacy; int vf_qid; struct ecore_hwfn* p_owner; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {int igu_sb_id; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ECORE_MSG_SP ;
 scalar_t__ ECORE_QUEUE_CID_PF ;
 int ECORE_SUCCESS ;
 scalar_t__ IS_VF (int ) ;
 struct ecore_queue_cid_vf_params* OSAL_NULL ;
 int OSAL_VFREE (int ,struct ecore_queue_cid_vf_params*) ;
 struct ecore_queue_cid_vf_params* OSAL_VZALLOC (int ,int) ;
 int ecore_eth_queue_qid_usage_add (struct ecore_hwfn*,struct ecore_queue_cid_vf_params*) ;
 int ecore_fw_l2_queue (struct ecore_hwfn*,int ,int *) ;
 int ecore_fw_vport (struct ecore_hwfn*,int ,int *) ;

__attribute__((used)) static struct ecore_queue_cid *
_ecore_eth_queue_to_cid(struct ecore_hwfn *p_hwfn,
   u16 opaque_fid, u32 cid,
   struct ecore_queue_start_common_params *p_params,
   bool b_is_rx,
   struct ecore_queue_cid_vf_params *p_vf_params)
{
 struct ecore_queue_cid *p_cid;
 enum _ecore_status_t rc;

 p_cid = OSAL_VZALLOC(p_hwfn->p_dev, sizeof(*p_cid));
 if (p_cid == OSAL_NULL)
  return OSAL_NULL;

 p_cid->opaque_fid = opaque_fid;
 p_cid->cid = cid;
 p_cid->p_owner = p_hwfn;


 p_cid->rel.vport_id = p_params->vport_id;
 p_cid->rel.queue_id = p_params->queue_id;
 p_cid->rel.stats_id = p_params->stats_id;
 p_cid->sb_igu_id = p_params->p_sb->igu_sb_id;
 p_cid->b_is_rx = b_is_rx;
 p_cid->sb_idx = p_params->sb_idx;


 if (p_vf_params != OSAL_NULL) {
  p_cid->vfid = p_vf_params->vfid;
  p_cid->vf_qid = p_vf_params->vf_qid;
  p_cid->vf_legacy = p_vf_params->vf_legacy;
 } else {
  p_cid->vfid = ECORE_QUEUE_CID_PF;
 }


 if (IS_VF(p_hwfn->p_dev)) {
  p_cid->abs = p_cid->rel;

  goto out;
 }





 rc = ecore_fw_vport(p_hwfn, p_cid->rel.vport_id, &p_cid->abs.vport_id);
 if (rc != ECORE_SUCCESS)
  goto fail;

 rc = ecore_fw_l2_queue(p_hwfn, p_cid->rel.queue_id,
          &p_cid->abs.queue_id);
 if (rc != ECORE_SUCCESS)
  goto fail;




 if (p_cid->vfid == ECORE_QUEUE_CID_PF) {
  rc = ecore_fw_vport(p_hwfn, p_cid->rel.stats_id,
        &p_cid->abs.stats_id);
  if (rc != ECORE_SUCCESS)
   goto fail;
 } else {
  p_cid->abs.stats_id = p_cid->rel.stats_id;
 }

out:



 if (!p_vf_params) {
  if (!ecore_eth_queue_qid_usage_add(p_hwfn, p_cid))
   goto fail;
 } else {
  p_cid->qid_usage_idx = p_vf_params->qid_usage_idx;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_SP,
     "opaque_fid: %04x CID %08x vport %02x [%02x] qzone %04x.%02x [%04x] stats %02x [%02x] SB %04x PI %02x\n",
     p_cid->opaque_fid, p_cid->cid,
     p_cid->rel.vport_id, p_cid->abs.vport_id,
     p_cid->rel.queue_id, p_cid->qid_usage_idx,
     p_cid->abs.queue_id,
     p_cid->rel.stats_id, p_cid->abs.stats_id,
     p_cid->sb_igu_id, p_cid->sb_idx);

 return p_cid;

fail:
 OSAL_VFREE(p_hwfn->p_dev, p_cid);
 return OSAL_NULL;
}
