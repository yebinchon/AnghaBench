
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ECHILD ;
 int WNOHANG ;
 int errno ;
 scalar_t__ pids_empty () ;
 scalar_t__ pids_remove (int) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static pid_t
xwait(int block, int *status) {
 pid_t pid;

 if (pids_empty()) {
  errno = ECHILD;
  return (-1);
 }

 while ((pid = waitpid(-1, status, block ? 0 : WNOHANG)) > 0)
  if (pids_remove(pid))
   break;

 return (pid);
}
