
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct trussinfo {struct threadinfo* curthread; } ;
struct TYPE_3__ {char** s_args; int * args; struct syscall* sc; } ;
struct threadinfo {TYPE_1__ cs; int tid; struct procinfo* proc; int after; int in_syscall; } ;
struct syscall {size_t nargs; TYPE_2__* args; } ;
struct ptrace_sc_ret {scalar_t__ sr_error; int sr_retval; } ;
struct ptrace_lwpinfo {int pl_flags; } ;
struct procinfo {int pid; int * abi; int threadlist; } ;
typedef int psr ;
typedef int caddr_t ;
struct TYPE_4__ {int type; size_t offset; } ;


 int CLOCK_REALTIME ;
 int LIST_FIRST (int *) ;
 int * LIST_NEXT (int ,int ) ;
 int OUT ;
 int PL_FLAG_EXEC ;
 int PT_DETACH ;
 int PT_GET_SC_RET ;
 int asprintf (char**,char*,int ) ;
 int assert (int ) ;
 int clock_gettime (int ,int *) ;
 int entries ;
 int err (int,char*) ;
 int * find_abi (int ) ;
 int free_proc (struct procinfo*) ;
 int free_syscall (struct threadinfo*) ;
 char* print_arg (TYPE_2__*,int *,int ,struct trussinfo*) ;
 int print_syscall_ret (struct trussinfo*,scalar_t__,int ) ;
 scalar_t__ ptrace (int ,int ,int ,int) ;

__attribute__((used)) static void
exit_syscall(struct trussinfo *info, struct ptrace_lwpinfo *pl)
{
 struct threadinfo *t;
 struct procinfo *p;
 struct syscall *sc;
 struct ptrace_sc_ret psr;
 u_int i;

 t = info->curthread;
 if (!t->in_syscall)
  return;

 clock_gettime(CLOCK_REALTIME, &t->after);
 p = t->proc;
 if (ptrace(PT_GET_SC_RET, t->tid, (caddr_t)&psr, sizeof(psr)) != 0) {
  free_syscall(t);
  return;
 }

 sc = t->cs.sc;




 for (i = 0; i < sc->nargs; i++) {
  char *temp;

  if (sc->args[i].type & OUT) {




   if (psr.sr_error != 0) {
    asprintf(&temp, "0x%lx",
        t->cs.args[sc->args[i].offset]);
   } else {
    temp = print_arg(&sc->args[i],
        t->cs.args, psr.sr_retval, info);
   }
   t->cs.s_args[i] = temp;
  }
 }

 print_syscall_ret(info, psr.sr_error, psr.sr_retval);
 free_syscall(t);





 if (pl->pl_flags & PL_FLAG_EXEC) {
  assert(LIST_NEXT(LIST_FIRST(&p->threadlist), entries) == ((void*)0));
  p->abi = find_abi(p->pid);
  if (p->abi == ((void*)0)) {
   if (ptrace(PT_DETACH, p->pid, (caddr_t)1, 0) < 0)
    err(1, "Can not detach the process");
   free_proc(p);
  }
 }
}
