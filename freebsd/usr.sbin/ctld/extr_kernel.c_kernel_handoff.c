
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int immediate_data; int first_burst_length; int max_burst_length; int max_send_data_segment_length; int max_recv_data_segment_length; int statsn; int cmdsn; void* data_digest; void* header_digest; int portal_group_tag; int socket; int connection_id; int offload; int target_name; int initiator_isid; int initiator_alias; int initiator_addr; int initiator_name; } ;
struct TYPE_10__ {TYPE_4__ handoff; } ;
struct ctl_iscsi {scalar_t__ status; int error_str; TYPE_5__ data; int type; } ;
struct connection {scalar_t__ conn_header_digest; scalar_t__ conn_data_digest; int conn_immediate_data; int conn_first_burst_length; int conn_max_burst_length; int conn_max_send_data_segment_length; int conn_max_recv_data_segment_length; int conn_statsn; int conn_cmdsn; TYPE_3__* conn_portal; int conn_socket; TYPE_1__* conn_target; int conn_initiator_isid; int * conn_initiator_alias; int * conn_initiator_addr; int * conn_initiator_name; } ;
typedef int req ;
struct TYPE_8__ {TYPE_2__* p_portal_group; } ;
struct TYPE_7__ {int pg_tag; int * pg_offload; } ;
struct TYPE_6__ {int * t_name; } ;


 scalar_t__ CONN_DIGEST_CRC32C ;
 int CTL_ISCSI ;
 void* CTL_ISCSI_DIGEST_CRC32C ;
 int CTL_ISCSI_HANDOFF ;
 scalar_t__ CTL_ISCSI_OK ;
 int bzero (struct ctl_iscsi*,int) ;
 int ctl_fd ;
 int ioctl (int ,int ,struct ctl_iscsi*) ;
 int log_err (int,char*) ;
 int log_errx (int,char*,int ) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ proxy_mode ;
 int strlcpy (int ,int *,int) ;

void
kernel_handoff(struct connection *conn)
{
 struct ctl_iscsi req;

 bzero(&req, sizeof(req));

 req.type = CTL_ISCSI_HANDOFF;
 strlcpy(req.data.handoff.initiator_name,
     conn->conn_initiator_name, sizeof(req.data.handoff.initiator_name));
 strlcpy(req.data.handoff.initiator_addr,
     conn->conn_initiator_addr, sizeof(req.data.handoff.initiator_addr));
 if (conn->conn_initiator_alias != ((void*)0)) {
  strlcpy(req.data.handoff.initiator_alias,
      conn->conn_initiator_alias, sizeof(req.data.handoff.initiator_alias));
 }
 memcpy(req.data.handoff.initiator_isid, conn->conn_initiator_isid,
     sizeof(req.data.handoff.initiator_isid));
 strlcpy(req.data.handoff.target_name,
     conn->conn_target->t_name, sizeof(req.data.handoff.target_name));
 if (conn->conn_portal->p_portal_group->pg_offload != ((void*)0)) {
  strlcpy(req.data.handoff.offload,
      conn->conn_portal->p_portal_group->pg_offload,
      sizeof(req.data.handoff.offload));
 }






 req.data.handoff.socket = conn->conn_socket;

 req.data.handoff.portal_group_tag =
     conn->conn_portal->p_portal_group->pg_tag;
 if (conn->conn_header_digest == CONN_DIGEST_CRC32C)
  req.data.handoff.header_digest = CTL_ISCSI_DIGEST_CRC32C;
 if (conn->conn_data_digest == CONN_DIGEST_CRC32C)
  req.data.handoff.data_digest = CTL_ISCSI_DIGEST_CRC32C;
 req.data.handoff.cmdsn = conn->conn_cmdsn;
 req.data.handoff.statsn = conn->conn_statsn;
 req.data.handoff.max_recv_data_segment_length =
     conn->conn_max_recv_data_segment_length;
 req.data.handoff.max_send_data_segment_length =
     conn->conn_max_send_data_segment_length;
 req.data.handoff.max_burst_length = conn->conn_max_burst_length;
 req.data.handoff.first_burst_length = conn->conn_first_burst_length;
 req.data.handoff.immediate_data = conn->conn_immediate_data;

 if (ioctl(ctl_fd, CTL_ISCSI, &req) == -1) {
  log_err(1, "error issuing CTL_ISCSI ioctl; "
      "dropping connection");
 }

 if (req.status != CTL_ISCSI_OK) {
  log_errx(1, "error returned from CTL iSCSI handoff request: "
      "%s; dropping connection", req.error_str);
 }
}
