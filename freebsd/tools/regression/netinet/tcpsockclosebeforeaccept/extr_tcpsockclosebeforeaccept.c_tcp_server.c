
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;
typedef int pid_t ;


 int AF_INET ;
 int INADDR_LOOPBACK ;
 int PF_INET ;
 int SIGKILL ;
 int SOCK_STREAM ;
 int TCP_PORT ;
 int accept (int,int *,int *) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int bzero (struct sockaddr_in*,int) ;
 int close (int) ;
 int err (int,char*) ;
 int errno ;
 int htonl (int ) ;
 int htons (int ) ;
 int kill (int ,int ) ;
 scalar_t__ listen (int,int) ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void
tcp_server(pid_t partner)
{
 int error, listen_fd, accept_fd;
 struct sockaddr_in sin;

 listen_fd = socket(PF_INET, SOCK_STREAM, 0);
 if (listen_fd < 0) {
  error = errno;
  (void)kill(partner, SIGKILL);
  errno = error;
  err(-1, "tcp_server: socket");
 }

 bzero(&sin, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_len = sizeof(sin);
 sin.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
 sin.sin_port = htons(TCP_PORT);

 if (bind(listen_fd, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
  error = errno;
  (void)kill(partner, SIGKILL);
  errno = error;
  err(-1, "tcp_server: bind");
 }

 if (listen(listen_fd, -1) < 0) {
  error = errno;
  (void)kill(partner, SIGKILL);
  errno = error;
  err(-1, "tcp_server: listen");
 }

 sleep(10);

 accept_fd = accept(listen_fd, ((void*)0), ((void*)0));
 if (accept_fd < 0) {
  error = errno;
  (void)kill(partner, SIGKILL);
  errno = error;
  err(-1, "tcp_server: accept");
 }
 close(accept_fd);
 close(listen_fd);
}
