
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 int EINVAL ;
 int FALSE ;
 int GetLastError () ;
 scalar_t__ OpenProcess (int ,int ,scalar_t__) ;
 int PROCESS_QUERY_INFORMATION ;
 int PROCESS_TERMINATE ;
 int SIGTERM ;
 scalar_t__ TerminateProcess (scalar_t__,int) ;
 int err_win_to_posix (int ) ;
 int errno ;

int mingw_kill(pid_t pid, int sig)
{
 if (pid > 0 && sig == SIGTERM) {
  HANDLE h = OpenProcess(PROCESS_TERMINATE, FALSE, pid);

  if (TerminateProcess(h, -1)) {
   CloseHandle(h);
   return 0;
  }

  errno = err_win_to_posix(GetLastError());
  CloseHandle(h);
  return -1;
 } else if (pid > 0 && sig == 0) {
  HANDLE h = OpenProcess(PROCESS_QUERY_INFORMATION, FALSE, pid);
  if (h) {
   CloseHandle(h);
   return 0;
  }
 }

 errno = EINVAL;
 return -1;
}
