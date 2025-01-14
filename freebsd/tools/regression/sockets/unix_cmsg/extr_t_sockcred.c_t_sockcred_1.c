
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int t_sockcred_client (int,int) ;
 int t_sockcred_server (int,int) ;
 int uc_client_exit (int) ;
 int uc_client_fork () ;
 int uc_client_wait () ;
 int uc_dbgmsg (char*,int) ;
 int uc_socket_close (int) ;
 int uc_socket_create () ;

int
t_sockcred_1(void)
{
 u_int i;
 int fd, rv, rv_client;

 switch (uc_client_fork()) {
 case 0:
  for (i = 1; i <= 2; ++i) {
   uc_dbgmsg("client #%u", i);
   fd = uc_socket_create();
   if (fd < 0)
    rv = -2;
   else {
    rv = t_sockcred_client(1, fd);
    if (uc_socket_close(fd) < 0)
     rv = -2;
   }
   if (rv != 0)
    break;
  }
  uc_client_exit(rv);
  break;
 case 1:
  fd = uc_socket_create();
  if (fd < 0)
   rv = -2;
  else {
   rv = t_sockcred_server(1, fd);
   if (rv == 0)
    rv = t_sockcred_server(3, fd);
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
