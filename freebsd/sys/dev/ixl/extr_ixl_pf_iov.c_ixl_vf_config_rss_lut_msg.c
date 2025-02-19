
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u32 ;
struct virtchnl_rss_lut {int lut_entries; int * lut; int vsi_id; } ;
struct TYPE_5__ {int vsi_num; } ;
struct ixl_vf {int vf_num; TYPE_2__ vsi; } ;
struct TYPE_6__ {int asq_last_status; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_3__ aq; TYPE_1__ mac; } ;
struct ixl_pf {int dev; struct i40e_hw hw; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int DDPRINTF (int ,char*,int ,int ,int) ;
 int I40E_ERR_ADMIN_QUEUE_ERROR ;
 int I40E_ERR_PARAM ;
 scalar_t__ I40E_MAC_X722 ;
 int I40E_VFQF_HLUT1 (int,int ) ;
 int VIRTCHNL_OP_CONFIG_RSS_LUT ;
 int device_printf (int ,char*,int ,int,...) ;
 int i40e_aq_set_rss_lut (struct i40e_hw*,int ,int,int *,int) ;
 int i40e_aq_str (struct i40e_hw*,int ) ;
 int i40e_send_vf_nack (struct ixl_pf*,struct ixl_vf*,int ,int ) ;
 int i40e_stat_str (struct i40e_hw*,int) ;
 int i40e_write_rx_ctl (struct i40e_hw*,int ,int ) ;
 int ixl_send_vf_ack (struct ixl_pf*,struct ixl_vf*,int ) ;

__attribute__((used)) static void
ixl_vf_config_rss_lut_msg(struct ixl_pf *pf, struct ixl_vf *vf, void *msg,
    uint16_t msg_size)
{
 struct i40e_hw *hw;
 struct virtchnl_rss_lut *lut;
 enum i40e_status_code status;

 hw = &pf->hw;

 if (msg_size < sizeof(*lut)) {
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_CONFIG_RSS_LUT,
      I40E_ERR_PARAM);
  return;
 }

 lut = msg;

 if (lut->lut_entries > 64) {
  device_printf(pf->dev, "VF %d: # of LUT entries in msg (%d) is greater than max (%d)\n",
      vf->vf_num, lut->lut_entries, 64);
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_CONFIG_RSS_LUT,
      I40E_ERR_PARAM);
  return;
 }

 if (lut->vsi_id != vf->vsi.vsi_num) {
  device_printf(pf->dev, "VF %d: VSI id in recvd message (%d) does not match expected id (%d)\n",
      vf->vf_num, lut->vsi_id, vf->vsi.vsi_num);
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_CONFIG_RSS_LUT,
      I40E_ERR_PARAM);
  return;
 }


 if (hw->mac.type == I40E_MAC_X722) {
  status = i40e_aq_set_rss_lut(hw, vf->vsi.vsi_num, 0, lut->lut, lut->lut_entries);
  if (status) {
   device_printf(pf->dev, "i40e_aq_set_rss_lut status %s, error %s\n",
       i40e_stat_str(hw, status), i40e_aq_str(hw, hw->aq.asq_last_status));
   i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_CONFIG_RSS_LUT,
       I40E_ERR_ADMIN_QUEUE_ERROR);
   return;
  }
 } else {
  for (int i = 0; i < (lut->lut_entries / 4); i++)
   i40e_write_rx_ctl(hw, I40E_VFQF_HLUT1(i, vf->vf_num), ((u32 *)lut->lut)[i]);
 }

 DDPRINTF(pf->dev, "VF %d: Programmed LUT starting with 0x%x and length %d ok!",
     vf->vf_num, lut->lut[0], lut->lut_entries);

 ixl_send_vf_ack(pf, vf, VIRTCHNL_OP_CONFIG_RSS_LUT);
}
