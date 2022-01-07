
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va ;
struct TYPE_2__ {int mc_ecx; int mc_eflags; uintptr_t mc_cs; uintptr_t mc_ds; uintptr_t mc_es; uintptr_t mc_ss; int mc_esp; } ;
struct vm86_init_args {int ss_size; char* ss_sp; int sa_flags; TYPE_1__ uc_mcontext; int sa_sigaction; } ;
typedef struct vm86_init_args ucontext_t ;
typedef int uc ;
struct sigaction {int ss_size; char* ss_sp; int sa_flags; TYPE_1__ uc_mcontext; int sa_sigaction; } ;
typedef struct vm86_init_args stack_t ;
typedef int ssa ;
typedef int sa ;


 int MAP_ANON ;
 char* MAP_FAILED ;
 int MAP_FIXED ;
 int PAGE_SIZE ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int PSL_USER ;
 int PSL_VM ;
 int SA_ONSTACK ;
 int SA_SIGINFO ;
 int SIGBUS ;
 int SIGILL ;
 int SIGSEGV ;
 int VM86_INIT ;
 int err (int,char*) ;
 int gs ;
 int i386_vm86 (int ,struct vm86_init_args*) ;
 int memcpy (char*,scalar_t__,scalar_t__) ;
 int memset (struct vm86_init_args*,int ,int) ;
 void* mmap (void*,int,int,int,int,int ) ;
 int rgs () ;
 int sig_handler ;
 int sigaction (int ,struct vm86_init_args*,int *) ;
 int sigaltstack (struct vm86_init_args*,int *) ;
 int sigreturn (struct vm86_init_args*) ;
 scalar_t__ vm86_code_end ;
 scalar_t__ vm86_code_start ;

int
main(void)
{
 ucontext_t uc;
 struct sigaction sa;
 struct vm86_init_args va;
 stack_t ssa;
 char *vm86_code;

 gs = rgs();

 memset(&ssa, 0, sizeof(ssa));
 ssa.ss_size = PAGE_SIZE * 128;
 ssa.ss_sp = mmap(((void*)0), ssa.ss_size, PROT_READ | PROT_WRITE |
     PROT_EXEC, MAP_ANON, -1, 0);
 if (ssa.ss_sp == MAP_FAILED)
  err(1, "mmap sigstack");
 if (sigaltstack(&ssa, ((void*)0)) == -1)
  err(1, "sigaltstack");

 memset(&sa, 0, sizeof(sa));
 sa.sa_sigaction = sig_handler;
 sa.sa_flags = SA_SIGINFO | SA_ONSTACK;
 if (sigaction(SIGBUS, &sa, ((void*)0)) == -1)
  err(1, "sigaction SIGBUS");
 if (sigaction(SIGSEGV, &sa, ((void*)0)) == -1)
  err(1, "sigaction SIGSEGV");
 if (sigaction(SIGILL, &sa, ((void*)0)) == -1)
  err(1, "sigaction SIGILL");

 vm86_code = mmap((void *)0x10000, PAGE_SIZE, PROT_READ | PROT_WRITE |
     PROT_EXEC, MAP_ANON | MAP_FIXED, -1, 0);
 if (vm86_code == MAP_FAILED)
  err(1, "mmap");
 memcpy(vm86_code, vm86_code_start, vm86_code_end - vm86_code_start);

 memset(&va, 0, sizeof(va));
 if (i386_vm86(VM86_INIT, &va) == -1)
  err(1, "VM86_INIT");

 memset(&uc, 0, sizeof(uc));
 uc.uc_mcontext.mc_ecx = 0x2345;
 uc.uc_mcontext.mc_eflags = PSL_VM | PSL_USER;
 uc.uc_mcontext.mc_cs = uc.uc_mcontext.mc_ds = uc.uc_mcontext.mc_es =
     uc.uc_mcontext.mc_ss = (uintptr_t)vm86_code >> 4;
 uc.uc_mcontext.mc_esp = 0xfffe;
 sigreturn(&uc);
}
