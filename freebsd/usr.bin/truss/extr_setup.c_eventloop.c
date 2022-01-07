
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct trussinfo {int flags; TYPE_5__* curthread; int proclist; } ;
struct ptrace_lwpinfo {int pl_flags; int pl_lwpid; } ;
struct TYPE_8__ {scalar_t__ si_signo; int si_code; int si_status; int si_pid; } ;
typedef TYPE_1__ siginfo_t ;
typedef int pl ;
typedef int caddr_t ;
struct TYPE_10__ {int * abi; } ;
struct TYPE_9__ {int proc; } ;
 int COUNTONLY ;
 scalar_t__ EINTR ;
 int LIST_EMPTY (int *) ;
 TYPE_7__* LIST_FIRST (int *) ;
 int NOSIGS ;
 int PL_FLAG_BORN ;
 int PL_FLAG_CHILD ;
 int PL_FLAG_EXITED ;
 int PL_FLAG_SCE ;
 int PL_FLAG_SCX ;
 int PT_LWPINFO ;
 int PT_SYSCALL ;
 int P_ALL ;
 scalar_t__ SIGCHLD ;
 int SIGTRAP ;
 int WEXITED ;
 int WTRAPPED ;
 int assert (int) ;
 int detach_all_procs (struct trussinfo*) ;
 scalar_t__ detaching ;
 int enter_syscall (struct trussinfo*,TYPE_5__*,struct ptrace_lwpinfo*) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int exit_syscall (struct trussinfo*,struct ptrace_lwpinfo*) ;
 int find_exit_thread (struct trussinfo*,int ) ;
 int find_proc (struct trussinfo*,int ) ;
 int find_thread (struct trussinfo*,int ,int ) ;
 int free_proc (int ) ;
 int free_thread (TYPE_5__*) ;
 int new_proc (struct trussinfo*,int ,int ) ;
 int new_thread (int ,int ) ;
 int ptrace (int ,int ,int ,int) ;
 int report_exit (struct trussinfo*,TYPE_1__*) ;
 int report_new_child (struct trussinfo*) ;
 int report_signal (struct trussinfo*,TYPE_1__*,struct ptrace_lwpinfo*) ;
 int report_thread_birth (struct trussinfo*) ;
 int report_thread_death (struct trussinfo*) ;
 int thread_exit_syscall (struct trussinfo*) ;
 int waitid (int ,int ,TYPE_1__*,int) ;

void
eventloop(struct trussinfo *info)
{
 struct ptrace_lwpinfo pl;
 siginfo_t si;
 int pending_signal;

 while (!LIST_EMPTY(&info->proclist)) {
  if (detaching) {
   detach_all_procs(info);
   return;
  }

  if (waitid(P_ALL, 0, &si, WTRAPPED | WEXITED) == -1) {
   if (errno == EINTR)
    continue;
   err(1, "Unexpected error from waitid");
  }

  assert(si.si_signo == SIGCHLD);

  switch (si.si_code) {
  case 131:
  case 130:
  case 132:
   find_exit_thread(info, si.si_pid);
   if ((info->flags & COUNTONLY) == 0) {
    if (si.si_code == 131)
     thread_exit_syscall(info);
    report_exit(info, &si);
   }
   free_proc(info->curthread->proc);
   info->curthread = ((void*)0);
   break;
  case 128:
   if (ptrace(PT_LWPINFO, si.si_pid, (caddr_t)&pl,
       sizeof(pl)) == -1)
    err(1, "ptrace(PT_LWPINFO)");

   if (pl.pl_flags & PL_FLAG_CHILD) {
    new_proc(info, si.si_pid, pl.pl_lwpid);
    assert(LIST_FIRST(&info->proclist)->abi !=
        ((void*)0));
   } else if (pl.pl_flags & PL_FLAG_BORN)
    new_thread(find_proc(info, si.si_pid),
        pl.pl_lwpid);
   find_thread(info, si.si_pid, pl.pl_lwpid);

   if (si.si_status == SIGTRAP &&
       (pl.pl_flags & (PL_FLAG_BORN|PL_FLAG_EXITED|
       PL_FLAG_SCE|PL_FLAG_SCX)) != 0) {
    if (pl.pl_flags & PL_FLAG_BORN) {
     if ((info->flags & COUNTONLY) == 0)
      report_thread_birth(info);
    } else if (pl.pl_flags & PL_FLAG_EXITED) {
     if ((info->flags & COUNTONLY) == 0)
      report_thread_death(info);
     free_thread(info->curthread);
     info->curthread = ((void*)0);
    } else if (pl.pl_flags & PL_FLAG_SCE)
     enter_syscall(info, info->curthread, &pl);
    else if (pl.pl_flags & PL_FLAG_SCX)
     exit_syscall(info, &pl);
    pending_signal = 0;
   } else if (pl.pl_flags & PL_FLAG_CHILD) {
    if ((info->flags & COUNTONLY) == 0)
     report_new_child(info);
    pending_signal = 0;
   } else {
    if ((info->flags & NOSIGS) == 0)
     report_signal(info, &si, &pl);
    pending_signal = si.si_status;
   }
   ptrace(PT_SYSCALL, si.si_pid, (caddr_t)1,
       pending_signal);
   break;
  case 129:
   errx(1, "waitid reported CLD_STOPPED");
  case 133:
   break;
  }
 }
}
