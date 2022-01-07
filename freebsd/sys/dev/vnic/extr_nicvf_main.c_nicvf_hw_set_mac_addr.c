
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mac_addr; int vf_id; int msg; } ;
union nic_mbx {TYPE_1__ mac; } ;
typedef int uint8_t ;
struct nicvf {int vf_id; } ;


 int ETHER_ADDR_LEN ;
 int NIC_MBOX_MSG_SET_MAC ;
 int memcpy (int ,int *,int ) ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static int
nicvf_hw_set_mac_addr(struct nicvf *nic, uint8_t *hwaddr)
{
 union nic_mbx mbx = {};

 mbx.mac.msg = NIC_MBOX_MSG_SET_MAC;
 mbx.mac.vf_id = nic->vf_id;
 memcpy(mbx.mac.mac_addr, hwaddr, ETHER_ADDR_LEN);

 return (nicvf_send_msg_to_pf(nic, &mbx));
}
