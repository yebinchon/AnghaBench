
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; void* sin_family; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sin ;
typedef scalar_t__ pid_t ;


 void* AF_INET ;
 int INADDR_LOOPBACK ;
 int PF_INET ;
 int SIGCHLD ;
 scalar_t__ SIG_ERR ;
 int SIG_IGN ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int bzero (struct sockaddr_in*,int) ;
 int err (int,char*) ;
 scalar_t__ fork () ;
 scalar_t__ getpid () ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 int htonl (int ) ;
 scalar_t__ listen (int,int) ;
 int ntohs (int ) ;
 int printf (char*,int) ;
 scalar_t__ signal (int ,int ) ;
 int socket (int ,int ,int ) ;
 int tcp_client (scalar_t__,int ) ;
 int tcp_server (scalar_t__,int) ;

int
main(int argc, char *argv[])
{
 pid_t child_pid, parent_pid;
 struct sockaddr_in sin;
 int listen_fd;
 u_short port;
 socklen_t len;

 listen_fd = socket(PF_INET, SOCK_STREAM, 0);
 if (listen_fd < 0)
  err(-1, "socket");





 bzero(&sin, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_len = sizeof(sin);
 sin.sin_addr.s_addr = htonl(INADDR_LOOPBACK);

 if (bind(listen_fd, (struct sockaddr *)&sin, sizeof(sin)) < 0)
  err(-1, "bind");

 if (listen(listen_fd, -1) < 0)
  err(-1, "listen");




 bzero(&sin, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_len = sizeof(sin);
 len = sizeof(sin);
 if (getsockname(listen_fd, (struct sockaddr *)&sin, &len) < 0)
  err(-1, "getsockname");
 port = sin.sin_port;
 printf("Using port %d\n", ntohs(port));

 if (signal(SIGCHLD, SIG_IGN) == SIG_ERR)
  err(-1, "signal");

 parent_pid = getpid();
 child_pid = fork();
 if (child_pid < 0)
  err(-1, "fork");
 if (child_pid == 0) {
  child_pid = getpid();
  tcp_server(parent_pid, listen_fd);
 } else
  tcp_client(child_pid, port);

 return (0);
}
