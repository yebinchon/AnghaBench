
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_frs; int vf_id; int msg; } ;
union nic_mbx {TYPE_1__ frs; } ;
struct nicvf {int vf_id; } ;


 int NIC_MBOX_MSG_SET_MAX_FRS ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static int
nicvf_update_hw_max_frs(struct nicvf *nic, int mtu)
{
 union nic_mbx mbx = {};

 mbx.frs.msg = NIC_MBOX_MSG_SET_MAX_FRS;
 mbx.frs.max_frs = mtu;
 mbx.frs.vf_id = nic->vf_id;

 return nicvf_send_msg_to_pf(nic, &mbx);
}
