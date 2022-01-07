
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct virtchnl_queue_select {scalar_t__ vsi_id; } ;
struct TYPE_2__ {scalar_t__ vsi_num; int eth_stats; } ;
struct ixl_vf {TYPE_1__ vsi; } ;
struct ixl_pf {int dummy; } ;


 int I40E_ERR_PARAM ;
 int I40E_SUCCESS ;
 int VIRTCHNL_OP_GET_STATS ;
 int i40e_send_vf_nack (struct ixl_pf*,struct ixl_vf*,int ,int ) ;
 int ixl_send_vf_msg (struct ixl_pf*,struct ixl_vf*,int ,int ,int *,int) ;
 int ixl_update_eth_stats (TYPE_1__*) ;

__attribute__((used)) static void
ixl_vf_get_stats_msg(struct ixl_pf *pf, struct ixl_vf *vf, void *msg,
    uint16_t msg_size)
{
 struct virtchnl_queue_select *queue;

 if (msg_size != sizeof(*queue)) {
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_GET_STATS,
      I40E_ERR_PARAM);
  return;
 }

 queue = msg;
 if (queue->vsi_id != vf->vsi.vsi_num) {
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_GET_STATS,
      I40E_ERR_PARAM);
  return;
 }

 ixl_update_eth_stats(&vf->vsi);

 ixl_send_vf_msg(pf, vf, VIRTCHNL_OP_GET_STATS,
     I40E_SUCCESS, &vf->vsi.eth_stats, sizeof(vf->vsi.eth_stats));
}
