
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ecore_vf_queue {TYPE_1__* cids; } ;
struct ecore_vf_info {int relative_vf_id; int acquire; int shadow_config; struct ecore_vf_queue* vf_queues; scalar_t__ num_active_rxqs; int num_sbs; int num_txqs; int num_rxqs; scalar_t__ configured_features; scalar_t__ vport_instance; scalar_t__ vf_bulletin; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_2__ {scalar_t__ p_cid; } ;


 size_t ECORE_MAX_VF_CHAINS_PER_PF ;
 size_t MAX_QUEUES_PER_QZONE ;
 int OSAL_IOV_VF_CLEANUP (struct ecore_hwfn*,int ) ;
 int OSAL_MEMSET (int *,int ,int) ;
 scalar_t__ OSAL_NULL ;
 int ecore_eth_queue_cid_release (struct ecore_hwfn*,scalar_t__) ;

__attribute__((used)) static void ecore_iov_vf_cleanup(struct ecore_hwfn *p_hwfn,
     struct ecore_vf_info *p_vf)
{
 u32 i, j;

 p_vf->vf_bulletin = 0;
 p_vf->vport_instance = 0;
 p_vf->configured_features = 0;


 p_vf->num_rxqs = p_vf->num_sbs;
 p_vf->num_txqs = p_vf->num_sbs;

 p_vf->num_active_rxqs = 0;

 for (i = 0; i < ECORE_MAX_VF_CHAINS_PER_PF; i++) {
  struct ecore_vf_queue *p_queue = &p_vf->vf_queues[i];

  for (j = 0; j < MAX_QUEUES_PER_QZONE; j++) {
   if (!p_queue->cids[j].p_cid)
    continue;

   ecore_eth_queue_cid_release(p_hwfn,
          p_queue->cids[j].p_cid);
   p_queue->cids[j].p_cid = OSAL_NULL;
  }
 }

 OSAL_MEMSET(&p_vf->shadow_config, 0, sizeof(p_vf->shadow_config));
 OSAL_MEMSET(&p_vf->acquire, 0, sizeof(p_vf->acquire));
 OSAL_IOV_VF_CLEANUP(p_hwfn, p_vf->relative_vf_id);
}
