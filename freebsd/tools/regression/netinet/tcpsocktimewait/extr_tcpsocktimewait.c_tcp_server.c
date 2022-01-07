
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int SIGTERM ;
 int accept (int,int *,int *) ;
 int close (int) ;
 int err (int,char*) ;
 int errno ;
 int kill (int ,int ) ;

__attribute__((used)) static void
tcp_server(pid_t partner, int listen_fd)
{
 int error, accept_fd;

 accept_fd = accept(listen_fd, ((void*)0), ((void*)0));
 if (accept_fd < 0) {
  error = errno;
  (void)kill(partner, SIGTERM);
  errno = error;
  err(-1, "tcp_server: accept");
 }
 close(accept_fd);
 close(listen_fd);
}
