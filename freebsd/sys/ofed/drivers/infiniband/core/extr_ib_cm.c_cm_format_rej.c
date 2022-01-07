
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct cm_rej_msg {int private_data; int ari; int reason; int local_comm_id; int remote_comm_id; int hdr; } ;
struct TYPE_2__ {int state; int local_id; int remote_id; } ;
struct cm_id_private {TYPE_1__ id; int tid; } ;
typedef enum ib_cm_rej_reason { ____Placeholder_ib_cm_rej_reason } ib_cm_rej_reason ;


 int CM_MSG_RESPONSE_OTHER ;
 int CM_MSG_RESPONSE_REP ;
 int CM_MSG_RESPONSE_REQ ;
 int CM_REJ_ATTR_ID ;




 int cm_format_mad_hdr (int *,int ,int ) ;
 int cm_rej_set_msg_rejected (struct cm_rej_msg*,int ) ;
 int cm_rej_set_reject_info_len (struct cm_rej_msg*,scalar_t__) ;
 int cpu_to_be16 (int) ;
 int memcpy (int ,void const*,scalar_t__) ;

__attribute__((used)) static void cm_format_rej(struct cm_rej_msg *rej_msg,
     struct cm_id_private *cm_id_priv,
     enum ib_cm_rej_reason reason,
     void *ari,
     u8 ari_length,
     const void *private_data,
     u8 private_data_len)
{
 cm_format_mad_hdr(&rej_msg->hdr, CM_REJ_ATTR_ID, cm_id_priv->tid);
 rej_msg->remote_comm_id = cm_id_priv->id.remote_id;

 switch(cm_id_priv->id.state) {
 case 128:
  rej_msg->local_comm_id = 0;
  cm_rej_set_msg_rejected(rej_msg, CM_MSG_RESPONSE_REQ);
  break;
 case 130:
  rej_msg->local_comm_id = cm_id_priv->id.local_id;
  cm_rej_set_msg_rejected(rej_msg, CM_MSG_RESPONSE_REQ);
  break;
 case 129:
 case 131:
  rej_msg->local_comm_id = cm_id_priv->id.local_id;
  cm_rej_set_msg_rejected(rej_msg, CM_MSG_RESPONSE_REP);
  break;
 default:
  rej_msg->local_comm_id = cm_id_priv->id.local_id;
  cm_rej_set_msg_rejected(rej_msg, CM_MSG_RESPONSE_OTHER);
  break;
 }

 rej_msg->reason = cpu_to_be16(reason);
 if (ari && ari_length) {
  cm_rej_set_reject_info_len(rej_msg, ari_length);
  memcpy(rej_msg->ari, ari, ari_length);
 }

 if (private_data && private_data_len)
  memcpy(rej_msg->private_data, private_data, private_data_len);
}
