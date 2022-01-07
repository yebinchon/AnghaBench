
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmodule {int dummy; } ;


 int LOG_ERR ;
 int * devd_fd ;
 scalar_t__ devd_sock ;
 int devd_socket_callback ;
 int * fd_select (scalar_t__,int ,int *,struct lmodule*) ;
 int syslog (int ,char*) ;

void
start_device_tbl(struct lmodule *mod)
{

 if (devd_sock > 0) {
  devd_fd = fd_select(devd_sock, devd_socket_callback, ((void*)0), mod);
  if (devd_fd == ((void*)0))
   syslog(LOG_ERR, "fd_select failed on devd socket: %m");
 }
}
