
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int txq ;
struct virtchnl_txq_info {int dma_ring_addr; int queue_id; int ring_len; int dma_headwb_addr; int headwb_enabled; } ;
struct TYPE_5__ {int * qs_handle; } ;
struct TYPE_6__ {TYPE_2__ info; } ;
struct ixl_vf {int vf_num; int qtag; TYPE_3__ vsi; } ;
struct TYPE_4__ {int vf_base_id; } ;
struct i40e_hw {int pf_id; TYPE_1__ func_caps; } ;
struct ixl_pf {int dev; struct i40e_hw hw; } ;
struct i40e_hmc_obj_txq {int base; scalar_t__ rdylist_act; int rdylist; int qlen; int head_wb_addr; int head_wb_ena; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int DDPRINTF (int ,char*,int,int,int ,int) ;
 int EINVAL ;
 int I40E_QTX_CTL (int) ;
 int I40E_QTX_CTL_PF_INDX_SHIFT ;
 int I40E_QTX_CTL_VFVM_INDX_SHIFT ;
 int I40E_QTX_CTL_VF_QUEUE ;
 int I40E_SUCCESS ;
 int IXL_TX_CTX_BASE_UNITS ;
 int bzero (struct i40e_hmc_obj_txq*,int) ;
 int i40e_clear_lan_tx_queue_context (struct i40e_hw*,int) ;
 int i40e_set_lan_tx_queue_context (struct i40e_hw*,int,struct i40e_hmc_obj_txq*) ;
 int ixl_flush (struct i40e_hw*) ;
 int ixl_pf_qidx_from_vsi_qidx (int *,int ) ;
 int ixl_pf_qmgr_mark_queue_configured (int *,int ,int) ;
 int le16_to_cpu (int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static int
ixl_vf_config_tx_queue(struct ixl_pf *pf, struct ixl_vf *vf,
    struct virtchnl_txq_info *info)
{
 struct i40e_hw *hw;
 struct i40e_hmc_obj_txq txq;
 uint16_t global_queue_num, global_vf_num;
 enum i40e_status_code status;
 uint32_t qtx_ctl;

 hw = &pf->hw;
 global_queue_num = ixl_pf_qidx_from_vsi_qidx(&vf->qtag, info->queue_id);
 global_vf_num = hw->func_caps.vf_base_id + vf->vf_num;
 bzero(&txq, sizeof(txq));

 DDPRINTF(pf->dev, "VF %d: PF TX queue %d / VF TX queue %d (Global VF %d)\n",
     vf->vf_num, global_queue_num, info->queue_id, global_vf_num);

 status = i40e_clear_lan_tx_queue_context(hw, global_queue_num);
 if (status != I40E_SUCCESS)
  return (EINVAL);

 txq.base = info->dma_ring_addr / IXL_TX_CTX_BASE_UNITS;

 txq.head_wb_ena = info->headwb_enabled;
 txq.head_wb_addr = info->dma_headwb_addr;
 txq.qlen = info->ring_len;
 txq.rdylist = le16_to_cpu(vf->vsi.info.qs_handle[0]);
 txq.rdylist_act = 0;

 status = i40e_set_lan_tx_queue_context(hw, global_queue_num, &txq);
 if (status != I40E_SUCCESS)
  return (EINVAL);

 qtx_ctl = I40E_QTX_CTL_VF_QUEUE |
     (hw->pf_id << I40E_QTX_CTL_PF_INDX_SHIFT) |
     (global_vf_num << I40E_QTX_CTL_VFVM_INDX_SHIFT);
 wr32(hw, I40E_QTX_CTL(global_queue_num), qtx_ctl);
 ixl_flush(hw);

 ixl_pf_qmgr_mark_queue_configured(&vf->qtag, info->queue_id, 1);

 return (0);
}
