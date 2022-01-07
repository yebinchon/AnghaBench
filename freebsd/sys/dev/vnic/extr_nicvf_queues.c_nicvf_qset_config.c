
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cfg; int num; int msg; } ;
union nic_mbx {TYPE_1__ qs; } ;
struct queue_set {int vnic_id; scalar_t__ enable; } ;
struct qs_cfg {int ena; int vnic; } ;
struct nicvf {int vf_id; int dev; struct queue_set* qs; } ;
typedef scalar_t__ boolean_t ;


 int NIC_MBOX_MSG_QS_CFG ;
 int device_printf (int ,char*) ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

void
nicvf_qset_config(struct nicvf *nic, boolean_t enable)
{
 union nic_mbx mbx = {};
 struct queue_set *qs;
 struct qs_cfg *qs_cfg;

 qs = nic->qs;
 if (qs == ((void*)0)) {
  device_printf(nic->dev,
      "Qset is still not allocated, don't init queues\n");
  return;
 }

 qs->enable = enable;
 qs->vnic_id = nic->vf_id;


 mbx.qs.msg = NIC_MBOX_MSG_QS_CFG;
 mbx.qs.num = qs->vnic_id;

 mbx.qs.cfg = 0;
 qs_cfg = (struct qs_cfg *)&mbx.qs.cfg;
 if (qs->enable) {
  qs_cfg->ena = 1;
  qs_cfg->vnic = qs->vnic_id;
 }
 nicvf_send_msg_to_pf(nic, &mbx);
}
