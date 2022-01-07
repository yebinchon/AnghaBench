
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_lwpinfo32 {int pl_syscall_narg; int pl_syscall_code; int pl_child_pid; int pl_tdname; int pl_siginfo; int pl_siglist; int pl_sigmask; int pl_flags; int pl_event; int pl_lwpid; } ;
struct ptrace_lwpinfo {int pl_syscall_narg; int pl_syscall_code; int pl_child_pid; int pl_tdname; int pl_siginfo; int pl_siglist; int pl_sigmask; int pl_flags; int pl_event; int pl_lwpid; } ;


 int elf_convert_siginfo (int *,int *) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
elf_convert_lwpinfo(struct ptrace_lwpinfo32 *pld, struct ptrace_lwpinfo *pls)
{

 pld->pl_lwpid = pls->pl_lwpid;
 pld->pl_event = pls->pl_event;
 pld->pl_flags = pls->pl_flags;
 pld->pl_sigmask = pls->pl_sigmask;
 pld->pl_siglist = pls->pl_siglist;
 elf_convert_siginfo(&pld->pl_siginfo, &pls->pl_siginfo);
 memcpy(pld->pl_tdname, pls->pl_tdname, sizeof(pld->pl_tdname));
 pld->pl_child_pid = pls->pl_child_pid;
 pld->pl_syscall_code = pls->pl_syscall_code;
 pld->pl_syscall_narg = pls->pl_syscall_narg;
}
