
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int pid_t ;
typedef int ch ;


 int EPIPE ;
 int MSG_NOSIGNAL ;
 int SIGTERM ;
 int accept (int,int *,int *) ;
 int close (int) ;
 int err (int,char*) ;
 int errno ;
 int errx (int,char*) ;
 int kill (int ,int ) ;
 int send (int,char*,int,int ) ;
 int sleep (int) ;

__attribute__((used)) static void
tcp_server(pid_t partner, int listen_fd)
{
 int error, accept_fd;
 ssize_t len;
 char ch;

 accept_fd = accept(listen_fd, ((void*)0), ((void*)0));
 if (accept_fd < 0) {
  error = errno;
  (void)kill(partner, SIGTERM);
  errno = error;
  err(-1, "tcp_server: accept");
 }






 ch = 'A';
 len = send(accept_fd, &ch, sizeof(ch), MSG_NOSIGNAL);
 if (len < 0) {
  error = errno;
  (void)kill(partner, SIGTERM);
  errno = error;
  err(-1, "tcp_server: send (1)");
 }
 if (len != sizeof(ch)) {
  (void)kill(partner, SIGTERM);
  errx(-1, "tcp_server: send (1) len");
 }

 sleep (10);

 ch = 'A';
 len = send(accept_fd, &ch, sizeof(ch), MSG_NOSIGNAL);
 if (len >= 0) {
  (void)kill(partner, SIGTERM);
  errx(-1, "tcp_server: send (2): success");
 } else if (errno != EPIPE) {
  error = errno;
  (void)kill(partner, SIGTERM);
  errno = error;
  err(-1, "tcp_server: send (2)");
 }

 close(accept_fd);
 close(listen_fd);
}
