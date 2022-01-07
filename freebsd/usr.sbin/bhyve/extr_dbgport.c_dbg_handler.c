
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint32_t ;
struct vmctx {int dummy; } ;
typedef int on ;


 char BVM_DBG_SIG ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int IPPROTO_TCP ;
 int SOCK_NONBLOCK ;
 int SOL_SOCKET ;
 int SO_NOSIGPIPE ;
 int TCP_NODELAY ;
 int accept4 (int ,int *,int *,int ) ;
 int close (int) ;
 int conn_fd ;
 scalar_t__ errno ;
 int listen_fd ;
 int perror (char*) ;
 int printf (char*) ;
 int read (int,char*,int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int write (int,char*,int) ;

__attribute__((used)) static int
dbg_handler(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
     uint32_t *eax, void *arg)
{
 int nwritten, nread, printonce;
 int on = 1;
 char ch;

 if (bytes == 2 && in) {
  *eax = BVM_DBG_SIG;
  return (0);
 }

 if (bytes != 4)
  return (-1);

again:
 printonce = 0;
 while (conn_fd < 0) {
  if (!printonce) {
   printf("Waiting for connection from gdb\r\n");
   printonce = 1;
  }
  conn_fd = accept4(listen_fd, ((void*)0), ((void*)0), SOCK_NONBLOCK);
  if (conn_fd >= 0) {

   (void)setsockopt(conn_fd, SOL_SOCKET, SO_NOSIGPIPE,
       &on, sizeof(on));

   (void)setsockopt(conn_fd, IPPROTO_TCP, TCP_NODELAY,
       &on, sizeof(on));
  } else if (errno != EINTR) {
   perror("accept");
  }
 }

 if (in) {
  nread = read(conn_fd, &ch, 1);
  if (nread == -1 && errno == EAGAIN)
   *eax = -1;
  else if (nread == 1)
   *eax = ch;
  else {
   close(conn_fd);
   conn_fd = -1;
   goto again;
  }
 } else {
  ch = *eax;
  nwritten = write(conn_fd, &ch, 1);
  if (nwritten != 1) {
   close(conn_fd);
   conn_fd = -1;
   goto again;
  }
 }
 return (0);
}
