
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfpf_qid_tlv {int qid; } ;
struct TYPE_3__ {int capabilities; } ;
struct TYPE_4__ {TYPE_1__ pfdev_info; } ;
struct ecore_vf_iov {int offset; TYPE_2__ acquire_resp; } ;
struct ecore_queue_cid {int qid_usage_idx; } ;
struct ecore_hwfn {struct ecore_vf_iov* vf_iov_info; } ;


 int CHANNEL_TLV_QID ;
 int PFVF_ACQUIRE_CAP_QUEUE_QIDS ;
 struct vfpf_qid_tlv* ecore_add_tlv (int *,int ,int) ;

__attribute__((used)) static void ecore_vf_pf_add_qid(struct ecore_hwfn *p_hwfn,
    struct ecore_queue_cid *p_cid)
{
 struct ecore_vf_iov *p_iov = p_hwfn->vf_iov_info;
 struct vfpf_qid_tlv *p_qid_tlv;


 if (!(p_iov->acquire_resp.pfdev_info.capabilities &
       PFVF_ACQUIRE_CAP_QUEUE_QIDS))
  return;

 p_qid_tlv = ecore_add_tlv(&p_iov->offset,
      CHANNEL_TLV_QID, sizeof(*p_qid_tlv));
 p_qid_tlv->qid = p_cid->qid_usage_idx;
}
