
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uc_client_exit (int) ;
 int uc_client_fork () ;
 int uc_client_wait () ;
 int uc_socket_close (int) ;
 int uc_socket_create () ;

int
t_generic(int (*client_func)(int), int (*server_func)(int))
{
 int fd, rv, rv_client;

 switch (uc_client_fork()) {
 case 0:
  fd = uc_socket_create();
  if (fd < 0)
   rv = -2;
  else {
   rv = client_func(fd);
   if (uc_socket_close(fd) < 0)
    rv = -2;
  }
  uc_client_exit(rv);
  break;
 case 1:
  fd = uc_socket_create();
  if (fd < 0)
   rv = -2;
  else {
   rv = server_func(fd);
   rv_client = uc_client_wait();
   if (rv == 0 || (rv == -2 && rv_client != 0))
    rv = rv_client;
   if (uc_socket_close(fd) < 0)
    rv = -2;
  }
  break;
 default:
  rv = -2;
 }
 return (rv);
}
