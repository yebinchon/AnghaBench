
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session_limits {int isl_max_recv_data_segment_length; int isl_max_send_data_segment_length; int isl_max_burst_length; int isl_first_burst_length; char* isc_initiator_addr; char* isc_target_addr; scalar_t__ isc_iser; } ;
struct iscsi_daemon_request {int idr_limits; int idr_tsih; int idr_isid; int idr_conf; int idr_session_id; } ;
struct iscsi_daemon_connect {int idc_iser; int idc_to_addrlen; int idc_to_addr; int idc_from_addrlen; int idc_from_addr; int idc_protocol; int idc_socktype; int idc_domain; int idc_session_id; } ;
struct connection {int conn_initial_r2t; int conn_immediate_data; int conn_max_recv_data_segment_length; int conn_max_send_data_segment_length; int conn_max_burst_length; int conn_first_burst_length; int conn_iscsi_fd; scalar_t__ conn_socket; struct iscsi_session_limits conn_conf; int conn_session_id; struct iscsi_session_limits conn_limits; int conn_tsih; struct iscsi_session_limits conn_isid; void* conn_data_digest; void* conn_header_digest; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; } ;
typedef int sockbuf ;
typedef int idc ;


 void* CONN_DIGEST_NONE ;
 int ISCSIDCONNECT ;
 int SOCKBUF_SIZE ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int bind (scalar_t__,int ,int ) ;
 struct connection* calloc (int,int) ;
 int connect (scalar_t__,int ,int ) ;
 int errno ;
 int fail (struct connection*,char*) ;
 int ioctl (int,int ,struct iscsi_daemon_connect*) ;
 int log_debugx (char*,char const*) ;
 int log_err (int,char*,...) ;
 int log_errx (int,char*) ;
 int log_warn (char*) ;
 int memcpy (struct iscsi_session_limits*,int *,int) ;
 int memset (struct iscsi_daemon_connect*,int ,int) ;
 int resolve_addr (struct connection*,char const*,struct addrinfo**,int) ;
 int setsockopt (scalar_t__,int ,int ,int*,int) ;
 scalar_t__ socket (int ,int ,int ) ;
 char* strerror (int ) ;

__attribute__((used)) static struct connection *
connection_new(int iscsi_fd, const struct iscsi_daemon_request *request)
{
 struct connection *conn;
 struct iscsi_session_limits *isl;
 struct addrinfo *from_ai, *to_ai;
 const char *from_addr, *to_addr;



 int error, sockbuf;

 conn = calloc(1, sizeof(*conn));
 if (conn == ((void*)0))
  log_err(1, "calloc");




 conn->conn_header_digest = CONN_DIGEST_NONE;
 conn->conn_data_digest = CONN_DIGEST_NONE;
 conn->conn_initial_r2t = 1;
 conn->conn_immediate_data = 1;
 conn->conn_max_recv_data_segment_length = 8192;
 conn->conn_max_send_data_segment_length = 8192;
 conn->conn_max_burst_length = 262144;
 conn->conn_first_burst_length = 65536;
 conn->conn_iscsi_fd = iscsi_fd;

 conn->conn_session_id = request->idr_session_id;
 memcpy(&conn->conn_conf, &request->idr_conf, sizeof(conn->conn_conf));
 memcpy(&conn->conn_isid, &request->idr_isid, sizeof(conn->conn_isid));
 conn->conn_tsih = request->idr_tsih;
 isl = &conn->conn_limits;
 memcpy(isl, &request->idr_limits, sizeof(*isl));
 if (isl->isl_max_recv_data_segment_length == 0)
  isl->isl_max_recv_data_segment_length = (1 << 24) - 1;
 if (isl->isl_max_send_data_segment_length == 0)
  isl->isl_max_send_data_segment_length =
      isl->isl_max_recv_data_segment_length;
 if (isl->isl_max_burst_length == 0)
  isl->isl_max_burst_length = (1 << 24) - 1;
 if (isl->isl_first_burst_length == 0)
  isl->isl_first_burst_length = (1 << 24) - 1;
 if (isl->isl_first_burst_length > isl->isl_max_burst_length)
  isl->isl_first_burst_length = isl->isl_max_burst_length;






 if (conn->conn_max_send_data_segment_length >
     isl->isl_max_send_data_segment_length) {
  conn->conn_max_send_data_segment_length =
      isl->isl_max_send_data_segment_length;
 }

 from_addr = conn->conn_conf.isc_initiator_addr;
 to_addr = conn->conn_conf.isc_target_addr;

 if (from_addr[0] != '\0')
  resolve_addr(conn, from_addr, &from_ai, 1);
 else
  from_ai = ((void*)0);

 resolve_addr(conn, to_addr, &to_ai, 0);
 if (conn->conn_conf.isc_iser) {
  fail(conn, "iSER not supported");
  log_errx(1, "iscsid(8) compiled without ICL_KERNEL_PROXY "
      "does not support iSER");
 }

 conn->conn_socket = socket(to_ai->ai_family, to_ai->ai_socktype,
     to_ai->ai_protocol);
 if (conn->conn_socket < 0) {
  fail(conn, strerror(errno));
  log_err(1, "failed to create socket for %s", from_addr);
 }
 sockbuf = SOCKBUF_SIZE;
 if (setsockopt(conn->conn_socket, SOL_SOCKET, SO_RCVBUF,
     &sockbuf, sizeof(sockbuf)) == -1)
  log_warn("setsockopt(SO_RCVBUF) failed");
 sockbuf = SOCKBUF_SIZE;
 if (setsockopt(conn->conn_socket, SOL_SOCKET, SO_SNDBUF,
     &sockbuf, sizeof(sockbuf)) == -1)
  log_warn("setsockopt(SO_SNDBUF) failed");
 if (from_ai != ((void*)0)) {
  error = bind(conn->conn_socket, from_ai->ai_addr,
      from_ai->ai_addrlen);
  if (error != 0) {
   fail(conn, strerror(errno));
   log_err(1, "failed to bind to %s", from_addr);
  }
 }
 log_debugx("connecting to %s", to_addr);
 error = connect(conn->conn_socket, to_ai->ai_addr, to_ai->ai_addrlen);
 if (error != 0) {
  fail(conn, strerror(errno));
  log_err(1, "failed to connect to %s", to_addr);
 }

 return (conn);
}
