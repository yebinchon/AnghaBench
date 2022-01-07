
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** sync_fd; } ;


 int EXIT_SUCCESS ;
 size_t SYNC_CLIENT ;
 size_t SYNC_RECV ;
 size_t SYNC_SEND ;
 size_t SYNC_SERVER ;
 int _exit (int) ;
 scalar_t__ close (int ) ;
 TYPE_1__ uc_cfg ;
 int uc_dbgmsg (char*,int) ;
 int uc_logmsg (char*) ;

void
uc_client_exit(int rv)
{
 if (close(uc_cfg.sync_fd[SYNC_SERVER][SYNC_SEND]) < 0 ||
     close(uc_cfg.sync_fd[SYNC_CLIENT][SYNC_RECV]) < 0) {
  uc_logmsg("client_exit: close");
  rv = -1;
 }
 rv = rv == 0 ? EXIT_SUCCESS : -rv;
 uc_dbgmsg("exit: code %d", rv);
 _exit(rv);
}
