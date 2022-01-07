
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct trapframe {int pc; int v0; int a0; int a1; int a2; int a3; int a4; int a5; int a6; int a7; int v1; scalar_t__ sp; } ;
struct syscall_args {int* args; int code; int narg; TYPE_1__* callp; TYPE_3__* trapframe; } ;
struct thread {int * td_retval; TYPE_4__* td_proc; TYPE_2__* td_pcb; struct syscall_args td_sa; struct trapframe* td_frame; } ;
struct sysentvec {int sv_size; TYPE_1__* sv_table; } ;
typedef int register_t ;
typedef int int32_t ;
typedef int caddr_t ;
struct TYPE_8__ {int p_pid; struct sysentvec* p_sysent; } ;
struct TYPE_7__ {int pc; int cause; } ;
struct TYPE_6__ {int pcb_tpc; } ;
struct TYPE_5__ {int sy_narg; } ;


 scalar_t__ DELAYBRANCH (int ) ;
 int MipsEmulateBranch (struct trapframe*,int ,int ,int ) ;
 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (TYPE_4__*,int ) ;


 int _QUAD_LOWWORD ;
 int bzero (int*,int) ;
 int copyin (int ,int ,int) ;
 int printf (char*,size_t,int,...) ;
 scalar_t__ trap_debug ;

int
cpu_fetch_syscall_args(struct thread *td)
{
 struct trapframe *locr0;
 struct sysentvec *se;
 struct syscall_args *sa;
 int error, nsaved;

 locr0 = td->td_frame;
 sa = &td->td_sa;

 bzero(sa->args, sizeof(sa->args));


 td->td_pcb->pcb_tpc = sa->trapframe->pc;
 if (DELAYBRANCH(sa->trapframe->cause))
  locr0->pc = MipsEmulateBranch(locr0, sa->trapframe->pc, 0, 0);
 else
  locr0->pc += sizeof(int);
 sa->code = locr0->v0;

 switch (sa->code) {
 case 129:
 case 128:




  if (sa->code == 129 && SV_PROC_FLAG(td->td_proc, SV_ILP32)) {




   if (_QUAD_LOWWORD == 0)
    sa->code = locr0->a0;
   else
    sa->code = locr0->a1;
   sa->args[0] = locr0->a2;
   sa->args[1] = locr0->a3;
   nsaved = 2;
   break;
  }





  sa->code = locr0->a0;
  sa->args[0] = locr0->a1;
  sa->args[1] = locr0->a2;
  sa->args[2] = locr0->a3;
  nsaved = 3;
  break;
 default:



  sa->args[0] = locr0->a0;
  sa->args[1] = locr0->a1;
  sa->args[2] = locr0->a2;
  sa->args[3] = locr0->a3;
  nsaved = 4;
  break;
 }






 se = td->td_proc->p_sysent;





 if (sa->code >= se->sv_size)
  sa->callp = &se->sv_table[0];
 else
  sa->callp = &se->sv_table[sa->code];

 sa->narg = sa->callp->sy_narg;

 if (sa->narg > nsaved) {
  error = copyin((caddr_t)(intptr_t)(locr0->sp +
      4 * sizeof(register_t)), (caddr_t)&sa->args[nsaved],
     (u_int)(sa->narg - nsaved) * sizeof(register_t));
  if (error != 0) {
   locr0->v0 = error;
   locr0->a3 = 1;
  }
 } else
  error = 0;

 if (error == 0) {
  td->td_retval[0] = 0;
  td->td_retval[1] = locr0->v1;
 }

 return (error);
}
