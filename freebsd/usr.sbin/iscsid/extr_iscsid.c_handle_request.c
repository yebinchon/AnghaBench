
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* isc_target; int isc_target_addr; } ;
struct iscsi_daemon_request {TYPE_2__ idr_conf; } ;
struct TYPE_3__ {scalar_t__ isc_discovery; } ;
struct connection {TYPE_1__ conn_conf; } ;


 int capsicate (struct connection*) ;
 struct connection* connection_new (int,struct iscsi_daemon_request const*) ;
 int discovery (struct connection*) ;
 int exit (int ) ;
 int handoff (struct connection*) ;
 int log_debugx (char*) ;
 int log_set_peer_addr (int ) ;
 int log_set_peer_name (char*) ;
 int login (struct connection*) ;
 int set_timeout (int) ;
 int setproctitle (char*,int ,...) ;

__attribute__((used)) static void
handle_request(int iscsi_fd, const struct iscsi_daemon_request *request, int timeout)
{
 struct connection *conn;

 log_set_peer_addr(request->idr_conf.isc_target_addr);
 if (request->idr_conf.isc_target[0] != '\0') {
  log_set_peer_name(request->idr_conf.isc_target);
  setproctitle("%s (%s)", request->idr_conf.isc_target_addr, request->idr_conf.isc_target);
 } else {
  setproctitle("%s", request->idr_conf.isc_target_addr);
 }

 conn = connection_new(iscsi_fd, request);
 set_timeout(timeout);
 capsicate(conn);
 login(conn);
 if (conn->conn_conf.isc_discovery != 0)
  discovery(conn);
 else
  handoff(conn);

 log_debugx("nothing more to do; exiting");
 exit (0);
}
