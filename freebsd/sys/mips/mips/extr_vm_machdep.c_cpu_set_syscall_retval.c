
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {unsigned int v0; unsigned int a0; unsigned int a1; unsigned int v1; int a3; int pc; } ;
struct thread {unsigned int* td_retval; TYPE_1__* td_pcb; int td_proc; struct trapframe* td_frame; } ;
struct TYPE_2__ {int pcb_tpc; } ;




 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 unsigned int SYS___syscall ;
 unsigned int SYS_lseek ;
 unsigned int SYS_syscall ;
 scalar_t__ _QUAD_LOWWORD ;

void
cpu_set_syscall_retval(struct thread *td, int error)
{
 struct trapframe *locr0 = td->td_frame;
 unsigned int code;
 int quad_syscall;

 code = locr0->v0;
 quad_syscall = 0;






 if (code == SYS___syscall)
  quad_syscall = 1;


 if (code == SYS_syscall)
  code = locr0->a0;
 else if (code == SYS___syscall) {
  if (quad_syscall)
   code = _QUAD_LOWWORD ? locr0->a1 : locr0->a0;
  else
   code = locr0->a0;
 }

 switch (error) {
 case 0:
  if (quad_syscall && code != SYS_lseek) {






   locr0->v0 = td->td_retval[0];
   if (_QUAD_LOWWORD)
    locr0->v1 = td->td_retval[0];
   locr0->a3 = 0;
  } else {
   locr0->v0 = td->td_retval[0];
   locr0->v1 = td->td_retval[1];
   locr0->a3 = 0;
  }
  break;

 case 128:
  locr0->pc = td->td_pcb->pcb_tpc;
  break;

 case 129:
  break;

 default:
  if (quad_syscall && code != SYS_lseek) {
   locr0->v0 = error;
   if (_QUAD_LOWWORD)
    locr0->v1 = error;
   locr0->a3 = 1;
  } else {
   locr0->v0 = error;
   locr0->a3 = 1;
  }
 }
}
