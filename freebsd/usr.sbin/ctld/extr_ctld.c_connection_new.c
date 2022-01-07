
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_len; } ;
struct portal {int dummy; } ;
struct connection {int conn_socket; int conn_max_recv_data_segment_length; int conn_max_send_data_segment_length; int conn_max_burst_length; int conn_first_burst_length; int conn_immediate_data; int conn_initiator_sa; int conn_initiator_addr; struct portal* conn_portal; } ;


 struct connection* calloc (int,int) ;
 int checked_strdup (char const*) ;
 int log_err (int,char*) ;
 int memcpy (int *,struct sockaddr const*,int ) ;

__attribute__((used)) static struct connection *
connection_new(struct portal *portal, int fd, const char *host,
    const struct sockaddr *client_sa)
{
 struct connection *conn;

 conn = calloc(1, sizeof(*conn));
 if (conn == ((void*)0))
  log_err(1, "calloc");
 conn->conn_portal = portal;
 conn->conn_socket = fd;
 conn->conn_initiator_addr = checked_strdup(host);
 memcpy(&conn->conn_initiator_sa, client_sa, client_sa->sa_len);




 conn->conn_max_recv_data_segment_length = 8192;
 conn->conn_max_send_data_segment_length = 8192;
 conn->conn_max_burst_length = 262144;
 conn->conn_first_burst_length = 65536;
 conn->conn_immediate_data = 1;

 return (conn);
}
