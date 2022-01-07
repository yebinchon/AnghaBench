
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_daemon_handoff {int idh_first_burst_length; int idh_max_burst_length; int idh_max_send_data_segment_length; int idh_max_recv_data_segment_length; int idh_immediate_data; int idh_initial_r2t; int idh_data_digest; int idh_header_digest; int idh_statsn; int idh_tsih; int idh_target_alias; int idh_socket; int idh_session_id; } ;
struct connection {int conn_iscsi_fd; int conn_first_burst_length; int conn_max_burst_length; int conn_max_send_data_segment_length; int conn_max_recv_data_segment_length; int conn_immediate_data; int conn_initial_r2t; int conn_data_digest; int conn_header_digest; int conn_statsn; int conn_tsih; int conn_target_alias; int conn_socket; int conn_session_id; } ;
typedef int idh ;


 int ISCSIDHANDOFF ;
 int ioctl (int ,int ,struct iscsi_daemon_handoff*) ;
 int log_debugx (char*) ;
 int log_err (int,char*) ;
 int memset (struct iscsi_daemon_handoff*,int ,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
handoff(struct connection *conn)
{
 struct iscsi_daemon_handoff idh;
 int error;

 log_debugx("handing off connection to the kernel");

 memset(&idh, 0, sizeof(idh));
 idh.idh_session_id = conn->conn_session_id;
 idh.idh_socket = conn->conn_socket;
 strlcpy(idh.idh_target_alias, conn->conn_target_alias,
     sizeof(idh.idh_target_alias));
 idh.idh_tsih = conn->conn_tsih;
 idh.idh_statsn = conn->conn_statsn;
 idh.idh_header_digest = conn->conn_header_digest;
 idh.idh_data_digest = conn->conn_data_digest;
 idh.idh_initial_r2t = conn->conn_initial_r2t;
 idh.idh_immediate_data = conn->conn_immediate_data;
 idh.idh_max_recv_data_segment_length =
     conn->conn_max_recv_data_segment_length;
 idh.idh_max_send_data_segment_length =
     conn->conn_max_send_data_segment_length;
 idh.idh_max_burst_length = conn->conn_max_burst_length;
 idh.idh_first_burst_length = conn->conn_first_burst_length;

 error = ioctl(conn->conn_iscsi_fd, ISCSIDHANDOFF, &idh);
 if (error != 0)
  log_err(1, "ISCSIDHANDOFF");
}
