
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_queue_cid {int vf_legacy; scalar_t__ vfid; int cid; } ;
struct ecore_hwfn {int p_dev; } ;


 int ECORE_QCID_LEGACY_VF_CID ;
 scalar_t__ ECORE_QUEUE_CID_PF ;
 scalar_t__ IS_PF (int ) ;
 int OSAL_VFREE (int ,struct ecore_queue_cid*) ;
 int _ecore_cxt_release_cid (struct ecore_hwfn*,int ,scalar_t__) ;
 int ecore_eth_queue_qid_usage_del (struct ecore_hwfn*,struct ecore_queue_cid*) ;

void ecore_eth_queue_cid_release(struct ecore_hwfn *p_hwfn,
     struct ecore_queue_cid *p_cid)
{
 bool b_legacy_vf = !!(p_cid->vf_legacy &
         ECORE_QCID_LEGACY_VF_CID);




 if (IS_PF(p_hwfn->p_dev) && !b_legacy_vf)
  _ecore_cxt_release_cid(p_hwfn, p_cid->cid, p_cid->vfid);


 if (p_cid->vfid == ECORE_QUEUE_CID_PF)
  ecore_eth_queue_qid_usage_del(p_hwfn, p_cid);

 OSAL_VFREE(p_hwfn->p_dev, p_cid);
}
