
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vf_id; int loopback_supported; int node_id; int mac_addr; int tns_mode; int msg; } ;
union nic_mbx {TYPE_1__ nic_cfg; } ;
typedef int uint8_t ;
struct nicpf {int flags; int node; int * vf_lmac_map; } ;


 int ETHER_ADDR_LEN ;
 int MAX_LMAC ;
 int NIC_GET_BGX_FROM_VF_LMAC_MAP (int ) ;
 int NIC_GET_LMAC_FROM_VF_LMAC_MAP (int ) ;
 int NIC_MBOX_MSG_READY ;
 int NIC_TNS_BYPASS_MODE ;
 int NIC_TNS_ENABLED ;
 int NIC_TNS_MODE ;
 char* bgx_get_lmac_mac (int ,int,int) ;
 int memcpy (int *,char const*,int ) ;
 int nic_send_msg_to_vf (struct nicpf*,int,union nic_mbx*) ;

__attribute__((used)) static void
nic_mbx_send_ready(struct nicpf *nic, int vf)
{
 union nic_mbx mbx = {};
 int bgx_idx, lmac;
 const char *mac;

 mbx.nic_cfg.msg = NIC_MBOX_MSG_READY;
 mbx.nic_cfg.vf_id = vf;

 if (nic->flags & NIC_TNS_ENABLED)
  mbx.nic_cfg.tns_mode = NIC_TNS_MODE;
 else
  mbx.nic_cfg.tns_mode = NIC_TNS_BYPASS_MODE;

 if (vf < MAX_LMAC) {
  bgx_idx = NIC_GET_BGX_FROM_VF_LMAC_MAP(nic->vf_lmac_map[vf]);
  lmac = NIC_GET_LMAC_FROM_VF_LMAC_MAP(nic->vf_lmac_map[vf]);

  mac = bgx_get_lmac_mac(nic->node, bgx_idx, lmac);
  if (mac) {
   memcpy((uint8_t *)&mbx.nic_cfg.mac_addr, mac,
       ETHER_ADDR_LEN);
  }
 }
 mbx.nic_cfg.node_id = nic->node;

 mbx.nic_cfg.loopback_supported = vf < MAX_LMAC;

 nic_send_msg_to_vf(nic, vf, &mbx);
}
