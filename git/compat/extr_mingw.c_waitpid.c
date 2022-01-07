
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinfo_t {int pid; struct pinfo_t* next; int proc; } ;
typedef int pid_t ;
typedef int LPDWORD ;
typedef int HANDLE ;


 int CloseHandle (int ) ;
 int ECHILD ;
 int EINVAL ;
 int EnterCriticalSection (int *) ;
 int FALSE ;
 int GetExitCodeProcess (int ,int ) ;
 int INFINITE ;
 int LeaveCriticalSection (int *) ;
 int OpenProcess (int,int ,int) ;
 int PROCESS_QUERY_INFORMATION ;
 int SYNCHRONIZE ;
 scalar_t__ WAIT_OBJECT_0 ;
 int WNOHANG ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int errno ;
 int free (struct pinfo_t*) ;
 struct pinfo_t* pinfo ;
 int pinfo_cs ;

pid_t waitpid(pid_t pid, int *status, int options)
{
 HANDLE h = OpenProcess(SYNCHRONIZE | PROCESS_QUERY_INFORMATION,
     FALSE, pid);
 if (!h) {
  errno = ECHILD;
  return -1;
 }

 if (pid > 0 && options & WNOHANG) {
  if (WAIT_OBJECT_0 != WaitForSingleObject(h, 0)) {
   CloseHandle(h);
   return 0;
  }
  options &= ~WNOHANG;
 }

 if (options == 0) {
  struct pinfo_t **ppinfo;
  if (WaitForSingleObject(h, INFINITE) != WAIT_OBJECT_0) {
   CloseHandle(h);
   return 0;
  }

  if (status)
   GetExitCodeProcess(h, (LPDWORD)status);

  EnterCriticalSection(&pinfo_cs);

  ppinfo = &pinfo;
  while (*ppinfo) {
   struct pinfo_t *info = *ppinfo;
   if (info->pid == pid) {
    CloseHandle(info->proc);
    *ppinfo = info->next;
    free(info);
    break;
   }
   ppinfo = &info->next;
  }

  LeaveCriticalSection(&pinfo_cs);

  CloseHandle(h);
  return pid;
 }
 CloseHandle(h);

 errno = EINVAL;
 return -1;
}
