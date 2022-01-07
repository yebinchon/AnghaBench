
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ib_sa_path_rec {int packet_life_time; int sl; int rate; int hop_limit; int traffic_class; int flow_label; int dgid; int sgid; int dlid; int slid; } ;
struct cm_lap_msg {int private_data; int alt_hop_limit; int alt_remote_gid; int alt_local_gid; int alt_remote_lid; int alt_local_lid; int remote_comm_id; int local_comm_id; int hdr; } ;
struct TYPE_8__ {TYPE_3__* port; } ;
struct TYPE_5__ {int remote_id; int local_id; } ;
struct cm_id_private {TYPE_4__ av; int remote_qpn; TYPE_1__ id; } ;
struct TYPE_7__ {TYPE_2__* cm_dev; } ;
struct TYPE_6__ {int ack_delay; } ;


 int CM_LAP_ATTR_ID ;
 int CM_MSG_SEQUENCE_LAP ;
 int cm_ack_timeout (int ,int ) ;
 int cm_form_tid (struct cm_id_private*,int ) ;
 int cm_format_mad_hdr (int *,int ,int ) ;
 int cm_lap_set_flow_label (struct cm_lap_msg*,int ) ;
 int cm_lap_set_local_ack_timeout (struct cm_lap_msg*,int ) ;
 int cm_lap_set_packet_rate (struct cm_lap_msg*,int ) ;
 int cm_lap_set_remote_qpn (struct cm_lap_msg*,int ) ;
 int cm_lap_set_remote_resp_timeout (struct cm_lap_msg*,int) ;
 int cm_lap_set_sl (struct cm_lap_msg*,int ) ;
 int cm_lap_set_subnet_local (struct cm_lap_msg*,int) ;
 int cm_lap_set_traffic_class (struct cm_lap_msg*,int ) ;
 int memcpy (int ,void const*,scalar_t__) ;

__attribute__((used)) static void cm_format_lap(struct cm_lap_msg *lap_msg,
     struct cm_id_private *cm_id_priv,
     struct ib_sa_path_rec *alternate_path,
     const void *private_data,
     u8 private_data_len)
{
 cm_format_mad_hdr(&lap_msg->hdr, CM_LAP_ATTR_ID,
     cm_form_tid(cm_id_priv, CM_MSG_SEQUENCE_LAP));
 lap_msg->local_comm_id = cm_id_priv->id.local_id;
 lap_msg->remote_comm_id = cm_id_priv->id.remote_id;
 cm_lap_set_remote_qpn(lap_msg, cm_id_priv->remote_qpn);

 cm_lap_set_remote_resp_timeout(lap_msg, 0x1F);
 lap_msg->alt_local_lid = alternate_path->slid;
 lap_msg->alt_remote_lid = alternate_path->dlid;
 lap_msg->alt_local_gid = alternate_path->sgid;
 lap_msg->alt_remote_gid = alternate_path->dgid;
 cm_lap_set_flow_label(lap_msg, alternate_path->flow_label);
 cm_lap_set_traffic_class(lap_msg, alternate_path->traffic_class);
 lap_msg->alt_hop_limit = alternate_path->hop_limit;
 cm_lap_set_packet_rate(lap_msg, alternate_path->rate);
 cm_lap_set_sl(lap_msg, alternate_path->sl);
 cm_lap_set_subnet_local(lap_msg, 1);
 cm_lap_set_local_ack_timeout(lap_msg,
  cm_ack_timeout(cm_id_priv->av.port->cm_dev->ack_delay,
          alternate_path->packet_life_time));

 if (private_data && private_data_len)
  memcpy(lap_msg->private_data, private_data, private_data_len);
}
