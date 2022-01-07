
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {scalar_t__ number; scalar_t__ nargs; int args; int ** s_args; int * sc; } ;
struct threadinfo {int in_syscall; TYPE_1__ cs; } ;
struct ptrace_lwpinfo {scalar_t__ pl_syscall_code; } ;


 int assert (int) ;
 int memset (int ,int ,int) ;
 size_t nitems (int **) ;

__attribute__((used)) static void
alloc_syscall(struct threadinfo *t, struct ptrace_lwpinfo *pl)
{
 u_int i;

 assert(t->in_syscall == 0);
 assert(t->cs.number == 0);
 assert(t->cs.sc == ((void*)0));
 assert(t->cs.nargs == 0);
 for (i = 0; i < nitems(t->cs.s_args); i++)
  assert(t->cs.s_args[i] == ((void*)0));
 memset(t->cs.args, 0, sizeof(t->cs.args));
 t->cs.number = pl->pl_syscall_code;
 t->in_syscall = 1;
}
