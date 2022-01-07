
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ link_up; int speed; int duplex; int msg; } ;
union nic_mbx {TYPE_2__ link_status; } ;
typedef size_t uint8_t ;
struct nicpf {size_t num_vf_en; scalar_t__* link; int check_link; int * speed; int * duplex; int * mbx_lock; int node; int * vf_lmac_map; TYPE_1__* vf_info; } ;
struct bgx_link_status {scalar_t__ link_up; int speed; int duplex; } ;
struct TYPE_3__ {int vf_enabled; } ;


 size_t NIC_GET_BGX_FROM_VF_LMAC_MAP (int ) ;
 size_t NIC_GET_LMAC_FROM_VF_LMAC_MAP (int ) ;
 int NIC_MBOX_MSG_BGX_LINK_CHANGE ;
 int bgx_get_lmac_link_state (int ,size_t,size_t,struct bgx_link_status*) ;
 int callout_reset (int *,int,void (*) (void*),struct nicpf*) ;
 int hz ;
 int nic_send_msg_to_vf (struct nicpf*,size_t,union nic_mbx*) ;

__attribute__((used)) static void
nic_poll_for_link(void *arg)
{
 union nic_mbx mbx = {};
 struct nicpf *nic;
 struct bgx_link_status link;
 uint8_t vf, bgx, lmac;

 nic = (struct nicpf *)arg;

 mbx.link_status.msg = NIC_MBOX_MSG_BGX_LINK_CHANGE;

 for (vf = 0; vf < nic->num_vf_en; vf++) {

  if (!nic->vf_info[vf].vf_enabled)
   continue;


  bgx = NIC_GET_BGX_FROM_VF_LMAC_MAP(nic->vf_lmac_map[vf]);
  lmac = NIC_GET_LMAC_FROM_VF_LMAC_MAP(nic->vf_lmac_map[vf]);

  bgx_get_lmac_link_state(nic->node, bgx, lmac, &link);


  if (nic->link[vf] == link.link_up)
   continue;

  if (!nic->mbx_lock[vf]) {
   nic->link[vf] = link.link_up;
   nic->duplex[vf] = link.duplex;
   nic->speed[vf] = link.speed;


   mbx.link_status.link_up = link.link_up;
   mbx.link_status.duplex = link.duplex;
   mbx.link_status.speed = link.speed;
   nic_send_msg_to_vf(nic, vf, &mbx);
  }
 }
 callout_reset(&nic->check_link, hz * 2, nic_poll_for_link, nic);
}
