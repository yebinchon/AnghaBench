
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_2__ {int client_pid; int ** sync_fd; } ;


 int EXIT_SUCCESS ;
 size_t SYNC_CLIENT ;
 size_t SYNC_RECV ;
 size_t SYNC_SEND ;
 size_t SYNC_SERVER ;
 scalar_t__ WCOREDUMP (int) ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 scalar_t__ close (int ) ;
 TYPE_1__ uc_cfg ;
 int uc_dbgmsg (char*) ;
 int uc_logmsg (char*) ;
 int uc_logmsgx (char*,...) ;
 scalar_t__ waitpid (int ,int*,int ) ;

int
uc_client_wait(void)
{
 int status;
 pid_t pid;

 uc_dbgmsg("waiting for client");

 if (close(uc_cfg.sync_fd[SYNC_SERVER][SYNC_RECV]) < 0 ||
     close(uc_cfg.sync_fd[SYNC_CLIENT][SYNC_SEND]) < 0) {
  uc_logmsg("client_wait: close");
  return (-1);
 }

 pid = waitpid(uc_cfg.client_pid, &status, 0);
 if (pid == (pid_t)-1) {
  uc_logmsg("client_wait: waitpid");
  return (-1);
 }

 if (WIFEXITED(status)) {
  if (WEXITSTATUS(status) != EXIT_SUCCESS) {
   uc_logmsgx("client exit status is %d",
       WEXITSTATUS(status));
   return (-WEXITSTATUS(status));
  }
 } else {
  if (WIFSIGNALED(status))
   uc_logmsgx("abnormal termination of client, signal %d%s",
       WTERMSIG(status), WCOREDUMP(status) ?
       " (core file generated)" : "");
  else
   uc_logmsgx("termination of client, unknown status");
  return (-1);
 }

 return (0);
}
