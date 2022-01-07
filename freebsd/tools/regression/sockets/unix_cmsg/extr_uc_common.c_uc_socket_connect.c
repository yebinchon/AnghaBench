
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_3__ {int sun_path; int sun_len; } ;
struct TYPE_4__ {TYPE_1__ serv_addr_sun; } ;


 scalar_t__ connect (int,struct sockaddr*,int ) ;
 TYPE_2__ uc_cfg ;
 int uc_dbgmsg (char*) ;
 int uc_logmsg (char*,int ) ;

int
uc_socket_connect(int fd)
{
 uc_dbgmsg("connect");

 if (connect(fd, (struct sockaddr *)&uc_cfg.serv_addr_sun,
     uc_cfg.serv_addr_sun.sun_len) < 0) {
  uc_logmsg("socket_connect: connect(%s)", uc_cfg.serv_addr_sun.sun_path);
  return (-1);
 }
 return (0);
}
