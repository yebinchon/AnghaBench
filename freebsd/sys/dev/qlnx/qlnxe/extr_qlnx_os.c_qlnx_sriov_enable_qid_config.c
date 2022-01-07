
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ecore_iov_vf_init_params {size_t num_queues; size_t rel_vf_id; size_t* req_rx_queue; size_t* req_tx_queue; size_t vport_id; size_t rss_eng_id; } ;
struct ecore_hwfn {int dummy; } ;


 int ECORE_PF_L2_QUE ;
 size_t FEAT_NUM (struct ecore_hwfn*,int ) ;

__attribute__((used)) static void
qlnx_sriov_enable_qid_config(struct ecore_hwfn *hwfn, u16 vfid,
 struct ecore_iov_vf_init_params *params)
{
        u16 base, i;





        base = FEAT_NUM(hwfn, ECORE_PF_L2_QUE) + vfid * params->num_queues;

        params->rel_vf_id = vfid;

        for (i = 0; i < params->num_queues; i++) {
                params->req_rx_queue[i] = base + i;
                params->req_tx_queue[i] = base + i;
        }


        params->vport_id = vfid + 1;
        params->rss_eng_id = vfid + 1;

 return;
}
