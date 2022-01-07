
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct trussinfo {int outfile; } ;
struct TYPE_7__ {int number; scalar_t__ nargs; int * args; int * s_args; struct syscall* sc; } ;
struct threadinfo {int before; TYPE_3__ cs; TYPE_2__* proc; int tid; } ;
struct syscall {scalar_t__ nargs; char* name; TYPE_4__* args; scalar_t__ unknown; } ;
struct ptrace_lwpinfo {int pl_syscall_narg; } ;
typedef int caddr_t ;
struct TYPE_8__ {size_t offset; int type; } ;
struct TYPE_6__ {TYPE_1__* abi; } ;
struct TYPE_5__ {char* type; } ;


 int CLOCK_REALTIME ;
 scalar_t__ MIN (int ,scalar_t__) ;
 int OUT ;
 int PT_GET_SC_ARGS ;
 int alloc_syscall (struct threadinfo*,struct ptrace_lwpinfo*) ;
 int assert (int) ;
 int clock_gettime (int ,int *) ;
 int fprintf (int ,char*,...) ;
 int free_syscall (struct threadinfo*) ;
 struct syscall* get_syscall (struct threadinfo*,int,scalar_t__) ;
 scalar_t__ nitems (int *) ;
 int print_arg (TYPE_4__*,int *,int *,struct trussinfo*) ;
 scalar_t__ ptrace (int ,int ,int ,int) ;
 int stderr ;

__attribute__((used)) static void
enter_syscall(struct trussinfo *info, struct threadinfo *t,
    struct ptrace_lwpinfo *pl)
{
 struct syscall *sc;
 u_int i, narg;

 alloc_syscall(t, pl);
 narg = MIN(pl->pl_syscall_narg, nitems(t->cs.args));
 if (narg != 0 && ptrace(PT_GET_SC_ARGS, t->tid, (caddr_t)t->cs.args,
     sizeof(t->cs.args)) != 0) {
  free_syscall(t);
  return;
 }

 sc = get_syscall(t, t->cs.number, narg);
 if (sc->unknown)
  fprintf(info->outfile, "-- UNKNOWN %s SYSCALL %d --\n",
      t->proc->abi->type, t->cs.number);

 t->cs.nargs = sc->nargs;
 assert(sc->nargs <= nitems(t->cs.s_args));

 t->cs.sc = sc;
 for (i = 0; i < t->cs.nargs; i++) {




  if (!(sc->args[i].type & OUT)) {
   t->cs.s_args[i] = print_arg(&sc->args[i],
       t->cs.args, ((void*)0), info);
  }
 }




 clock_gettime(CLOCK_REALTIME, &t->before);
}
