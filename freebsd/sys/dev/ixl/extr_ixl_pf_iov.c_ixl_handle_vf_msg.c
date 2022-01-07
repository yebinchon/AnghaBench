
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
struct ixl_vf {int vf_flags; } ;
struct TYPE_4__ {size_t vf_base_id; } ;
struct TYPE_5__ {TYPE_1__ func_caps; } ;
struct ixl_pf {size_t num_vfs; struct ixl_vf* vfs; int dev; TYPE_2__ hw; } ;
struct TYPE_6__ {int cookie_high; int retval; } ;
struct i40e_arq_event_info {size_t msg_len; void* msg_buf; TYPE_3__ desc; } ;


 int I40E_ERR_NOT_IMPLEMENTED ;
 int I40E_VC_DEBUG (struct ixl_pf*,int ,char*,int ,int,char*,size_t,size_t) ;
 int VF_FLAG_ENABLED ;
 int device_printf (int ,char*,size_t) ;
 int i40e_send_vf_nack (struct ixl_pf*,struct ixl_vf*,int,int ) ;
 int ixl_notify_vf_link_state (struct ixl_pf*,struct ixl_vf*) ;
 int ixl_vc_opcode_level (int) ;
 int ixl_vc_opcode_str (int) ;
 int ixl_vf_add_mac_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_add_vlan_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_config_irq_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_config_promisc_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_config_rss_key_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_config_rss_lut_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_config_vsi_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_del_mac_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_del_vlan_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_disable_queues_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_enable_queues_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_get_resources_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_get_stats_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_reset_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_set_rss_hena_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 int ixl_vf_version_msg (struct ixl_pf*,struct ixl_vf*,void*,size_t) ;
 size_t le16toh (int ) ;
 int le32toh (int ) ;

void
ixl_handle_vf_msg(struct ixl_pf *pf, struct i40e_arq_event_info *event)
{
 struct ixl_vf *vf;
 void *msg;
 uint16_t vf_num, msg_size;
 uint32_t opcode;

 vf_num = le16toh(event->desc.retval) - pf->hw.func_caps.vf_base_id;
 opcode = le32toh(event->desc.cookie_high);

 if (vf_num >= pf->num_vfs) {
  device_printf(pf->dev, "Got msg from illegal VF: %d\n", vf_num);
  return;
 }

 vf = &pf->vfs[vf_num];
 msg = event->msg_buf;
 msg_size = event->msg_len;

 I40E_VC_DEBUG(pf, ixl_vc_opcode_level(opcode),
     "Got msg %s(%d) from%sVF-%d of size %d\n",
     ixl_vc_opcode_str(opcode), opcode,
     (vf->vf_flags & VF_FLAG_ENABLED) ? " " : " disabled ",
     vf_num, msg_size);


 if (!(vf->vf_flags & VF_FLAG_ENABLED))
  return;

 switch (opcode) {
 case 128:
  ixl_vf_version_msg(pf, vf, msg, msg_size);
  break;
 case 130:
  ixl_vf_reset_msg(pf, vf, msg, msg_size);
  break;
 case 131:
  ixl_vf_get_resources_msg(pf, vf, msg, msg_size);



  ixl_notify_vf_link_state(pf, vf);
  break;
 case 137:
  ixl_vf_config_vsi_msg(pf, vf, msg, msg_size);
  break;
 case 143:
  ixl_vf_config_irq_msg(pf, vf, msg, msg_size);
  break;
 case 133:
  ixl_vf_enable_queues_msg(pf, vf, msg, msg_size);



  ixl_notify_vf_link_state(pf, vf);
  break;
 case 134:
  ixl_vf_disable_queues_msg(pf, vf, msg, msg_size);
  break;
 case 145:
  ixl_vf_add_mac_msg(pf, vf, msg, msg_size);
  break;
 case 136:
  ixl_vf_del_mac_msg(pf, vf, msg, msg_size);
  break;
 case 144:
  ixl_vf_add_vlan_msg(pf, vf, msg, msg_size);
  break;
 case 135:
  ixl_vf_del_vlan_msg(pf, vf, msg, msg_size);
  break;
 case 142:
  ixl_vf_config_promisc_msg(pf, vf, msg, msg_size);
  break;
 case 132:
  ixl_vf_get_stats_msg(pf, vf, msg, msg_size);
  break;
 case 141:
  ixl_vf_config_rss_key_msg(pf, vf, msg, msg_size);
  break;
 case 140:
  ixl_vf_config_rss_lut_msg(pf, vf, msg, msg_size);
  break;
 case 129:
  ixl_vf_set_rss_hena_msg(pf, vf, msg, msg_size);
  break;


 case 138:
 case 139:
 default:
  i40e_send_vf_nack(pf, vf, opcode, I40E_ERR_NOT_IMPLEMENTED);
  break;
 }
}
