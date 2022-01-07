
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int msg; } ;
struct TYPE_9__ {int speed; int duplex; int link_up; } ;
struct TYPE_8__ {int ind_tbl_size; } ;
struct TYPE_6__ {int vf_id; int tns_mode; int loopback_supported; int mac_addr; int node_id; } ;
union nic_mbx {TYPE_5__ msg; TYPE_4__ link_status; int bgx_stats; TYPE_3__ rss_size; TYPE_1__ nic_cfg; } ;
typedef int uint64_t ;
struct TYPE_7__ {int rss_size; } ;
struct nicvf {int vf_id; int tns_mode; int speed; int dev; int ifp; int link_up; int duplex; void* pf_acked; TYPE_2__ rss_info; void* pf_nacked; int loopback_supported; int hwaddr; int node; } ;


 int ETHER_ADDR_LEN ;
 int FALSE ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int NICVF_INTR_MBOX ;






 int NIC_PF_VF_MAILBOX_SIZE ;
 int NIC_VF_PF_MAILBOX_0_1 ;
 void* TRUE ;
 int device_printf (int ,char*,int) ;
 int if_link_state_change (int ,int ) ;
 int if_setbaudrate (int ,int) ;
 int memcpy (int ,int ,int ) ;
 int nicvf_clear_intr (struct nicvf*,int ,int ) ;
 int nicvf_read_bgx_stats (struct nicvf*,int *) ;
 int nicvf_reg_read (struct nicvf*,int) ;

__attribute__((used)) static void
nicvf_handle_mbx_intr(struct nicvf *nic)
{
 union nic_mbx mbx = {};
 uint64_t *mbx_data;
 uint64_t mbx_addr;
 int i;

 mbx_addr = NIC_VF_PF_MAILBOX_0_1;
 mbx_data = (uint64_t *)&mbx;

 for (i = 0; i < NIC_PF_VF_MAILBOX_SIZE; i++) {
  *mbx_data = nicvf_reg_read(nic, mbx_addr);
  mbx_data++;
  mbx_addr += sizeof(uint64_t);
 }

 switch (mbx.msg.msg) {
 case 129:
  nic->pf_acked = TRUE;
  nic->vf_id = mbx.nic_cfg.vf_id & 0x7F;
  nic->tns_mode = mbx.nic_cfg.tns_mode & 0x7F;
  nic->node = mbx.nic_cfg.node_id;
  memcpy(nic->hwaddr, mbx.nic_cfg.mac_addr, ETHER_ADDR_LEN);
  nic->loopback_supported = mbx.nic_cfg.loopback_supported;
  nic->link_up = FALSE;
  nic->duplex = 0;
  nic->speed = 0;
  break;
 case 133:
  nic->pf_acked = TRUE;
  break;
 case 130:
  nic->pf_nacked = TRUE;
  break;
 case 128:
  nic->rss_info.rss_size = mbx.rss_size.ind_tbl_size;
  nic->pf_acked = TRUE;
  break;
 case 131:
  nicvf_read_bgx_stats(nic, &mbx.bgx_stats);
  nic->pf_acked = TRUE;
  break;
 case 132:
  nic->pf_acked = TRUE;
  nic->link_up = mbx.link_status.link_up;
  nic->duplex = mbx.link_status.duplex;
  nic->speed = mbx.link_status.speed;
  if (nic->link_up) {
   if_setbaudrate(nic->ifp, nic->speed * 1000000);
   if_link_state_change(nic->ifp, LINK_STATE_UP);
  } else {
   if_setbaudrate(nic->ifp, 0);
   if_link_state_change(nic->ifp, LINK_STATE_DOWN);
  }
  break;
 default:
  device_printf(nic->dev,
      "Invalid message from PF, msg 0x%x\n", mbx.msg.msg);
  break;
 }
 nicvf_clear_intr(nic, NICVF_INTR_MBOX, 0);
}
