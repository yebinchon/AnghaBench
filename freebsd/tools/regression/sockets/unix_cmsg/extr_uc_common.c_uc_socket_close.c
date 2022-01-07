
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sun_path; } ;
struct TYPE_4__ {int serv_sock_fd; TYPE_1__ serv_addr_sun; scalar_t__ server_flag; } ;


 scalar_t__ close (int) ;
 TYPE_2__ uc_cfg ;
 int uc_logmsg (char*,...) ;
 scalar_t__ unlink (int ) ;

int
uc_socket_close(int fd)
{
 int rv;

 rv = 0;
 if (close(fd) < 0) {
  uc_logmsg("socket_close: close");
  rv = -1;
 }
 if (uc_cfg.server_flag && fd == uc_cfg.serv_sock_fd)
  if (unlink(uc_cfg.serv_addr_sun.sun_path) < 0) {
   uc_logmsg("socket_close: unlink(%s)",
       uc_cfg.serv_addr_sun.sun_path);
   rv = -1;
  }
 return (rv);
}
