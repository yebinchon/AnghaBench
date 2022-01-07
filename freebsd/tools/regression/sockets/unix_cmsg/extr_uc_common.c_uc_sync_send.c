
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {int** sync_fd; scalar_t__ server_flag; } ;


 size_t SYNC_CLIENT ;
 size_t SYNC_SEND ;
 size_t SYNC_SERVER ;
 TYPE_1__ uc_cfg ;
 int uc_dbgmsg (char*) ;
 int uc_logmsg (char*) ;
 int uc_logmsgx (char*,int) ;
 int write (int,char*,int) ;

int
uc_sync_send(void)
{
 ssize_t ssize;
 int fd;

 uc_dbgmsg("sync: send");

 fd = uc_cfg.sync_fd[uc_cfg.server_flag ? SYNC_CLIENT : SYNC_SERVER][SYNC_SEND];

 ssize = write(fd, "", 1);
 if (ssize < 0) {
  uc_logmsg("uc_sync_send: write");
  return (-1);
 }
 if (ssize < 1) {
  uc_logmsgx("uc_sync_send: sent %zd of 1 byte", ssize);
  return (-1);
 }

 return (0);
}
