
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_2__ {int** sync_fd; scalar_t__ client_pid; char* proc_name; int server_flag; } ;


 size_t SYNC_CLIENT ;
 size_t SYNC_RECV ;
 size_t SYNC_SEND ;
 size_t SYNC_SERVER ;
 scalar_t__ close (int) ;
 scalar_t__ fork () ;
 scalar_t__ pipe (int*) ;
 TYPE_1__ uc_cfg ;
 int uc_logmsg (char*) ;

int
uc_client_fork(void)
{
 int fd1, fd2;

 if (pipe(uc_cfg.sync_fd[SYNC_SERVER]) < 0 ||
     pipe(uc_cfg.sync_fd[SYNC_CLIENT]) < 0) {
  uc_logmsg("client_fork: pipe");
  return (-1);
 }
 uc_cfg.client_pid = fork();
 if (uc_cfg.client_pid == (pid_t)-1) {
  uc_logmsg("client_fork: fork");
  return (-1);
 }
 if (uc_cfg.client_pid == 0) {
  uc_cfg.proc_name = "CLIENT";
  uc_cfg.server_flag = 0;
  fd1 = uc_cfg.sync_fd[SYNC_SERVER][SYNC_RECV];
  fd2 = uc_cfg.sync_fd[SYNC_CLIENT][SYNC_SEND];
 } else {
  fd1 = uc_cfg.sync_fd[SYNC_SERVER][SYNC_SEND];
  fd2 = uc_cfg.sync_fd[SYNC_CLIENT][SYNC_RECV];
 }
 if (close(fd1) < 0 || close(fd2) < 0) {
  uc_logmsg("client_fork: close");
  return (-1);
 }
 return (uc_cfg.client_pid != 0);
}
