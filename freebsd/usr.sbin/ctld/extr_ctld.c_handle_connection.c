
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_len; } ;
struct portal {TYPE_1__* p_portal_group; } ;
struct connection {scalar_t__ conn_session_type; } ;
struct conf {scalar_t__ conf_maxproc; int conf_timeout; int conf_pidfh; } ;
typedef scalar_t__ pid_t ;
typedef int host ;
struct TYPE_2__ {int pg_name; struct conf* pg_conf; } ;


 scalar_t__ CONN_SESSION_TYPE_DISCOVERY ;
 scalar_t__ CONN_SESSION_TYPE_NORMAL ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int assert (int) ;
 int close (int) ;
 struct connection* connection_new (struct portal*,int,char*,struct sockaddr const*) ;
 int discovery (struct connection*) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int gai_strerror (int) ;
 int getnameinfo (struct sockaddr const*,int ,char*,int,int *,int ,int ) ;
 int kernel_capsicate () ;
 int kernel_handoff (struct connection*) ;
 int log_debugx (char*,...) ;
 int log_err (int,char*) ;
 int log_errx (int,char*,int ) ;
 int log_set_peer_addr (char*) ;
 int login (struct connection*) ;
 scalar_t__ nchildren ;
 int pidfile_close (int ) ;
 int set_timeout (int ,int) ;
 int setproctitle (char*,char*) ;
 scalar_t__ wait_for_children (int) ;

__attribute__((used)) static void
handle_connection(struct portal *portal, int fd,
    const struct sockaddr *client_sa, bool dont_fork)
{
 struct connection *conn;
 int error;
 pid_t pid;
 char host[NI_MAXHOST + 1];
 struct conf *conf;

 conf = portal->p_portal_group->pg_conf;

 if (dont_fork) {
  log_debugx("incoming connection; not forking due to -d flag");
 } else {
  nchildren -= wait_for_children(0);
  assert(nchildren >= 0);

  while (conf->conf_maxproc > 0 && nchildren >= conf->conf_maxproc) {
   log_debugx("maxproc limit of %d child processes hit; "
       "waiting for child process to exit", conf->conf_maxproc);
   nchildren -= wait_for_children(1);
   assert(nchildren >= 0);
  }
  log_debugx("incoming connection; forking child process #%d",
      nchildren);
  nchildren++;
  pid = fork();
  if (pid < 0)
   log_err(1, "fork");
  if (pid > 0) {
   close(fd);
   return;
  }
 }
 pidfile_close(conf->conf_pidfh);

 error = getnameinfo(client_sa, client_sa->sa_len,
     host, sizeof(host), ((void*)0), 0, NI_NUMERICHOST);
 if (error != 0)
  log_errx(1, "getnameinfo: %s", gai_strerror(error));

 log_debugx("accepted connection from %s; portal group \"%s\"",
     host, portal->p_portal_group->pg_name);
 log_set_peer_addr(host);
 setproctitle("%s", host);

 conn = connection_new(portal, fd, host, client_sa);
 set_timeout(conf->conf_timeout, 1);
 kernel_capsicate();
 login(conn);
 if (conn->conn_session_type == CONN_SESSION_TYPE_NORMAL) {
  kernel_handoff(conn);
  log_debugx("connection handed off to the kernel");
 } else {
  assert(conn->conn_session_type == CONN_SESSION_TYPE_DISCOVERY);
  discovery(conn);
 }
 log_debugx("nothing more to do; exiting");
 exit(0);
}
