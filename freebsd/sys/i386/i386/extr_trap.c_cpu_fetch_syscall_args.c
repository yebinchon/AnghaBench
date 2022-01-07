
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct trapframe {int tf_cs; int tf_eip; int tf_err; long tf_eax; int tf_edx; scalar_t__ tf_esp; } ;
struct syscall_args {long code; int narg; scalar_t__ args; TYPE_2__* callp; } ;
struct thread {int * td_retval; struct syscall_args td_sa; struct trapframe* td_frame; struct proc* td_proc; } ;
struct proc {TYPE_1__* p_sysent; } ;
typedef int quad_t ;
typedef int * caddr_t ;
struct TYPE_4__ {int sy_narg; } ;
struct TYPE_3__ {long sv_size; TYPE_2__* sv_table; } ;


 int EFAULT ;
 long SYS___syscall ;
 long SYS_syscall ;
 scalar_t__ __predict_false (int) ;
 int copyin (int *,int *,int ) ;
 int fueword (int *,long*) ;
 int fueword32 (void*,int*) ;
 int fuword16 (void*) ;

int
cpu_fetch_syscall_args(struct thread *td)
{
 struct proc *p;
 struct trapframe *frame;
 struct syscall_args *sa;
 caddr_t params;
 long tmp;
 int error;





 p = td->td_proc;
 frame = td->td_frame;
 sa = &td->td_sa;
 sa->code = frame->tf_eax;
 params = (caddr_t)frame->tf_esp + sizeof(uint32_t);




 if (sa->code == SYS_syscall) {



  error = fueword(params, &tmp);
  if (error == -1)
   return (EFAULT);
  sa->code = tmp;
  params += sizeof(uint32_t);
 } else if (sa->code == SYS___syscall) {




  error = fueword(params, &tmp);
  if (error == -1)
   return (EFAULT);
  sa->code = tmp;
  params += sizeof(quad_t);
 }

  if (sa->code >= p->p_sysent->sv_size)
   sa->callp = &p->p_sysent->sv_table[0];
   else
   sa->callp = &p->p_sysent->sv_table[sa->code];
 sa->narg = sa->callp->sy_narg;

 if (params != ((void*)0) && sa->narg != 0)
  error = copyin(params, (caddr_t)sa->args,
      (u_int)(sa->narg * sizeof(uint32_t)));
 else
  error = 0;

 if (error == 0) {
  td->td_retval[0] = 0;
  td->td_retval[1] = frame->tf_edx;
 }

 return (error);
}
