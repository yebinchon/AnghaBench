
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHUT_RDWR ;
 int close (scalar_t__) ;
 int shutdown (scalar_t__,int ) ;
 scalar_t__* sock_fd ;
 int sock_fdcnt ;

__attribute__((used)) static void
clearout_service(void)
{
 int i;

 for (i = 0; i < sock_fdcnt; i++) {
  if (sock_fd[i] >= 0) {
   shutdown(sock_fd[i], SHUT_RDWR);
   close(sock_fd[i]);
  }
 }
}
