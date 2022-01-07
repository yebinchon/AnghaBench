
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;


 int PT_DETACH ;
 int SIGSTOP ;
 scalar_t__ WIFSTOPPED (int ) ;
 int WSTOPSIG (int ) ;
 scalar_t__ g_pid ;
 int g_status ;
 int ptrace (int ,scalar_t__,int ,int) ;

__attribute__((used)) static void
elf_detach(void)
{
 int sig;

 if (g_pid != 0) {




  sig = WIFSTOPPED(g_status) ? WSTOPSIG(g_status) : 0;
  if (sig == SIGSTOP)
   sig = 0;
  ptrace(PT_DETACH, g_pid, (caddr_t)1, sig);
 }
}
