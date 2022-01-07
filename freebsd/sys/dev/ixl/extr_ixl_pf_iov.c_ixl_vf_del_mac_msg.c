
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct virtchnl_ether_addr_list {int num_elements; scalar_t__ vsi_id; struct virtchnl_ether_addr* list; } ;
struct virtchnl_ether_addr {int addr; } ;
struct TYPE_2__ {scalar_t__ vsi_num; } ;
struct ixl_vf {TYPE_1__ vsi; } ;
struct ixl_pf {int dummy; } ;


 int I40E_ERR_PARAM ;
 int IXL_VLAN_ANY ;
 int VIRTCHNL_OP_ADD_ETH_ADDR ;
 int VIRTCHNL_OP_DEL_ETH_ADDR ;
 int i40e_send_vf_nack (struct ixl_pf*,struct ixl_vf*,int ,int ) ;
 scalar_t__ ixl_bcast_mac (int ) ;
 int ixl_del_filter (TYPE_1__*,int ,int ) ;
 int ixl_send_vf_ack (struct ixl_pf*,struct ixl_vf*,int ) ;
 scalar_t__ ixl_zero_mac (int ) ;

__attribute__((used)) static void
ixl_vf_del_mac_msg(struct ixl_pf *pf, struct ixl_vf *vf, void *msg,
    uint16_t msg_size)
{
 struct virtchnl_ether_addr_list *addr_list;
 struct virtchnl_ether_addr *addr;
 size_t expected_size;
 int i;

 if (msg_size < sizeof(*addr_list)) {
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_ADD_ETH_ADDR,
      I40E_ERR_PARAM);
  return;
 }

 addr_list = msg;
 expected_size = sizeof(*addr_list) +
     addr_list->num_elements * sizeof(*addr);

 if (addr_list->num_elements == 0 ||
     addr_list->vsi_id != vf->vsi.vsi_num ||
     msg_size != expected_size) {
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_ADD_ETH_ADDR,
      I40E_ERR_PARAM);
  return;
 }

 for (i = 0; i < addr_list->num_elements; i++) {
  addr = &addr_list->list[i];
  if (ixl_zero_mac(addr->addr) || ixl_bcast_mac(addr->addr)) {
   i40e_send_vf_nack(pf, vf,
       VIRTCHNL_OP_ADD_ETH_ADDR, I40E_ERR_PARAM);
   return;
  }
 }

 for (i = 0; i < addr_list->num_elements; i++) {
  addr = &addr_list->list[i];
  ixl_del_filter(&vf->vsi, addr->addr, IXL_VLAN_ANY);
 }

 ixl_send_vf_ack(pf, vf, VIRTCHNL_OP_DEL_ETH_ADDR);
}
