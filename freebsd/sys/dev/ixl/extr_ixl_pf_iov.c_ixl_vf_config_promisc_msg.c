
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct virtchnl_promisc_info {scalar_t__ vsi_id; int flags; } ;
struct TYPE_3__ {scalar_t__ vsi_num; int seid; } ;
struct ixl_vf {int vf_flags; TYPE_1__ vsi; } ;
struct TYPE_4__ {int asq_last_status; } ;
struct i40e_hw {TYPE_2__ aq; } ;
struct ixl_pf {int dev; struct i40e_hw hw; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int FLAG_VF_MULTICAST_PROMISC ;
 int FLAG_VF_UNICAST_PROMISC ;
 int I40E_ERR_PARAM ;
 int I40E_SUCCESS ;
 int TRUE ;
 int VF_FLAG_PROMISC_CAP ;
 int VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE ;
 int device_printf (int ,char*,int ,int ,int ) ;
 int i40e_aq_set_vsi_multicast_promiscuous (struct i40e_hw*,int ,int,int *) ;
 int i40e_aq_set_vsi_unicast_promiscuous (struct i40e_hw*,int ,int,int *,int ) ;
 int i40e_aq_str (struct i40e_hw*,int ) ;
 int i40e_send_vf_nack (struct ixl_pf*,struct ixl_vf*,int ,int ) ;
 int i40e_stat_str (struct i40e_hw*,int) ;
 int ixl_send_vf_ack (struct ixl_pf*,struct ixl_vf*,int ) ;

__attribute__((used)) static void
ixl_vf_config_promisc_msg(struct ixl_pf *pf, struct ixl_vf *vf,
    void *msg, uint16_t msg_size)
{
 struct virtchnl_promisc_info *info;
 struct i40e_hw *hw = &pf->hw;
 enum i40e_status_code code;

 if (msg_size != sizeof(*info)) {
  i40e_send_vf_nack(pf, vf,
      VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, I40E_ERR_PARAM);
  return;
 }

 if (!(vf->vf_flags & VF_FLAG_PROMISC_CAP)) {



  ixl_send_vf_ack(pf, vf,
      VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE);
  return;
 }

 info = msg;
 if (info->vsi_id != vf->vsi.vsi_num) {
  i40e_send_vf_nack(pf, vf,
      VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, I40E_ERR_PARAM);
  return;
 }

 code = i40e_aq_set_vsi_unicast_promiscuous(hw, vf->vsi.seid,
     info->flags & FLAG_VF_UNICAST_PROMISC, ((void*)0), TRUE);
 if (code != I40E_SUCCESS) {
  device_printf(pf->dev, "i40e_aq_set_vsi_unicast_promiscuous (seid %d) failed: status %s,"
      " error %s\n", vf->vsi.seid, i40e_stat_str(hw, code),
      i40e_aq_str(hw, hw->aq.asq_last_status));
  i40e_send_vf_nack(pf, vf,
      VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, I40E_ERR_PARAM);
  return;
 }

 code = i40e_aq_set_vsi_multicast_promiscuous(hw, vf->vsi.seid,
     info->flags & FLAG_VF_MULTICAST_PROMISC, ((void*)0));
 if (code != I40E_SUCCESS) {
  device_printf(pf->dev, "i40e_aq_set_vsi_multicast_promiscuous (seid %d) failed: status %s,"
      " error %s\n", vf->vsi.seid, i40e_stat_str(hw, code),
      i40e_aq_str(hw, hw->aq.asq_last_status));
  i40e_send_vf_nack(pf, vf,
      VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, I40E_ERR_PARAM);
  return;
 }

 ixl_send_vf_ack(pf, vf, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE);
}
