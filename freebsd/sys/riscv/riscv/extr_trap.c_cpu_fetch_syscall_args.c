
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct syscall_args {size_t code; int narg; int args; TYPE_3__* callp; } ;
struct thread {scalar_t__* td_retval; TYPE_1__* td_frame; struct syscall_args td_sa; struct proc* td_proc; } ;
struct proc {TYPE_2__* p_sysent; } ;
typedef int register_t ;
struct TYPE_6__ {int sy_narg; } ;
struct TYPE_5__ {size_t sv_size; TYPE_3__* sv_table; } ;
struct TYPE_4__ {size_t* tf_t; int * tf_a; } ;


 int NARGREG ;
 size_t SYS___syscall ;
 size_t SYS_syscall ;
 int memcpy (int ,int *,int) ;
 int panic (char*,int) ;

int
cpu_fetch_syscall_args(struct thread *td)
{
 struct proc *p;
 register_t *ap;
 struct syscall_args *sa;
 int nap;

 nap = NARGREG;
 p = td->td_proc;
 sa = &td->td_sa;
 ap = &td->td_frame->tf_a[0];

 sa->code = td->td_frame->tf_t[0];

 if (sa->code == SYS_syscall || sa->code == SYS___syscall) {
  sa->code = *ap++;
  nap--;
 }

 if (sa->code >= p->p_sysent->sv_size)
  sa->callp = &p->p_sysent->sv_table[0];
 else
  sa->callp = &p->p_sysent->sv_table[sa->code];

 sa->narg = sa->callp->sy_narg;
 memcpy(sa->args, ap, nap * sizeof(register_t));
 if (sa->narg > nap)
  panic("TODO: Could we have more then %d args?", NARGREG);

 td->td_retval[0] = 0;
 td->td_retval[1] = 0;

 return (0);
}
