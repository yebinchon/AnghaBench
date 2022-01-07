
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int msg; } ;
struct TYPE_11__ {int vf_id; int max_frs; } ;
struct TYPE_10__ {int vf_id; int mac_addr; } ;
struct TYPE_14__ {int qs_num; int sq_num; int cfg; } ;
struct TYPE_9__ {int num; int cfg; } ;
struct TYPE_8__ {int qs_num; int rq_num; int cfg; } ;
union nic_mbx {TYPE_6__ msg; int lbk; int bgx_stats; int rss_cfg; int cpi_cfg; TYPE_4__ frs; TYPE_3__ mac; TYPE_7__ sq; TYPE_2__ qs; TYPE_1__ rq; } ;
typedef int uint64_t ;
struct nicpf {void** mbx_lock; int dev; TYPE_5__* vf_info; int node; int * vf_lmac_map; int * speed; int * duplex; int * link; } ;
struct TYPE_12__ {void* vf_enabled; } ;


 void* FALSE ;
 int MAX_LMAC ;
 int NIC_GET_BGX_FROM_VF_LMAC_MAP (int ) ;
 int NIC_GET_LMAC_FROM_VF_LMAC_MAP (int ) ;
 int NIC_PF_QSET_0_127_CFG ;
 int NIC_PF_QSET_0_127_RQ_0_7_BP_CFG ;
 int NIC_PF_QSET_0_127_RQ_0_7_CFG ;
 int NIC_PF_QSET_0_127_RQ_0_7_DROP_CFG ;
 int NIC_PF_QSET_0_127_SQ_0_7_CFG ;
 int NIC_PF_VF_MAILBOX_SIZE ;
 int NIC_QS_ID_SHIFT ;
 int NIC_Q_NUM_SHIFT ;
 void* TRUE ;
 int bgx_set_lmac_mac (int ,int,int,int ) ;
 int device_printf (int ,char*,int,int) ;
 int nic_config_cpi (struct nicpf*,int *) ;
 int nic_config_loopback (struct nicpf*,int *) ;
 int nic_config_rss (struct nicpf*,int *) ;
 int nic_get_bgx_stats (struct nicpf*,int *) ;
 int nic_get_mbx_addr (int) ;
 int nic_mbx_send_ack (struct nicpf*,int) ;
 int nic_mbx_send_nack (struct nicpf*,int) ;
 int nic_mbx_send_ready (struct nicpf*,int) ;
 int nic_rcv_queue_sw_sync (struct nicpf*) ;
 int nic_reg_read (struct nicpf*,int) ;
 int nic_reg_write (struct nicpf*,int,int) ;
 int nic_send_rss_size (struct nicpf*,int) ;
 int nic_tx_channel_cfg (struct nicpf*,int,TYPE_7__*) ;
 int nic_update_hw_frs (struct nicpf*,int ,int ) ;

__attribute__((used)) static void
nic_handle_mbx_intr(struct nicpf *nic, int vf)
{
 union nic_mbx mbx = {};
 uint64_t *mbx_data;
 uint64_t mbx_addr;
 uint64_t reg_addr;
 uint64_t cfg;
 int bgx, lmac;
 int i;
 int ret = 0;

 nic->mbx_lock[vf] = TRUE;

 mbx_addr = nic_get_mbx_addr(vf);
 mbx_data = (uint64_t *)&mbx;

 for (i = 0; i < NIC_PF_VF_MAILBOX_SIZE; i++) {
  *mbx_data = nic_reg_read(nic, mbx_addr);
  mbx_data++;
  mbx_addr += sizeof(uint64_t);
 }

 switch (mbx.msg.msg) {
 case 139:
  nic_mbx_send_ready(nic, vf);
  if (vf < MAX_LMAC) {
   nic->link[vf] = 0;
   nic->duplex[vf] = 0;
   nic->speed[vf] = 0;
  }
  ret = 1;
  break;
 case 140:
  reg_addr = NIC_PF_QSET_0_127_CFG |
      (mbx.qs.num << NIC_QS_ID_SHIFT);
  cfg = mbx.qs.cfg;
  nic_reg_write(nic, reg_addr, cfg);
  break;
 case 137:
  reg_addr = NIC_PF_QSET_0_127_RQ_0_7_CFG |
      (mbx.rq.qs_num << NIC_QS_ID_SHIFT) |
      (mbx.rq.rq_num << NIC_Q_NUM_SHIFT);
  nic_reg_write(nic, reg_addr, mbx.rq.cfg);
  break;
 case 138:
  reg_addr = NIC_PF_QSET_0_127_RQ_0_7_BP_CFG |
      (mbx.rq.qs_num << NIC_QS_ID_SHIFT) |
      (mbx.rq.rq_num << NIC_Q_NUM_SHIFT);
  nic_reg_write(nic, reg_addr, mbx.rq.cfg);
  break;
 case 135:
  ret = nic_rcv_queue_sw_sync(nic);
  break;
 case 136:
  reg_addr = NIC_PF_QSET_0_127_RQ_0_7_DROP_CFG |
      (mbx.rq.qs_num << NIC_QS_ID_SHIFT) |
      (mbx.rq.rq_num << NIC_Q_NUM_SHIFT);
  nic_reg_write(nic, reg_addr, mbx.rq.cfg);
  break;
 case 128:
  reg_addr = NIC_PF_QSET_0_127_SQ_0_7_CFG |
      (mbx.sq.qs_num << NIC_QS_ID_SHIFT) |
      (mbx.sq.sq_num << NIC_Q_NUM_SHIFT);
  nic_reg_write(nic, reg_addr, mbx.sq.cfg);
  nic_tx_channel_cfg(nic, mbx.qs.num, &mbx.sq);
  break;
 case 131:
  lmac = mbx.mac.vf_id;
  bgx = NIC_GET_BGX_FROM_VF_LMAC_MAP(nic->vf_lmac_map[lmac]);
  lmac = NIC_GET_LMAC_FROM_VF_LMAC_MAP(nic->vf_lmac_map[lmac]);
  bgx_set_lmac_mac(nic->node, bgx, lmac, mbx.mac.mac_addr);
  break;
 case 130:
  ret = nic_update_hw_frs(nic, mbx.frs.max_frs, mbx.frs.vf_id);
  break;
 case 142:
  nic_config_cpi(nic, &mbx.cpi_cfg);
  break;
 case 132:
  nic_send_rss_size(nic, vf);
  goto unlock;
 case 134:
 case 133:
  nic_config_rss(nic, &mbx.rss_cfg);
  break;
 case 143:

  nic->vf_info[vf].vf_enabled = TRUE;
  goto unlock;
 case 129:

  nic->vf_info[vf].vf_enabled = FALSE;
  break;
 case 144:
  nic_get_bgx_stats(nic, &mbx.bgx_stats);
  goto unlock;
 case 141:
  ret = nic_config_loopback(nic, &mbx.lbk);
  break;
 default:
  device_printf(nic->dev,
      "Invalid msg from VF%d, msg 0x%x\n", vf, mbx.msg.msg);
  break;
 }

 if (ret == 0)
  nic_mbx_send_ack(nic, vf);
 else if (mbx.msg.msg != 139)
  nic_mbx_send_nack(nic, vf);
unlock:
 nic->mbx_lock[vf] = FALSE;
}
