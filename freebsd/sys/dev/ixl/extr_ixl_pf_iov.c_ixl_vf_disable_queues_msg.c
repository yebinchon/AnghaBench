
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct virtchnl_queue_select {scalar_t__ vsi_id; scalar_t__ rx_queues; scalar_t__ tx_queues; } ;
struct TYPE_2__ {scalar_t__ vsi_num; int num_tx_queues; int num_rx_queues; } ;
struct ixl_vf {int qtag; int vf_num; TYPE_1__ vsi; } ;
struct ixl_pf {int dev; } ;


 int I40E_ERR_PARAM ;
 int I40E_ERR_TIMEOUT ;
 int VIRTCHNL_OP_DISABLE_QUEUES ;
 int device_printf (int ,char*,int ,int) ;
 int i40e_send_vf_nack (struct ixl_pf*,struct ixl_vf*,int ,int ) ;
 int ixl_dbg_iov (struct ixl_pf*,char*,int ,int) ;
 int ixl_disable_rx_ring (struct ixl_pf*,int *,int) ;
 int ixl_disable_tx_ring (struct ixl_pf*,int *,int) ;
 int ixl_pf_qmgr_is_queue_configured (int *,int,int) ;
 int ixl_pf_qmgr_is_queue_enabled (int *,int,int) ;
 int ixl_pf_qmgr_mark_queue_disabled (int *,int,int) ;
 int ixl_send_vf_ack (struct ixl_pf*,struct ixl_vf*,int ) ;

__attribute__((used)) static void
ixl_vf_disable_queues_msg(struct ixl_pf *pf, struct ixl_vf *vf,
    void *msg, uint16_t msg_size)
{
 struct virtchnl_queue_select *select;
 int error = 0;

 if (msg_size != sizeof(*select)) {
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_DISABLE_QUEUES,
      I40E_ERR_PARAM);
  return;
 }

 select = msg;
 if (select->vsi_id != vf->vsi.vsi_num ||
     select->rx_queues == 0 || select->tx_queues == 0) {
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_DISABLE_QUEUES,
      I40E_ERR_PARAM);
  return;
 }


 for (int i = 0; i < 32; i++) {
  if ((1 << i) & select->tx_queues) {

   if (i >= vf->vsi.num_tx_queues) {
    device_printf(pf->dev, "VF %d: TX ring %d is outside of VF VSI allocation!\n",
        vf->vf_num, i);
    break;
   }

   if (!ixl_pf_qmgr_is_queue_configured(&vf->qtag, i, 1))
    continue;

   if (!ixl_pf_qmgr_is_queue_enabled(&vf->qtag, i, 1)) {
    ixl_dbg_iov(pf, "VF %d: TX ring %d is already disabled!\n",
        vf->vf_num, i);
    continue;
   }
   error = ixl_disable_tx_ring(pf, &vf->qtag, i);
   if (error)
    break;
   else
    ixl_pf_qmgr_mark_queue_disabled(&vf->qtag, i, 1);
  }
 }


 for (int i = 0; i < 32; i++) {
  if ((1 << i) & select->rx_queues) {

   if (i >= vf->vsi.num_rx_queues) {
    device_printf(pf->dev, "VF %d: RX ring %d is outside of VF VSI allocation!\n",
        vf->vf_num, i);
    break;
   }

   if (!ixl_pf_qmgr_is_queue_configured(&vf->qtag, i, 0))
    continue;

   if (!ixl_pf_qmgr_is_queue_enabled(&vf->qtag, i, 0)) {
    ixl_dbg_iov(pf, "VF %d: RX ring %d is already disabled!\n",
        vf->vf_num, i);
    continue;
   }
   error = ixl_disable_rx_ring(pf, &vf->qtag, i);
   if (error)
    break;
   else
    ixl_pf_qmgr_mark_queue_disabled(&vf->qtag, i, 0);
  }
 }

 if (error) {
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_DISABLE_QUEUES,
      I40E_ERR_TIMEOUT);
  return;
 }

 ixl_send_vf_ack(pf, vf, VIRTCHNL_OP_DISABLE_QUEUES);
}
