
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct virtchnl_vsi_queue_config_info {int num_queue_pairs; } ;
struct virtchnl_vlan_filter_list {int num_elements; } ;
struct virtchnl_vf_res_request {int dummy; } ;
struct virtchnl_version_info {int dummy; } ;
struct virtchnl_vector_map {int dummy; } ;
struct virtchnl_txq_info {int dummy; } ;
struct virtchnl_rxq_info {int dummy; } ;
struct virtchnl_rss_lut {int lut_entries; } ;
struct virtchnl_rss_key {int key_len; } ;
struct virtchnl_rss_hena {int dummy; } ;
struct virtchnl_queue_select {int dummy; } ;
struct virtchnl_queue_pair_info {int dummy; } ;
struct virtchnl_promisc_info {int dummy; } ;
struct virtchnl_iwarp_qvlist_info {int num_vectors; } ;
struct virtchnl_iwarp_qv_info {int dummy; } ;
struct virtchnl_irq_map_info {int num_vectors; } ;
struct virtchnl_ether_addr_list {int num_elements; } ;
struct virtchnl_ether_addr {int dummy; } ;


 int FALSE ;
 int TRUE ;
 int VF_IS_V11 (struct virtchnl_version_info*) ;
 int VIRTCHNL_ERR_PARAM ;
 int VIRTCHNL_STATUS_ERR_OPCODE_MISMATCH ;

__attribute__((used)) static inline int
virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
       u8 *msg, u16 msglen)
{
 bool err_msg_format = FALSE;
 int valid_len = 0;


 switch (v_opcode) {
 case 128:
  valid_len = sizeof(struct virtchnl_version_info);
  break;
 case 131:
  break;
 case 135:
  if (VF_IS_V11(ver))
   valid_len = sizeof(u32);
  break;
 case 146:
  valid_len = sizeof(struct virtchnl_txq_info);
  break;
 case 147:
  valid_len = sizeof(struct virtchnl_rxq_info);
  break;
 case 145:
  valid_len = sizeof(struct virtchnl_vsi_queue_config_info);
  if (msglen >= valid_len) {
   struct virtchnl_vsi_queue_config_info *vqc =
       (struct virtchnl_vsi_queue_config_info *)msg;
   valid_len += (vqc->num_queue_pairs *
          sizeof(struct
          virtchnl_queue_pair_info));
   if (vqc->num_queue_pairs == 0)
    err_msg_format = TRUE;
  }
  break;
 case 152:
  valid_len = sizeof(struct virtchnl_irq_map_info);
  if (msglen >= valid_len) {
   struct virtchnl_irq_map_info *vimi =
       (struct virtchnl_irq_map_info *)msg;
   valid_len += (vimi->num_vectors *
          sizeof(struct virtchnl_vector_map));
   if (vimi->num_vectors == 0)
    err_msg_format = TRUE;
  }
  break;
 case 140:
 case 142:
  valid_len = sizeof(struct virtchnl_queue_select);
  break;
 case 154:
 case 144:
  valid_len = sizeof(struct virtchnl_ether_addr_list);
  if (msglen >= valid_len) {
   struct virtchnl_ether_addr_list *veal =
       (struct virtchnl_ether_addr_list *)msg;
   valid_len += veal->num_elements *
       sizeof(struct virtchnl_ether_addr);
   if (veal->num_elements == 0)
    err_msg_format = TRUE;
  }
  break;
 case 153:
 case 143:
  valid_len = sizeof(struct virtchnl_vlan_filter_list);
  if (msglen >= valid_len) {
   struct virtchnl_vlan_filter_list *vfl =
       (struct virtchnl_vlan_filter_list *)msg;
   valid_len += vfl->num_elements * sizeof(u16);
   if (vfl->num_elements == 0)
    err_msg_format = TRUE;
  }
  break;
 case 150:
  valid_len = sizeof(struct virtchnl_promisc_info);
  break;
 case 136:
  valid_len = sizeof(struct virtchnl_queue_select);
  break;
 case 134:




  if (msglen)
   valid_len = msglen;
  else
   err_msg_format = TRUE;
  break;
 case 133:
  break;
 case 151:
  valid_len = sizeof(struct virtchnl_iwarp_qvlist_info);
  if (msglen >= valid_len) {
   struct virtchnl_iwarp_qvlist_info *qv =
    (struct virtchnl_iwarp_qvlist_info *)msg;
   if (qv->num_vectors == 0) {
    err_msg_format = TRUE;
    break;
   }
   valid_len += ((qv->num_vectors - 1) *
    sizeof(struct virtchnl_iwarp_qv_info));
  }
  break;
 case 149:
  valid_len = sizeof(struct virtchnl_rss_key);
  if (msglen >= valid_len) {
   struct virtchnl_rss_key *vrk =
    (struct virtchnl_rss_key *)msg;
   valid_len += vrk->key_len - 1;
  }
  break;
 case 148:
  valid_len = sizeof(struct virtchnl_rss_lut);
  if (msglen >= valid_len) {
   struct virtchnl_rss_lut *vrl =
    (struct virtchnl_rss_lut *)msg;
   valid_len += vrl->lut_entries - 1;
  }
  break;
 case 137:
  break;
 case 130:
  valid_len = sizeof(struct virtchnl_rss_hena);
  break;
 case 139:
 case 141:
  break;
 case 132:
  valid_len = sizeof(struct virtchnl_vf_res_request);
  break;

 case 138:
 case 129:
 default:
  return VIRTCHNL_ERR_PARAM;
 }

 if (err_msg_format || valid_len != msglen)
  return VIRTCHNL_STATUS_ERR_OPCODE_MISMATCH;

 return 0;
}
